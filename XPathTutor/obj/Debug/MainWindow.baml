   M S B A M L   `   `   `  ����E  AXPathTutor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:XPathTutor
XPathTutor  5   	   D @XMLViewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:XMLViewer;assembly=XMLViewer	XMLViewer 5   	   T PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5	   	       XPathTutor.MainWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:XPathTutor     5   	   @	XMLViewer*clr-namespace:XMLViewer;assembly=XMLViewer     5   	   J FWpfAnimatedGif, Version=1.4.14.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com  5   	   JControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5	   	   -   5        (  "MahApps.Metro.Controls.MetroWindow   Name$  MainPage��5         AccentColorBrush   	GlowBrush# �   5      $	��700��5   
   $
��1263��6    � Title$ XPath Tutor��5      
������� � 
ResizeMode$ CanMinimize=�6>    � WindowStartupLocation$ CenterScreen=�6W      LeftWindowCommands 5      +  %MahApps.Metro.Controls.WindowCommands  5   
   5         RightWindowCommands 5        5   
   .@�5      �� .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��20��6    $��20��5      ��5      ��  �� RelativeSource �� 	 �� AncestorType$	 ButtonL�
 �� Path$
 
Foreground� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6*     appbar_chess_horse !� Visual# [ 69   5      �� 5      $��4 0 0 0q�6    $��Center=�5       $��Keep Running��5!      5"      5#      5$       � 	Resources 5&        EllipseStoryboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%�  &	       �� 5'   
   .��5(      U� $ (Canvas.Top)�6,   $ ellipse��6U   .\�5)        $ 0:0:1��6'   $	 568Q�67     5*      $ 0:0:2��6'   $ 0Q�67     5+      $ 0:0:3��6'   $	 568Q�67     5,      $ 0:0:4��6'   $	 400Q�67   5-      U� 5.      $ (Canvas.Left)�6,   $ ellipse��6V   .\�5/        $ 0:0:1��6'   $ 27.273Q�67     50      $ 0:0:2��6'   $
 1000Q�67     51      $ 0:0:3��6'   $
 1000Q�67     52      $ 0:0:4��6'   $	 600Q�67   53      U� 54      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6,   $ ellipse��6�   .\�55        $ 0:0:3��6'   $ 1Q�67     56      $ 0:0:4��6'   $ -1Q�67   57      U� 58      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ ellipse��6�   .\�59        $ 0:0:3��6'   $ 0Q�67     5:      $ 0:0:4��6'   $ -40.421Q�67   5;      U� 5<      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $ ellipse��6�   .\�5=        $ 0:0:3��6'   $ 0Q�67     5>      $ 0:0:4��6'   $ -150.66Q�67   5?      5@      5A       � Triggers 5B      :� 5C   
    :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5D      �� #��[ 6   5E      .��5G      � .+�5H   
   ]� -   5         ]�Name$ 
uploadItem��5H      $��101,19,628,70q�6(   $y�	Collapsed=�6?   .+�5I      � $��Right=�6   $	��Top=�64   $��	0,3,20,10q�6I   .+�5J      �� -   5         ��Name$ 	CloseFile��5J      $��30,15,-260,0q�6,   $��30��6B   $��75��6N   $��Clear��6Y     AccentedSquareButtonStyle#��[ 6~   �� 5K      -   5        $ btnOpenFile��5K      $��
19,15,30,0q�6.   $��	Open File��6\   $��30��6p   $��75��6|   #��[ 6�   5L        XMLViewer.Viewer  5M      -   5          Name$ 	vXMLViwer��5M      $	��402��62   $
��Left=�6>   $��0,30,0,0q�6Y   5O      �� 5P   
   -   5         ��Name$ 
MainCanvas��5P      #���   6%   $��	-3,0,-5,0q�6U   $
��1263��6i   $y�Visible=�6v   .+�5Q      A� -   5         A�Name$ ellipse��5Q      ���#E6EDF0$��154.97��66   $��143.224��6E   
 �� Top$ 59.091��6V    �� Left$ 27.273��6j    J� RenderTransformOrigin$ 0.5,0.5&�6   z�5R      V� 5S      .~�5T      �� �� 5U      �� 5V      T� 5W      5X       � LayoutTransform 5Z      V� 5[      .~�5\      �� �� 5]      �� 5^      T� 5_      5`      5b      �� 5c      -   5        $
 Play��5c      $��Learn Xpath��6#   $	 565��6O   $	 310��6a   $	��146��6r   ���#2B5A6E$��
