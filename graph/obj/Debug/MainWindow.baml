   M S B A M L   `   `   `  ����	  graph    graph.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  
MainWindow��5   	   $	��600��5   	   $	��800��5	   	    � 
ResizeMode$ NoResize=�5
   	    � Topmost .  � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 	Resources 5         tb_mouse_over �� ImageSource  
font_style �� 
TargetType �� Property	 �� Value  tt_style  CloseBtn_MouseOver  	Close_btn
 �� 
TargetType ��Name J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName  tb_style��%�  &	        &	 8     &	 H    &	 �    &	     7  &	 ^    7   7   7   7   �� 5   
   $  Assets/tgBtn_MouseOver.png��5      �� 5   
   " ��6#   .�5      ��  � ��$$	 Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$	 Center=�5      �� 5        � ��$
	 Left=�5!      �� 5#       � ��
	 �����5$      �� 5&       � ��$	 20(�5'      5)      �� 5-   
   " _�6   .�5/      ��  �@_�	Placement$	 Right=�6*   �� 50       � ��$	 40��6'   �� 51       � ��$		 100��6&   �� 52       � ��$	 20,0,0,0q�6'   �� 53       � ��	 �#4A56686+   �� 54       � ��
	 ���� 6,   �� 55       � ��
	 �����6+   �� 56       � ��$$	 Fonts/Roboto-Light.ttf #Roboto)�6+   �� 57       � ��$	 16(�6)   �� 58       �@_�PlacementRectangle$	 60,0,0,0�63   �� 59       �@_�HorizontalOffset$	 15��61   �� 5:       �@_�VerticalOffset$	 6��6/   �� 5;       �@_�HasDropShadow	 . 6.   �� 5<       � ��$	 Center=�6;   5>      �� 5B   
   $# Assets/closeBtn_MouseOver.png��60   �� 5D   
   " ��6"   .�5F      ��  � ��	 5H      �� 5J      "
 ��6&   .R�5L      �� $ button��6!   $��0q�5M   !   #��z��5N   !    . 5Q       5S      P� 5U       �@J�IsMouseOver . . �5X   "   �� $ button��5Y   )   8	    � ��5Z   )   5\      5`      5d      5f      �� 5k   
   " d�6!   .�5m      ��  � ��	 5o      �� 5q      "
 d�6&   .R�5s      �� $ border��6"   #��z��5t   "   #��z��5u   "    . 5x       5z      P� 5|       �@J�IsMouseOver . . �5~   "   �� $ border��5   )   8	    � ��5�   )   �� 5�   "   $ border��5�   )   8	   � ��5�   )   5�      P� 5�       �@d�	IsChecked$
 trueY�6;   . �5�   "   �� $ border��5�   )   8	   � ��5�   )   �� 5�   "   $ border��5�   )   8	   � ��5�   )   5�      5�      5�      5�      5�      .��5�      � .+�5�   
   � 
���   �.+�5�      � -   5         �Name$ BG��5�      .+�5�      �� -   5         ��Name$ myCanvas��5�      $	��400��6+   $	��400��68   $��160,60,311,0q�6E   ��5�      �� 5�      -   5        
img_bg��$ Assets/img_background.png��5�   !    j� Stretch$
 Fill=�5�   !   5�      5�      � 5�       � ColumnDefinitions 5�      �� 5�      $��* �6'   �� 5�      $��60 �6'   �� 5�      $��30 �6'    � RowDefinitions 5�      �� 5�      $��30 �6$   �� 5�      $��60 �6$   �� 5�      $��* �6$   .+�5�      �� -   5         ��Name$ CloseBtn��5�      $��1��5�      $��1��5�      $��40��5�      $��40��5�      $��0q�5�      #��[ 5�      ��5�      �� 5�      $! Assets/closeBtn_default.png��6%   5�      5�      � 5�      -   5        $ nav_pnl��5�      $
