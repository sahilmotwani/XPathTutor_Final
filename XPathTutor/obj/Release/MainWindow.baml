   M S B A M L   `   `   `  ���� E  AXPathTutor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:XPathTutor
XPathTutor  D @XMLViewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:XMLViewer;assembly=XMLViewer	XMLViewer T PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls     XPathTutor.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:XPathTutor     @	XMLViewer*clr-namespace:XMLViewer;assembly=XMLViewer     J FWpfAnimatedGif, Version=1.4.14.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com  JControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  -   (  "MahApps.Metro.Controls.MetroWindow   Name$  MainPage��   AccentColorBrush   	GlowBrush# �   $	��700��$
��1263�� � Title$ XPath Tutor��
���   � � 
ResizeMode$ CanMinimize=� � WindowStartupLocation$ CenterScreen=�   LeftWindowCommands +  %MahApps.Metro.Controls.WindowCommands     RightWindowCommands   .@��� .����  �� Orientation$ 
Horizontal=�.+��� $��20��$��20������  �� RelativeSource �� 	 �� AncestorType$	 ButtonL�
 �� Path$
 
Foreground� J� OpacityMask !�  j� Stretch$
 Fill=�  appbar_chess_horse !� Visual# [ �� $��4 0 0 0q�$��Center=�$��Keep Running�� � 	Resources   EllipseStoryboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%(  &	       �� .��U� $ (Canvas.Top)�$ ellipse��.\�  $ 0:0:1��$	 568Q�  $ 0:0:2��$ 0Q�  $ 0:0:3��$	 568Q�  $ 0:0:4��$	 400Q�U� $ (Canvas.Left)�$ ellipse��.\�  $ 0:0:1��$ 27.273Q�  $ 0:0:2��$
 1000Q�  $ 0:0:3��$
 1000Q�  $ 0:0:4��$	 600Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$ ellipse��.\�  $ 0:0:3��$ 1Q�  $ 0:0:4��$ -1Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ ellipse��.\�  $ 0:0:3��$ 0Q�  $ 0:0:4��$ -40.421Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$ ellipse��.\�  $ 0:0:3��$ 0Q�  $ 0:0:4��$ -150.66Q� � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded��.[��� #��[ .��� .+�]� -    ]�Name$ 
uploadItem��$��104,55,625,67q�$y�	Collapsed=�.+�� $��Right=�$	��Top=�$��	0,3,20,10q�.+��� -    ��Name$ btnOpenFile��$��0,-10,-25,0q�$��	Open File��$��30��$��75��  AccentedSquareButtonStyle#��[ �� -   $ 	CloseFile��$��30,-10,-30,0q�$��30��$��63��$��Clear��#��[   XMLViewer.Viewer  -     Name$ 	vXMLViwer��$	��402��$
��Left=�$��0,30,0,0q��� -    ��Name$ 
MainCanvas��#���   $��	-3,0,-5,0q�$
��1263��$y�Visible=�.+�A� -    A�Name$ ellipse�����#E6EDF0$��154.97��$��143.224��
 �� Top$ 59.091�� �� Left$ 27.273�� J� RenderTransformOrigin$ 0.5,0.5&�z�V� .~��� �� �� T�  � LayoutTransform V� .~��� �� �� T� �� -   $
 Play��$��Learn Xpath��$	 565��$	 310��$	��146�����#2B5A6E$��
Lucida Fax)�$
��Bold"�$��18(���Z� ��Z� � -	    �Name$
 path��$y�	Collapsed=�$��0,3,0,-3q�.+��� -
   $ button1��$��Tutorial��$��34��$	��Top=�$��479,278,471,0q��� -   $ Interactive��$��Interactive Session��$��34��$	��Top=�$��479,359,471,0q��� -   $��image��"  WpfAnimatedGif.ImageBehavior   AnimatedSource$ 	Learn.gif��$
��Left=�$	��100��$��533,118,0,0q�$	��Top=�$	��205��� -   $ upGrid��$y�	Collapsed=�.+��� -     ��Name$  filePath��{�.  $
��Left=�$��
190,51,0,0q�$	��Top=�$	��300��$��23��$��0.75pxq����	#FFABADB3���	#00000000$��10(��� $
��Left=�$��23��$��
104,51,0,0q�! �� TextWrapping$
! Wrap=�$��
Upload XML��$	��Top=�$��86��$
��Bold"���Z� ]� $
��Left=�$	��614����.  $��
655,64,0,0q�$	��Top=�$	��554��.+��� -   " ��Name$" checkBox��$��20��$��	0,100,0,0q�$��30��{�.  $	��Top=��� -   # ��Name$# 	comboBox1��$��25��$	��Top=�$	��200��$��0,97,0,0q�{�.  �� -   $" 	checkBox1��$�� ��$��20��$	��Top=�$��
50,100,0,0q��� -   $# 	comboBox2��$��23��$	��Top=�$	��187��$��	10,97,0,0q��� -   $ ��Name$$ textBox��$
��Left=�$��25��$��745,335,0,0q�$
! Wrap=�$��TextBox��$	��Top=�$	��345���� -   $ button��$��Button��$��34��$	��Top=�$��805,395,265,0q��� -   $
 back��$
��Back��$
��Left=�$��
684,50,0,0q�$	��Top=�$	��135��