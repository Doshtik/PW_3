namespace PracticWork_3
{
    partial class FormTypes
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
            splitContainer1 = new SplitContainer();
            listBoxPartners = new ListBox();
            textBox1 = new TextBox();
            listBoxProducts = new ListBox();
            textBox2 = new TextBox();
            ((System.ComponentModel.ISupportInitialize)splitContainer1).BeginInit();
            splitContainer1.Panel1.SuspendLayout();
            splitContainer1.Panel2.SuspendLayout();
            splitContainer1.SuspendLayout();
            SuspendLayout();
            // 
            // splitContainer1
            // 
            splitContainer1.Dock = DockStyle.Fill;
            splitContainer1.Location = new Point(0, 0);
            splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            splitContainer1.Panel1.Controls.Add(listBoxPartners);
            splitContainer1.Panel1.Controls.Add(textBox1);
            // 
            // splitContainer1.Panel2
            // 
            splitContainer1.Panel2.Controls.Add(listBoxProducts);
            splitContainer1.Panel2.Controls.Add(textBox2);
            splitContainer1.Size = new Size(1257, 750);
            splitContainer1.SplitterDistance = 637;
            splitContainer1.TabIndex = 0;
            // 
            // listBoxPartners
            // 
            listBoxPartners.Dock = DockStyle.Fill;
            listBoxPartners.FormattingEnabled = true;
            listBoxPartners.ItemHeight = 25;
            listBoxPartners.Location = new Point(0, 30);
            listBoxPartners.MultiColumn = true;
            listBoxPartners.Name = "listBoxPartners";
            listBoxPartners.Size = new Size(637, 720);
            listBoxPartners.TabIndex = 3;
            // 
            // textBox1
            // 
            textBox1.Dock = DockStyle.Top;
            textBox1.Location = new Point(0, 0);
            textBox1.Name = "textBox1";
            textBox1.ReadOnly = true;
            textBox1.Size = new Size(637, 30);
            textBox1.TabIndex = 0;
            textBox1.Text = "Типы Партнеров";
            textBox1.TextAlign = HorizontalAlignment.Center;
            // 
            // listBoxProducts
            // 
            listBoxProducts.Dock = DockStyle.Fill;
            listBoxProducts.FormattingEnabled = true;
            listBoxProducts.ItemHeight = 25;
            listBoxProducts.Location = new Point(0, 30);
            listBoxProducts.MultiColumn = true;
            listBoxProducts.Name = "listBoxProducts";
            listBoxProducts.Size = new Size(616, 720);
            listBoxProducts.TabIndex = 2;
            // 
            // textBox2
            // 
            textBox2.Dock = DockStyle.Top;
            textBox2.Location = new Point(0, 0);
            textBox2.Name = "textBox2";
            textBox2.ReadOnly = true;
            textBox2.Size = new Size(616, 30);
            textBox2.TabIndex = 1;
            textBox2.Text = "Типы Продукции";
            textBox2.TextAlign = HorizontalAlignment.Center;
            // 
            // FormTypes
            // 
            AutoScaleDimensions = new SizeF(11F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1257, 750);
            Controls.Add(splitContainer1);
            Font = new Font("Cascadia Code", 14.25F, FontStyle.Regular, GraphicsUnit.Point, 204);
            Margin = new Padding(5);
            Name = "FormTypes";
            ShowIcon = false;
            Text = "Таблицы типов";
            Load += FormTypes_Load;
            splitContainer1.Panel1.ResumeLayout(false);
            splitContainer1.Panel1.PerformLayout();
            splitContainer1.Panel2.ResumeLayout(false);
            splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)splitContainer1).EndInit();
            splitContainer1.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private SplitContainer splitContainer1;
        private TextBox textBox1;
        private TextBox textBox2;
        private ListBox listBoxProducts;
        private ListBox listBoxPartners;
    }
}
