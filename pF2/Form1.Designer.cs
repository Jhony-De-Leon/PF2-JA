namespace pF2
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            textBoxTemaPublicidad = new TextBox();
            textBoxAnuncio = new TextBox();
            buttonGenerarAnuncio = new Button();
            buttonExportarAnuncioAudio = new Button();
            buttonExportarAnuncioPDF = new Button();
            buttonGuardarAnuncioDB = new Button();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            SuspendLayout();
            // 
            // textBoxTemaPublicidad
            // 
            textBoxTemaPublicidad.Location = new Point(84, 98);
            textBoxTemaPublicidad.Multiline = true;
            textBoxTemaPublicidad.Name = "textBoxTemaPublicidad";
            textBoxTemaPublicidad.ScrollBars = ScrollBars.Vertical;
            textBoxTemaPublicidad.Size = new Size(568, 101);
            textBoxTemaPublicidad.TabIndex = 0;
            // 
            // textBoxAnuncio
            // 
            textBoxAnuncio.Location = new Point(84, 235);
            textBoxAnuncio.Multiline = true;
            textBoxAnuncio.Name = "textBoxAnuncio";
            textBoxAnuncio.ReadOnly = true;
            textBoxAnuncio.ScrollBars = ScrollBars.Vertical;
            textBoxAnuncio.Size = new Size(735, 154);
            textBoxAnuncio.TabIndex = 1;
            // 
            // buttonGenerarAnuncio
            // 
            buttonGenerarAnuncio.Font = new Font("Palatino Linotype", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            buttonGenerarAnuncio.Location = new Point(669, 98);
            buttonGenerarAnuncio.Name = "buttonGenerarAnuncio";
            buttonGenerarAnuncio.Size = new Size(135, 35);
            buttonGenerarAnuncio.TabIndex = 2;
            buttonGenerarAnuncio.Text = "Generar Anuncio";
            buttonGenerarAnuncio.UseVisualStyleBackColor = true;
            buttonGenerarAnuncio.Click += buttonGenerarAnuncio_Click;
            // 
            // buttonExportarAnuncioAudio
            // 
            buttonExportarAnuncioAudio.Font = new Font("Palatino Linotype", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            buttonExportarAnuncioAudio.Location = new Point(217, 416);
            buttonExportarAnuncioAudio.Name = "buttonExportarAnuncioAudio";
            buttonExportarAnuncioAudio.Size = new Size(131, 47);
            buttonExportarAnuncioAudio.TabIndex = 3;
            buttonExportarAnuncioAudio.Text = "Exportar Anuncio a Audio";
            buttonExportarAnuncioAudio.UseVisualStyleBackColor = true;
            buttonExportarAnuncioAudio.Click += buttonExportarAnuncioAudio_Click;
            // 
            // buttonExportarAnuncioPDF
            // 
            buttonExportarAnuncioPDF.Font = new Font("Palatino Linotype", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            buttonExportarAnuncioPDF.Location = new Point(379, 417);
            buttonExportarAnuncioPDF.Name = "buttonExportarAnuncioPDF";
            buttonExportarAnuncioPDF.Size = new Size(129, 46);
            buttonExportarAnuncioPDF.TabIndex = 4;
            buttonExportarAnuncioPDF.Text = "Exportar Anuncio a PDF";
            buttonExportarAnuncioPDF.UseVisualStyleBackColor = true;
            buttonExportarAnuncioPDF.Click += buttonExportarAnuncioPDF_Click;
            // 
            // buttonGuardarAnuncioDB
            // 
            buttonGuardarAnuncioDB.Font = new Font("Palatino Linotype", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            buttonGuardarAnuncioDB.Location = new Point(547, 417);
            buttonGuardarAnuncioDB.Name = "buttonGuardarAnuncioDB";
            buttonGuardarAnuncioDB.Size = new Size(134, 46);
            buttonGuardarAnuncioDB.TabIndex = 5;
            buttonGuardarAnuncioDB.Text = "Guardar Anuncio en DB";
            buttonGuardarAnuncioDB.UseVisualStyleBackColor = true;
            buttonGuardarAnuncioDB.Click += buttonGuardarAnuncioDB_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Imprint MT Shadow", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(162, 24);
            label1.Name = "label1";
            label1.Size = new Size(572, 19);
            label1.TabIndex = 6;
            label1.Text = "ASISTENTE DE PUBLICIDAD INTELIGENTE PARA NEGOCIOS ";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Palatino Linotype", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label2.Location = new Point(84, 80);
            label2.Name = "label2";
            label2.Size = new Size(83, 17);
            label2.TabIndex = 7;
            label2.Text = "Consultar AI:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Palatino Linotype", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label3.Location = new Point(84, 214);
            label3.Name = "label3";
            label3.Size = new Size(70, 17);
            label3.TabIndex = 8;
            label3.Text = "Respuesta:";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.PapayaWhip;
            ClientSize = new Size(912, 514);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(buttonGuardarAnuncioDB);
            Controls.Add(buttonExportarAnuncioPDF);
            Controls.Add(buttonExportarAnuncioAudio);
            Controls.Add(buttonGenerarAnuncio);
            Controls.Add(textBoxAnuncio);
            Controls.Add(textBoxTemaPublicidad);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox textBoxTemaPublicidad;
        private TextBox textBoxAnuncio;
        private Button buttonGenerarAnuncio;
        private Button buttonExportarAnuncioAudio;
        private Button buttonExportarAnuncioPDF;
        private Button buttonGuardarAnuncioDB;
        private Label label1;
        private Label label2;
        private Label label3;
    }
}
