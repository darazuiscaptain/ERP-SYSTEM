﻿namespace ExtraSjaj
{
    partial class Form2
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this._TepisiBaza_2018DataSet = new ExtraSjaj._TepisiBaza_2018DataSet();
            this.musterijasBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.musterijasTableAdapter = new ExtraSjaj._TepisiBaza_2018DataSetTableAdapters.MusterijasTableAdapter();
            this.idDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.brojTelefonaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.brojTepihaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._TepisiBaza_2018DataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.musterijasBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idDataGridViewTextBoxColumn,
            this.brojTelefonaDataGridViewTextBoxColumn,
            this.brojTepihaDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.musterijasBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(16, 12);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(1004, 505);
            this.dataGridView1.TabIndex = 0;
            // 
            // _TepisiBaza_2018DataSet
            // 
            this._TepisiBaza_2018DataSet.DataSetName = "_TepisiBaza_2018DataSet";
            this._TepisiBaza_2018DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // musterijasBindingSource
            // 
            this.musterijasBindingSource.DataMember = "Musterijas";
            this.musterijasBindingSource.DataSource = this._TepisiBaza_2018DataSet;
            // 
            // musterijasTableAdapter
            // 
            this.musterijasTableAdapter.ClearBeforeFill = true;
            // 
            // idDataGridViewTextBoxColumn
            // 
            this.idDataGridViewTextBoxColumn.DataPropertyName = "Id";
            this.idDataGridViewTextBoxColumn.HeaderText = "Id";
            this.idDataGridViewTextBoxColumn.Name = "idDataGridViewTextBoxColumn";
            this.idDataGridViewTextBoxColumn.ReadOnly = true;
            this.idDataGridViewTextBoxColumn.Width = 50;
            // 
            // brojTelefonaDataGridViewTextBoxColumn
            // 
            this.brojTelefonaDataGridViewTextBoxColumn.DataPropertyName = "BrojTelefona";
            this.brojTelefonaDataGridViewTextBoxColumn.HeaderText = "BrojTelefona";
            this.brojTelefonaDataGridViewTextBoxColumn.Name = "brojTelefonaDataGridViewTextBoxColumn";
            this.brojTelefonaDataGridViewTextBoxColumn.Width = 300;
            // 
            // brojTepihaDataGridViewTextBoxColumn
            // 
            this.brojTepihaDataGridViewTextBoxColumn.DataPropertyName = "BrojTepiha";
            this.brojTepihaDataGridViewTextBoxColumn.HeaderText = "BrojTepiha";
            this.brojTepihaDataGridViewTextBoxColumn.Name = "brojTepihaDataGridViewTextBoxColumn";
            this.brojTepihaDataGridViewTextBoxColumn.Width = 300;
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "Name";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            this.nameDataGridViewTextBoxColumn.Width = 300;
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1091, 568);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Form2";
            this.Text = "Form2";
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._TepisiBaza_2018DataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.musterijasBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private _TepisiBaza_2018DataSet _TepisiBaza_2018DataSet;
        private System.Windows.Forms.BindingSource musterijasBindingSource;
        private _TepisiBaza_2018DataSetTableAdapters.MusterijasTableAdapter musterijasTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn idDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn brojTelefonaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn brojTepihaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
    }
}