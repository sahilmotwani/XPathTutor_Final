using MahApps.Metro.Controls;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Threading;
using System.Xml;
using System.Xml.Linq;
using System.Linq;
using System.Xml.XPath;
using XPathTutor;
using System.Collections.ObjectModel;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Text;

namespace XPathTutor
{
    
    public partial class MainWindow : MetroWindow
    {
        private int countButtonTimer=0;
        private XmlDocument doc;
        private XElement xml;
        private  string filename;
        private HashSet<string> childNodes = new HashSet<string>();
        private HashSet<string> grandChildNodes = new HashSet<string>();
        private HashSet<string> gcChildNodes = new HashSet<string>();
        private ObservableCollection<string> emptyList = new ObservableCollection<string>();
        public static int flag = 0;
        XPathNavigator navigator;
        XPathDocument document;
        Window1 win1;
        XmlNode root;

        private StringBuilder query = new StringBuilder(); 

        public MainWindow()
        {
            InitializeComponent();
            //this.Top = Owner.Top;
            buttonInit();
          
        }

        public MainWindow(int i)
        {
            
            InitializeComponent();
            MainCanvas.Visibility = Visibility.Collapsed;
            path.Visibility = Visibility.Visible;

        }

        private void buttonInit()
        {
            
            Play.Visibility = Visibility.Collapsed;
            DispatcherTimer t = new DispatcherTimer();
            t.Tick += new EventHandler(countTick);
            t.Interval = new TimeSpan(0, 0, 1);
            t.Start();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
           
            MainCanvas.Visibility = Visibility.Collapsed;
            path.Visibility = Visibility.Visible;
            this.Background = new ImageBrush(new BitmapImage(new Uri(@"pack://application:,,,/bac.jpg")));
            

        }
        private void btnOpenFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "XML (*.xml)|*.xml|All files (*.*)|*.*";

            if (openFileDialog.ShowDialog() == true)
            {
                filename= openFileDialog.FileName;
                filePath.Content = filename;
                openXML(filename);
            }
        }

        private void ClearXmlFile(object sender,RoutedEventArgs e)
        {
            filePath.Content = string.Empty;
            vXMLViwer.xmlDocument = null;
            checkBox.IsEnabled = false;
            checkBox.IsChecked = false;
            checkBox1.IsEnabled = false;
            checkBox1.IsChecked = false;
            comboBox1.IsEnabled = false;
            comboBox1.Items.Clear();
            comboBox2.IsEnabled = false;comboBox2.ItemsSource = emptyList;
            comboBox3.IsEnabled = false;
            comboBox3.ItemsSource = emptyList;
            textbox.Text = null;
            queryResult.Text = null;
            checkBox2.IsChecked = false;
            checkBox2.IsEnabled = false;
                
        }
        private void openXML(string fileName)
        {
            doc = new XmlDocument();
            xml = XElement.Load(fileName);
            document = new XPathDocument(filename);
            navigator = document.CreateNavigator();
            try
            {
                doc.Load(fileName);
            }
            catch (XmlException)
            {
                MessageBox.Show("The XML file is invalid");
                return;
            }
            
            vXMLViwer.xmlDocument = doc;
            checkBox.IsEnabled = true;
            root = doc.DocumentElement;
            ChildLevel2();
            ChildLevel3();
            if (!(grandChildNodes.Count == 0))
            {
                checkBox1.IsEnabled =true;
            }
            if(!(gcChildNodes.Count == 0))
                checkBox2.IsEnabled = true;
        }
        
        private void countTick(object sender, EventArgs e)
        {
            countButtonTimer++;
            if (countButtonTimer == 4)
            {
                Play.Visibility = Visibility.Visible;
            }
        }

        private void formQuery()
        {
            query.Clear();
            query.Append("/" + root.LocalName + "/");
            if (checkBox.IsChecked.Value)
            {
                query.Append(comboBox1.SelectedItem);
                if (checkBox1.IsChecked.Value)
                {
                    query.Append("/" + comboBox2.SelectedItem);
                }
                if (checkBox2.IsChecked.Value)
                {
                    if (checkBox1.IsChecked.Value)
                        query.Append("/" + comboBox3.SelectedItem);
                    else
                        query.Append("//" + comboBox3.SelectedItem);
                }
            }
            else if (checkBox1.IsChecked.Value)
            {
                query.Append("/" + comboBox2.SelectedItem);
                if (checkBox2.IsChecked.Value)
                {
                    query.Append("/" + comboBox3.SelectedItem);
                }
            }

            else if (checkBox2.IsChecked.Value)
            {
                query.Append("*//" + comboBox3.SelectedItem);

            }

            textbox.Text = query.ToString();

        }



        private void checkBox1_Checked(object sender, RoutedEventArgs e)
        {
            
            if (checkBox.IsChecked.Value)
            {
                int i = 1;
                childNodes = new HashSet<string>();
                foreach (XmlNode node in doc.DocumentElement.ChildNodes)
                {
                    childNodes.Add(node.LocalName);
                    string text = node.LocalName + "["+i+"]"; //or loop through its children as well
                    comboBox1.Items.Add(text);
                    i++;
                }
                comboBox1.IsEnabled = true;
                comboBox1.SelectedIndex = 0;
                   
            }
            if(!checkBox.IsChecked.Value)
            {
                comboBox1.IsEnabled = false;
                comboBox1.Items.Clear();
            }
            formQuery();
             

        }