��Left=�5�      $��65��5�      ���#2E333A.+�5�      �� -   5         ��Name$ st_pnl��5�      .+�5�      � $��90��6   .+�5�      �� $��1��6%   $��0��5�   %   $��
73,-20,0,0q�5�   %   $��M E N U��5�   %   
�������$��22(�5�   %   
������ $
��Left=�5�   %   $��Center=�5�   %   #��[ 5�   %    J� Effect 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�   "      
BlurRadius$ 10Q�64      ShadowDepth$ 1Q�5�   4      	Direction$	 -90Q�5�   4      Color$ White��5�   4   5�      d� 5     -   5         d�Name$ Tg_Btn��5  '   $��0��5  '   $��Center=�5  '   $
��Left=�5  '   $��
18,-20,0,0q�5  '   $��30��5  '   $��30��5  '   $��0q�5  '   #��[ 5	  '   ��5     �� 5  "   $ Assets/tgBtn_default.png��6-   $
 None=�5  -    � Triggers 5     :� 5  "    :� RoutedEvent$ ToggleButton.Unchecked��6/   .[�5  &   �� .��5  *   �� -   5          ��Name$  HideStackPanel��5  5   .��5  .   W� ! �� 
TargetName$! nav_pnl��5   1   " �� TargetProperty$" Width�5!  1   # g� 	BeginTime$# 0:0:0X�5"  1   $ W� From$	$ 230X�5#  1   	% W� To$% 65X�6<   & g� Duration$& 0:0:0.2D�5$  1   5&  /   5(  +   5*  '   5,  #   :� 5.  "   $ ToggleButton.Checked��6/   .[�50  &   �� .��52  *   �� -	   5        $  ShowStackPanel��52  5   .��54  .   W� $! nav_pnl��56  1   $" Width�57  1   $# 0:0:0X�58  1   $$ 65X�59  1   $	% 230X�6;   $& 0:0:0.3D�5:  1   5<  /   5>  +   5@  '   5B  #   5G     5I     �� 5M     -
   5        ' ��Name$' LV��5M      
������ 
������ $��Disabled=�5P      .@�5T     �� -   5        $
��Left=�5T  '   $��0,0,0,15q�5U  '   .��5X     �� ( �� Orientation$( 
Horizontal=�6)   $	��230��5Y  )   .+�5[  "   �� -   5        $��Assets/img_home.png��5[  (   $
��None=�5\  (   $��12,0,0,0q�5]  (   $��44��6:   5^  ,   �� 5`  "   $
��Home��6,   $��25,0,0,0q�5a  ,   #��[ 5b  ,   5d     ) � ToolTip) 5h     _� 5j  "   -   5        * _�Name$* tt_home��5j  *   $
��Home��5k  *   #��[ 5l  *   5p     �� 5u     -   5        $
��Left=�5u  '   $��0,0,0,15q�5v  '   .��5y     �� $( 
Horizontal=�6)   $	��230��5z  )   .+�5|  "   �� -   5        $��Assets/img_newGame.png��5|  (   $
��None=�5}  (   $��12,0,0,0q�5~  (   $��44��6:   5  (   �� 5�  "   $��New Game��6,   $��25,0,0,0q�5�  ,   #��[ 5�  ,   5�     ) 5�     _� 5�  "   -   5        $* 
tt_newGame��5�  *   $��New Game��5�  *   #��[ 5�  *   5�     �� 5�     -   5        $
��Left=�5�  '   $��	25,0,0,15q�5�  '   .��5�     �� $( Vertical=�6)   $	��230��6@   .+�5�  "   	� -   5        $��bg��5�  .   + 	� 	GroupName$	+ lvl��69   , d� 	IsChecked$
, TrueY�6I   
����+��.��5�  &   �� $��Beginner��60   $��25,0,0,0q�5�  ,   #��[ 5�  ,   5�  #   	� 5�  "   -   5        $��hd��5�  .   $	+ lvl��69   
����+��.��5�  &   �� $
��Hard��60   $��25,0,0,0q�5�  ,   #��[ 5�  ,   5�  #   5�     ) 5�     _� 5�  "   -   5        $* tt_lvl��5�  *   $��
Level Game��5�  *   #��[ 5�  *   5�     �� 5�     -   5        $
��Left=�5�  '   $��0,0,0,15q�5�  '   .��5�     �� $( 
Horizontal=�6)   $	��230��5�  )   .+�5�  "   �� -   5        $��Assets/img_Music.png��5�  (   $
��None=�5�  (   $��12,0,0,0q�5�  (   $��50��6:   $��40��6F   - J� RenderTransformOrigin$- 0.619,-0.555&�5�  I   �� 5�  "   $��Music��6,   $��25,0,0,0q�5�  ,   #��[ 5�  ,   5�     ) 5�     _� 5�  "   -   5        $* tt_Music��5�  *   $��Music��5�  *   #��[ 5�  *   5�     �� 5�     -   5        $
��Left=�5�  '   $��0,0,0,15q�5�  '   .��5�     �� $( 
Horizontal=�6)   $	��230��5�  )   .+�5�  "   �� $��Assets/timer.png��6(   $
��None=�5�  (   $��12,0,0,0q�5�  (   $��50��6:   $��40��6F   $- 0.619,-0.555&�5�  -   5�     5�     �� 5�     -   5        $
��Left=�5�  '   $��0,0,0,15q�5�  '   .��5�     �� $( 
Horizontal=�6)   $	��230��5�  )   .+�5�  "   �� -   5        $��temps��5�  ,   $��4,0,0,0q�5�  ,   #��[ 5�  ,   5�     ) 5�     _� 5�  "   -   5        $* tt_temps��5�  *   $��Timer��5�  *   #��[ 5�  *   5�     ��5     �� 5     " ��6$   .�5  "   ��  � ��	 5  &   �� 5
  *   "
 ��6:   .R�5  .   �� $ Bd��65   $��50��5  5   #��z��5  5   #��z��5  5   #��z��5  5   . �� Padding#. z��5  5    . ._�5  2   �� #��z��6C   # z 5  C   #��z��5  C   5  /    5  .   ]� 5  2   / ]� 
Conditions/ 5  6   �� 5   :   0 �� Property0 �@J�IsMouseOver1 �� Value1 . 6[   ./�5$  6   �� $ Bd��5%  =    � ��	 �#404D5B5&  =   �� 5(  6   $ Bd��5)  =    � ��	 �#404D5B5*  =   5,  3   50  +   54  #   56     5:     5<     5?     5@     5A     5D     