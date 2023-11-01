﻿namespace UI
{
    partial class ProductsUI
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.lbKhuyenMai = new System.Windows.Forms.Label();
            this.btnChon = new System.Windows.Forms.Button();
            this.lbGiaSP = new System.Windows.Forms.Label();
            this.lbGiaGiam = new System.Windows.Forms.Label();
            this.lbTenSP = new System.Windows.Forms.Label();
            this.picProduct = new System.Windows.Forms.PictureBox();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picProduct)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.lbKhuyenMai);
            this.panel1.Controls.Add(this.btnChon);
            this.panel1.Controls.Add(this.lbGiaSP);
            this.panel1.Controls.Add(this.lbGiaGiam);
            this.panel1.Controls.Add(this.lbTenSP);
            this.panel1.Controls.Add(this.picProduct);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(5, 5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(286, 516);
            this.panel1.TabIndex = 0;
            // 
            // lbKhuyenMai
            // 
            this.lbKhuyenMai.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lbKhuyenMai.AutoSize = true;
            this.lbKhuyenMai.BackColor = System.Drawing.Color.Red;
            this.lbKhuyenMai.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbKhuyenMai.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.lbKhuyenMai.Location = new System.Drawing.Point(102, 382);
            this.lbKhuyenMai.Name = "lbKhuyenMai";
            this.lbKhuyenMai.Padding = new System.Windows.Forms.Padding(3);
            this.lbKhuyenMai.Size = new System.Drawing.Size(46, 24);
            this.lbKhuyenMai.TabIndex = 5;
            this.lbKhuyenMai.Text = "-17%";
            // 
            // btnChon
            // 
            this.btnChon.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(240)))), ((int)(((byte)(255)))), ((int)(((byte)(243)))));
            this.btnChon.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnChon.Font = new System.Drawing.Font("Consolas", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChon.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(70)))), ((int)(((byte)(126)))), ((int)(((byte)(77)))));
            this.btnChon.Location = new System.Drawing.Point(0, 427);
            this.btnChon.Name = "btnChon";
            this.btnChon.Size = new System.Drawing.Size(284, 87);
            this.btnChon.TabIndex = 4;
            this.btnChon.Text = "CHỌN";
            this.btnChon.UseVisualStyleBackColor = false;
            // 
            // lbGiaSP
            // 
            this.lbGiaSP.AutoSize = true;
            this.lbGiaSP.Font = new System.Drawing.Font("Consolas", 10.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Italic | System.Drawing.FontStyle.Strikeout))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbGiaSP.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(157)))), ((int)(((byte)(186)))), ((int)(((byte)(223)))));
            this.lbGiaSP.Location = new System.Drawing.Point(15, 386);
            this.lbGiaSP.Name = "lbGiaSP";
            this.lbGiaSP.Size = new System.Drawing.Size(81, 20);
            this.lbGiaSP.TabIndex = 3;
            this.lbGiaSP.Text = "280.000đ";
            // 
            // lbGiaGiam
            // 
            this.lbGiaGiam.AutoSize = true;
            this.lbGiaGiam.Font = new System.Drawing.Font("Consolas", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbGiaGiam.ForeColor = System.Drawing.Color.Black;
            this.lbGiaGiam.Location = new System.Drawing.Point(13, 350);
            this.lbGiaGiam.Name = "lbGiaGiam";
            this.lbGiaGiam.Size = new System.Drawing.Size(116, 27);
            this.lbGiaGiam.TabIndex = 3;
            this.lbGiaGiam.Text = "280.000đ";
            // 
            // lbTenSP
            // 
            this.lbTenSP.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lbTenSP.AutoEllipsis = true;
            this.lbTenSP.Font = new System.Drawing.Font("Consolas", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbTenSP.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(157)))), ((int)(((byte)(167)))), ((int)(((byte)(203)))));
            this.lbTenSP.Location = new System.Drawing.Point(15, 287);
            this.lbTenSP.Name = "lbTenSP";
            this.lbTenSP.Size = new System.Drawing.Size(250, 50);
            this.lbTenSP.TabIndex = 3;
            this.lbTenSP.Text = "Dầu đậu nành Simply 5 lít";
            // 
            // picProduct
            // 
            this.picProduct.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.picProduct.Location = new System.Drawing.Point(18, 16);
            this.picProduct.Name = "picProduct";
            this.picProduct.Size = new System.Drawing.Size(250, 250);
            this.picProduct.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picProduct.TabIndex = 2;
            this.picProduct.TabStop = false;
            // 
            // ProductsUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(240)))), ((int)(((byte)(255)))), ((int)(((byte)(243)))));
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.Name = "ProductsUI";
            this.Padding = new System.Windows.Forms.Padding(5);
            this.Size = new System.Drawing.Size(296, 526);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picProduct)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lbGiaGiam;
        private System.Windows.Forms.Label lbTenSP;
        private System.Windows.Forms.PictureBox picProduct;
        private System.Windows.Forms.Label lbKhuyenMai;
        private System.Windows.Forms.Button btnChon;
        private System.Windows.Forms.Label lbGiaSP;
    }
}