Lucida Fax)�6�   $
��Bold"�6�   $��18(�6�   ��6~   Z� ��6�   Z� 6�   5d      � 5e   
   -	   5         �Name$
 path��5e      $y�	Collapsed=�6   $��0,3,0,-3q�64   .+�5g      �� -
   5        $ button1��5g      $��Tutorial��6&   $��34��69   #��[ 6E   $	��Top=�6x   $��479,278,471,0q�6�   �� 5h      -   5        $ Interactive��5h      $��Interactive Session��6*   #��[ 6H   $��34��6{   $	��Top=�6�   $��479,359,471,0q�6�   6�   �� 5i      -   5        $��image��5i   A   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$ 	Learn.gif��6   $
��Left=�6N   $	��100��6i   $��533,118,0,0q�6v   $	��Top=�6�   $	��205��6�   5j      � 5k   
   -   5        $ upGrid��5k      $y�	Collapsed=�6   $��
0,-10,0,10q�66   .+�5l      �� -   5          ��Name$  filePath��5l      {�.  $
��Left=�68   $��
190,51,0,0q�6S   $	��Top=�6g   $	��300��6   $��23��6�   $��0.75pxq�6�   ���	#FFABADB3���	#00000000$��10(�6�   �� 5m      $
��Left=�6   $��23��62   $��
104,51,0,0q�6>   ! �� TextWrapping$
! Wrap=�6R   $��
Upload XML��6f   $	��Top=�6x   $��86��6�   $
��Bold"�6�   ��6�   Z� ]� 5n      $
��Left=�6   $	��149��63   ��.  $��
655,51,0,0q�6V   $	��Top=�6j   $	��554��6�   .+�5o      �� -   5        " ��Name$" checkBox��5o      $��20��6.   $��	0,100,0,0q�6:   $��30��6M   {�.  $	��Top=�6�   �� 5p      -   5        # ��Name$# 	comboBox1��5p      $��25��6.   $	��Top=�6:   $	��200��6R   $��0,97,0,0q�6^   {�.  5q   4   �� 5r      -   5        $" 	checkBox1��5r      $�� ��6.   $��20��69   {�.  $	��Top=�6W   $��
50,100,0,0q�6o   6�   �� 5s      -   5        $# 	comboBox2��5s      $��23��6.   $	��Top=�6:   $	��187��6R   $��	10,97,0,0q�6^   5t      5u      � 5v      $��635,200,101,420q�6   .+�5w      �� -   5        $" 	checkBox2��5w      $��20��6/   $
��Left=�6;   $��	21,16,0,0q�6V   $��30��6i   $	��Top=�6�   {�.  6�   �� 5x      -   5        $# 	comboBox3��5x      $
��Left=�6.   $��	51,10,0,0q�6I   $	��Top=�6\   $	��200��6t   $��16��6�   {�.  6�   5y      � 5z      $��-27,-110,27,10q�6   .+�5{      �� -   5        $ runQuery��5{      $��	Run Query��6B   #��[ 6V   $
��Left=�6�   $��1119,387,0,0q�6�   $	��Top=�6�   $��89��6�   $��31��6�   $ -0.045,0.387&�6�   �� 5|      -   5        $ 
clearQuery��5|      $��Clear query��6F   #��[ 6\   $
��Left=�6�   $��1119,432,0,0q�6�   $	��Top=�6�   $��89��6�   $��31��6�   $ -0.045,0.387&�6�   �� 5}      -   5        $ ��Name$$ textbox��5}      *  $MahApps.Metro.Controls.TextBoxHelper%   	Watermark$"% The Xpath Query goes in here��6+   $
��Left=�6k   $��85��6�   $��677,387,0,0q�6�   $
! Wrap=�6�   $	��Top=�6�   $	��409��6�   �� 5~      -   5        & ��Name$& 
textBlock1��5~      $
��Left=�60   $��714,236,0,0q�6K   $
��Wrap=�6`   $��Child node level 1��6t   $	��Top=�6�   $��98��6�   ���	#FF2A7FD46�   �� 5      -   5        $& textBlock1_Copy��5      $
��Left=�65   $��997,236,0,0q�6P   $
��Wrap=�6e   $��Child node level 2��6y   $	��Top=�6�   $��98��6�   ���	#FF2A7FD46�   �� 5�      -   5        $& textBlock1_Copy1��5�      $
��Left=�66   $��714,298,0,0q�6Q   $
��Wrap=�6f   $��Child node level 3��6z   $	��Top=�6�   $��98��6�   ���	#FF2A7FD46�   5�      �� 5�      -   5        $
 back��5�      #��[ 6#   $
��Back��6V   $
��Left=�6e   $��
686,47,0,0q�6�   $	��Top=�6�   $��75��6�   $��30��6�   �� 5�      -   5        $$ queryResult��5�      ��. $
��Auto=�6P   $
��Auto=�6�   $
��Left=�6�   $	��208��6�   $��655,418,0,0q�6�   $
! Wrap=�6�   $$% The query result shows up here��6  $	��Top=�6F  $	��406��6^  ' �� 
IsReadOnly' . 6j  5�      5�      5�      