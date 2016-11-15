using MahApps.Metro.Controls;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;

namespace XPathTutor
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Window1 : MetroWindow
    {
        Assembly assembly = Assembly.GetExecutingAssembly();
        StreamReader reader, readerxml;
        Stream readerx;
        //MainWindow main = new MainWindow(1);
        MainWindow main;
        public static int flag2 = 0;
        public Window1()
        {

            InitializeComponent();
            labelpopulate();
            //MessageBox.Show(Environment.CurrentDirectory);
            //browser.Source=new Uri(Environment.CurrentDirectory+"/Index.html");
            reader = new StreamReader(assembly.GetManifestResourceStream("XPathTutor.Index.html"));
            browser.NavigateToString(reader.ReadToEnd());
        }
        public Window1( MainWindow MW1)
        {
            main = MW1;
            InitializeComponent();
            labelpopulate();
            //MessageBox.Show(Environment.CurrentDirectory);
            //browser.Source=new Uri(Environment.CurrentDirectory+"/Index.html");
            reader = new StreamReader(assembly.GetManifestResourceStream("XPathTutor.Index.html"));
            browser.NavigateToString(reader.ReadToEnd());
        }
        private void labelpopulate()
        {
            readerxml = new StreamReader(assembly.GetManifestResourceStream("XPathTutor.Example.xml"));
            label.Content = readerxml.ReadToEnd(); 
        }

        private void Intro_Click(object sender, RoutedEventArgs e)
        {
            navigation("XPathTutor.Introduction.html");
            
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            //XPathDocument navdoc = new XPathDocument(readerxml);
            try {
                listBox.Items.Clear();
            XmlDocument doc = new XmlDocument();
            readerx = assembly.GetManifestResourceStream("XPathTutor.Example.xml");
            doc.Load(readerx);
            XPathNavigator nav = doc.CreateNavigator();
            XPathNodeIterator itr;
            string expression;
            expression = textBox.Text;
            itr = nav.Select(expression);
            while (itr.MoveNext())
            {
                listBox.Items.Add(itr.Current.Value);
            }
            }
            catch(XPathException)
            {
                MessageBox.Show("Invalid XPath Expression. Go through the tutorials for references.","Invalid Expression");
            }


        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            if(flag2 == 0)
            { 
            this.Hide();
            main.Show();
            }
            else
            {
                this.Hide();
                main.second();
            }
        }

        private void Syntax_Click(object sender, RoutedEventArgs e)
        {
            navigation("XPathTutor.Syntax.html");
        }

        private void nodes_Click(object sender, RoutedEventArgs e)
        {
            navigation("XPathTutor.Nodes.html");
            
        }

        private void Axes_Click(object sender, RoutedEventArgs e)
        {
            navigation("XPathTutor.Axes.html");
        }

        private void Operator_Click(object sender, RoutedEventArgs e)
        {
            navigation("XPathTutor.Operators.html");
        }

        private void Example_Click(object sender, RoutedEventArgs e)
        {
            navigation("XPathTutor.Examples.html");
        }

        private void NavigateInteractive_Click(object sender, RoutedEventArgs e)
        {
            flag2 = 1;
            this.Hide();
            main.Interactive_Pass();
            
        }

        private void navigation(string path)
        {
            reader = new StreamReader(assembly.GetManifestResourceStream(path));
            browser.NavigateToString(reader.ReadToEnd());
        }
    }
}
