using Newtonsoft.Json;
using System;
using System.Data.SqlClient;
using System.IO;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Microsoft.CognitiveServices.Speech;
using Microsoft.CognitiveServices.Speech.Audio;
using System.Drawing.Printing;
using System.Reflection.Metadata;

namespace pF2
{
    public partial class Form1 : Form
    {
        private const string GroqEndpoint = "https://api.groq.com/openai/v1/chat/completions";
        private const string GroqApiKey = "";
        private const string Model = "llama3-70b-8192";
        public Form1()
        {
            InitializeComponent();
        }

        private async void buttonGenerarAnuncio_Click(object sender, EventArgs e)
        {
            string tema = textBoxTemaPublicidad.Text.Trim();

            if (string.IsNullOrEmpty(tema))
            {
                MessageBox.Show("Por favor, ingresa el tema o producto para el anuncio.");
                return;
            }

            textBoxAnuncio.Text = "Generando anuncio...";

            try
            {
                string prompt = $"Genera un anuncio publicitario corto, creativo y llamativo para promocionar: {tema}. Usa un tono entusiasta y convincente.";
                string anuncio = await ObtenerRespuestaGroq(prompt);
                textBoxAnuncio.Text = anuncio;
            }
            catch (Exception ex)
            {
                textBoxAnuncio.Text = $"Error: {ex.Message}";
            }
        }

        private async Task<string> ObtenerRespuestaGroq(string prompt)
        {
            using (HttpClient client = new HttpClient())
            {
                client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", GroqApiKey);

                var requestData = new
                {
                    model = Model,
                    messages = new[] { new { role = "user", content = prompt } }
                };

                string json = JsonConvert.SerializeObject(requestData);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                int maxRetries = 3;
                int delay = 2000;

                for (int i = 0; i < maxRetries; i++)
                {
                    var response = await client.PostAsync(GroqEndpoint, content);

                    if (response.StatusCode == System.Net.HttpStatusCode.TooManyRequests)
                    {
                        await Task.Delay(delay);
                        delay *= 2;
                        continue;
                    }

                    response.EnsureSuccessStatusCode();

                    string responseBody = await response.Content.ReadAsStringAsync();
                    dynamic resultado = JsonConvert.DeserializeObject(responseBody);
                    return resultado.choices[0].message.content.ToString().Trim();
                }

                throw new Exception("Se superó el límite de reintentos por demasiadas solicitudes.");
            }
        }

        private async void buttonExportarAnuncioAudio_Click(object sender, EventArgs e)
        {
            string anuncio = textBoxAnuncio.Text.Trim();

            if (string.IsNullOrEmpty(anuncio) || anuncio == "Generando anuncio...")
            {
                MessageBox.Show("Primero genera un anuncio.");
                return;
            }

            await ExportarAudioAzureAsync(anuncio);
        }

        private async Task ExportarAudioAzureAsync(string texto)
        {
            try
            {
                var apiKey = "".Trim();
                var region = "";

                var speechConfig = SpeechConfig.FromSubscription(apiKey, region);
                speechConfig.SpeechSynthesisVoiceName = "es-MX-JorgeNeural";
                speechConfig.SetSpeechSynthesisOutputFormat(SpeechSynthesisOutputFormat.Riff24Khz16BitMonoPcm);

                SaveFileDialog saveDialog = new SaveFileDialog
                {
                    Filter = "Audio WAV|*.wav",
                    Title = "Guardar anuncio en formato WAV",
                    FileName = "Anuncio.wav"
                };

                if (saveDialog.ShowDialog() == DialogResult.OK)
                {
                    using var audioConfig = AudioConfig.FromWavFileOutput(saveDialog.FileName);
                    using var synthesizer = new SpeechSynthesizer(speechConfig, audioConfig);

                    string ssml = $@"
                    <speak version='1.0' xml:lang='es-MX'>
                        <voice name='es-MX-JorgeNeural'>
                            <prosody rate='fast' pitch='+4%' volume='loud'>
                                {System.Security.SecurityElement.Escape(texto)}
                            </prosody>
                        </voice>
                    </speak>";

                    var result = await synthesizer.SpeakSsmlAsync(ssml);

                    if (result.Reason == ResultReason.SynthesizingAudioCompleted)
                    {
                        MessageBox.Show("✅ Audio exportado exitosamente.");
                    }
                    else
                    {
                        MessageBox.Show($"❌ Error en síntesis: {result.Reason}");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"❌ Error al exportar audio: {ex.Message}");
            }
        }

        private void buttonExportarAnuncioPDF_Click(object sender, EventArgs e)
        {
            string tema = textBoxTemaPublicidad.Text.Trim();
            string anuncio = textBoxAnuncio.Text.Trim();

            if (string.IsNullOrEmpty(anuncio) || string.IsNullOrEmpty(tema))
            {
                MessageBox.Show("Por favor, genera un anuncio primero.");
                return;
            }

            SaveFileDialog saveDialog = new SaveFileDialog
            {
                Filter = "Archivo PDF|*.pdf",
                Title = "Guardar Anuncio como PDF",
                FileName = "AnuncioPublicidad.pdf"
            };

            if (saveDialog.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    using (FileStream fs = new FileStream(saveDialog.FileName, FileMode.Create, FileAccess.Write, FileShare.None))
                    {
                        iTextSharp.text.Document doc = new iTextSharp.text.Document(iTextSharp.text.PageSize.A4, 50, 50, 25, 25);
                        PdfWriter writer = PdfWriter.GetInstance(doc, fs);
                        doc.Open();

                        var titleFont = FontFactory.GetFont("Arial", 16, iTextSharp.text.Font.BOLD);
                        var textFont = FontFactory.GetFont("Arial", 12, iTextSharp.text.Font.NORMAL);

                        doc.Add(new Paragraph("Anuncio Publicitario", titleFont));
                        doc.Add(new Paragraph("\n"));
                        doc.Add(new Paragraph($"Fecha: {DateTime.Now:dd/MM/yyyy HH:mm}", textFont));
                        doc.Add(new Paragraph("\n"));
                        doc.Add(new Paragraph($"Tema del Producto: {tema}", textFont));
                        doc.Add(new Paragraph("\n\n"));
                        doc.Add(new Paragraph("Anuncio:", titleFont));
                        doc.Add(new Paragraph(anuncio, textFont));

                        doc.Close();
                        writer.Close();
                        fs.Close();
                    }

                    MessageBox.Show("✅ Anuncio exportado a PDF correctamente.");
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"❌ Error al exportar PDF: {ex.Message}");
                }
            }
        }

        private void buttonGuardarAnuncioDB_Click(object sender, EventArgs e)
        {
            string tema = textBoxTemaPublicidad.Text.Trim();
            string anuncio = textBoxAnuncio.Text.Trim();

            if (string.IsNullOrEmpty(tema) || string.IsNullOrEmpty(anuncio))
            {
                MessageBox.Show("Tema y anuncio no deben estar vacíos.");
                return;
            }

            string connectionString = "Server=DESKTOP-MNQI1M5\\SQLEXPRESS;Database=PROYECTOF2;Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    string query = "INSERT INTO AnunciosPublicidad (Fecha, Tema, Anuncio) VALUES (@Fecha, @Tema, @Anuncio)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Fecha", DateTime.Now);
                        command.Parameters.AddWithValue("@Tema", tema);
                        command.Parameters.AddWithValue("@Anuncio", anuncio);

                        command.ExecuteNonQuery();

                        MessageBox.Show("✅ Anuncio guardado exitosamente en la base de datos.");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"❌ Error al guardar en base de datos: {ex.Message}");
                }
            }
        }
    
    }
}