        private void checkBox2_Checked(object sender, RoutedEventArgs e)
        {
            if (checkBox1.IsChecked.Value)
            {
                ChildLevel2();
                ChildLevel3();
                grandChildNodes.Remove(root.LocalName);
                foreach (string gcc in gcChildNodes)
                {

                    grandChildNodes.Remove(gcc);
                }

                comboBox2.IsEnabled = true;

                comboBox2.SelectedIndex = 0;
                comboBox2.ItemsSource = grandChildNodes.ToList();
                formQuery();
            }
            else if (!checkBox1.IsChecked.Value)
            {
                comboBox2.IsEnabled = false;
                comboBox2.ItemsSource = emptyList;
                formQuery();
            }
        }

        private void ComboBox1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            formQuery();
        }
        private void ComboBox2_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           formQuery();
        }

        private void runQuery_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                XmlDocument allResults = new XmlDocument();
                XPathNodeIterator itr;
                string expression;
                expression = textbox.Text;
                StringBuilder result = new StringBuilder();
                itr = navigator.Select(expression);

                while (itr.MoveNext())
                {
                    result.Append(itr.Current.OuterXml);
                }
                queryResult.Text = result.ToString();
            }
            catch(Exception excp)
            {
                MessageBox.Show("Invalid Query. Please revisit tutorials!!");
            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            win1 = new Window1(this);
            win1.Show();
            this.Hide();
         


        }

        private void Interactive_Click(object sender, RoutedEventArgs e)
        {
            flag = 0;
            path.Visibility = Visibility.Collapsed;
            upGrid.Visibility = Visibility.Visible;
            uploadItem.Visibility = Visibility.Visible;
            this.Background = new SolidColorBrush(Colors.White);
        }
        public void Interactive_Pass()
        {
            this.Show();
            flag = 1;
            path.Visibility = Visibility.Collapsed;
            upGrid.Visibility = Visibility.Visible;
            uploadItem.Visibility = Visibility.Visible;
            this.Background = new SolidColorBrush(Colors.White);
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            if(flag == 0)
            {
                path.Visibility = Visibility.Visible;
                upGrid.Visibility = Visibility.Collapsed;
                uploadItem.Visibility = Visibility.Collapsed;
                this.Background = new ImageBrush(new BitmapImage(new Uri(@"pack://application:,,,/bac.jpg")));
                //this.Background = new SolidColorBrush(Colors.Black);
            }
            else
            {
                win1.Show();
                this.Hide();
            }
        }

        public void second()
        {
            this.Show();
            path.Visibility = Visibility.Visible;
            upGrid.Visibility = Visibility.Collapsed;
            uploadItem.Visibility = Visibility.Collapsed;
            this.Background = new ImageBrush(new BitmapImage(new Uri(@"pack://application:,,,/bac.jpg")));
            //this.Background = new SolidColorBrush(Colors.Black);
        }
        // multinode trial

        private void checkBox3_Checked(object sender, RoutedEventArgs e)
        {
            if (checkBox2.IsChecked.Value)
            {
                ChildLevel2();
                ChildLevel3();
                comboBox3.IsEnabled = true;

                comboBox3.SelectedIndex = 0;
                comboBox3.ItemsSource = gcChildNodes.ToList();

            }
            else if (!checkBox2.IsChecked.Value)
            {
                comboBox3.IsEnabled = false;
                comboBox3.ItemsSource = emptyList;
            }
        }
        private void ComboBox3_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           formQuery();
        }

        private void ChildLevel2()
        {
            XPathDocument document = new XPathDocument(filename);
            XPathNavigator navigator = document.CreateNavigator();
            grandChildNodes = new HashSet<string>();
            XPathNodeIterator nodes = navigator.Select("//*");

            while (nodes.MoveNext())
            {
                if (childNodes.Contains(nodes.Current.Name))
                {

                }
                else
                {
                    grandChildNodes.Add(nodes.Current.Name);
                }
            }
        }

        private void ChildLevel3()
        {
            XPathDocument document = new XPathDocument(filename);
            XPathNavigator navigator = document.CreateNavigator();
            XPathNodeIterator nodes = navigator.Select("/*/*/*/*");
            gcChildNodes = new HashSet<string>();
            while (nodes.MoveNext())
            {
                if (grandChildNodes.Contains(nodes.Current.Name))
                {
                    gcChildNodes.Add(nodes.Current.Name);
                }
                else
                {

                }
            }

            XmlNode root = doc.DocumentElement;
            gcChildNodes.Remove(root.LocalName);
        }

        private void clearQuery_Click(object sender, RoutedEventArgs e)
        {
            checkBox.IsChecked = false;
            checkBox1.IsChecked = false;
            checkBox2.IsChecked = false;
            comboBox1.IsEnabled = false;
            comboBox1.Items.Clear();
            comboBox2.IsEnabled = false;
            comboBox2.ItemsSource = emptyList;
            comboBox3.IsEnabled = false;
            comboBox3.ItemsSource = emptyList;
            textbox.Text = null;
            queryResult.Text = null;

        }

       
    }


}
