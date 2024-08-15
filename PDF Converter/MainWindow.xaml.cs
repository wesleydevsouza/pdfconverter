using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Win32;
using System.Diagnostics;
using System.Drawing;
using System.IO;

//DOCS
using Syncfusion.DocIO;
using Syncfusion.DocIO.DLS;
using Syncfusion.DocToPDFConverter;

//PDF
using Syncfusion.Pdf;
using Syncfusion.Pdf.Graphics;
using Syncfusion.Pdf.Parsing;

//Theme
using Syncfusion.SfSkinManager;
using Syncfusion.Themes.FluentDark;

namespace PDF_Converter {
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {

        public double ScaleValue {
            get; set;
        }
        public MainWindow() {
            InitializeComponent();

            ScaleValue = 1.0;
            DataContext = this;
        }

        private void ConvertButton_Click(object sender, EventArgs e) {
            if (pathTextBox.Text == String.Empty) {
                MessageBox.Show("Please select a file to conver");
                return;

            }

            switch (conversionDropDown.SelectedIndex) {
                case 0:
                    ConvertDocToPDF(pathTextBox.Text);
                    break;
                default:
                    MessageBox.Show("Please select an option");
                    return;
            }

            OpenFolder(pathTextBox.Text);
        }

        private void ConvertDocToPDF(string docPath) {
            WordDocument wordDocument = new WordDocument(docPath, FormatType.Automatic);
            DocToPDFConverter converter = new DocToPDFConverter();
            PdfDocument pdfDocument = converter.ConvertToPDF(wordDocument);

            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "PDF files (*.pdf)|*.pdf";
            saveFileDialog.Title = "Save PDF";
            saveFileDialog.FileName = System.IO.Path.GetFileNameWithoutExtension(docPath) + ".pdf";

            if (saveFileDialog.ShowDialog() == true) {
                pdfDocument.Save(saveFileDialog.FileName);
                MessageBox.Show("PDF saved successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            }

            pdfDocument.Close(true);
            wordDocument.Close();
        }


        private void SelectFile_Click(object sender, RoutedEventArgs e) {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            bool? result = openFileDialog.ShowDialog();

            if (result.HasValue && result.Value) {
                pathTextBox.Text = openFileDialog.FileName;
            }
        }        

        private void OpenFolder(string folderPath) {
            ProcessStartInfo startInfo = new ProcessStartInfo() {
                Arguments = folderPath.Substring(0, folderPath.LastIndexOf('\\')),
                FileName = "explorer.exe"
            };
            Process.Start(startInfo);   
        }
    }
}
