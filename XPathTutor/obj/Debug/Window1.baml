   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   E AXPathTutor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:XPathTutor
XPathTutor 5   	      XPathTutor.Window1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   *localclr-namespace:XPathTutor     5   	     � Title$  XPath Tutorial��5	   	   $	��717��6    $
��1263��6-    � 
ResizeMode$ CanMinimize=�6:    � WindowStartupLocation$ CenterScreen=�6S   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��320* �6   �� 5      $
��590* �6   �� 5      $
��347* �6   .+�5   
   � -   5         �Name$ 	Navigator��5      $
��Left=�6"   $	��727��6=   $��10,0,0,0q�6J   $	��Top=�6\   $	��260��6t   .+�5      �� -   5         ��Name$ Intro��5      $��XPath Introduction��6$   $
��Left=�6A   $��	10,87,0,0q�6\   $	��Top=�6o   $	��240��6�   $��26��6�   6�   �� 5      -   5        $ nodes��5      $��XPath Nodes��6$   $
��Left=�6:   $��
10,133,0,0q�6U   $	��Top=�6i   $	��240��6�   $��26��6�   6�   �� 5      -   5        $
 Back��5      $��Take me to Main Menu��6#   $
��Left=�6B   $��	10,35,0,0q�6]   $	��Top=�6p   $	��240��6�   $��26��6�   6�   �� 5      -   5        $ Syntax��5      $��XPATH SYNTAX��6%   $
��Left=�6<   $��
10,183,0,0q�6W   $	��Top=�6k   $	��240��6�   $��26��6�   6�   �� 5      -   5        $
 Axes��5      $��
XPATH AXES��6#   $
��Left=�68   $��
10,233,0,0q�6S   $	��Top=�6g   $	��240��6   $��26��6�   6�   �� 5      -   5        $ Operator��5      $��XPATH OPERATOR��6'   $
��Left=�6@   $��
10,285,0,0q�6[   $	��Top=�6o   $	��240��6�   $��26��6�   6�   �� 5      -   5        $ Example��5      $��XPATH EXAMPLES��6&   $
��Left=�6?   $��
10,335,0,0q�6Z   $	��Top=�6n   $	��240��6�   $��26��6�   6�   �� 5      -	   5        $ NavigateInteractive��5      $)��#Take me to XPath Interactive Module��62   $
��Left=�6`   $��
10,385,0,0q�6{   $	��Top=�6�   $	��240��6�   $��26��6�   6�   5      � 5   
   $
��Left=�6   $	��668��6*   $��
275,10,0,0q�67   $	��Top=�6K   $	��970��6c   $��3��6o   .+�5      (  "System.Windows.Controls.WebBrowser  -
   5          Name$ browser��5      $
��Left=�6*   $	��648��6E   $��	10,10,0,0q�6R   $	��Top=�6e   $	��670��6}   �� 5      -   5         ��Name$ label��5      $�� ��6#   $
��Left=�6.   $��
685,10,0,0q�6I   $	��Top=�6]   $	��410��6u   $	��275��6�   
���   �6�   �� 5      -   5        $ button��5      $��Execute Expression��6%   $
��Left=�6B   $��685,478,0,0q�6]   $	��Top=�6r   $	��275��6�   $��30��6�   6�   �� 5      -   5         ��Name$ listBox��5      $
��Left=�6'   $	��137��6B   $��685,521,0,0q�6O   $	��Top=�6d   $	��275��6|   ���	#FF0C0B0B6�   �� 5      -   5        	 ��Name$	 textBox��5      *   $MahApps.Metro.Controls.TextBoxHelper
   	Watermark$"
 The Xpath Query goes in here��6'   $
��Left=�6g   $��23��6�   $��685,439,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��275��6�   5       5!      5"      