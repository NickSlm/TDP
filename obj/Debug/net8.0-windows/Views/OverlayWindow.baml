   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListPlus.ViewsToDoListPlus.Views  5   	   &     ToDoListPlus.Views.OverlayWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ToDoListPlus.Views     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � Topmost$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ Manual=�5   	    � AllowsTransparency$
 True��5   	    � ShowInTaskbar$ False��5   	     MaterialDesignFont#���  5   	    � Title$ OverlayWindow��5   	   $	��416��5   	   $	��320��5   	    � 	Resources 5        PriorityTextStyle	 �� 
TargetType
 �� Triggers �� Binding �� Value �� Property �� Value��%�  &	       �� 5   
   "	 ��6*   
 5      �� 5       6   �� *
Importance+ high6=   .a�5      ��  � ��
 �  ��63   �� 5       � ��$
 Bold"�63   5      �� 5       6   �� *
Importance+
 normal6=   .a�5       ��  � ��
 �   �63   5!      �� 5"       6   �� *
Importance+ low6=   .a�5#      ��  � ��
 � � �63   5%      5'      5(      ��5)      �� 5*   
    �� Opacity$	 0.1Q�6    �� Color$ 	#CCFFFFFF��6(   .��5-      �� $��8q�6   $
��Auto=�6   .��5.   
   �� ��6   �� *
ToDoList+��5/      �� 50      .R�51      �� $��4q�6    �� Padding$ 10q�52      
������� �� CornerRadius$ 12��54      ._�56      �� .+�58      �� $��SemiBold"�59   $   
���   �$
��Wrap=�5;   $   $��14(�5<   $   ��58   (   �� *Title+5<   $   �� 5?      $��Italic$�5@   $   
�������$��12(�5B   $   $��0,2,0,0q�5C   $   $
��Wrap=�5D   $   ��5?   (   �� *Description+5D   $   � 5H      $��0,6,0,0q�6#    � ColumnDefinitions 5I   "   �� 5J   &   $
��Auto �67   �� 5K   &   $��* �67   �� 5L   &   $
��Auto �67   .+�5O   "   �� $��0��5P   ,   $��12(�5Q   ,   $��Center=�5R   ,   #��[ 5S   ,   ��5O   ,   �� *
Importance+5S   ,   �� 5U   "   $�� ��6,   $��1��5V   ,   �� 5X   "   $��2��5Y   ,   
���iii�$��12(�5[   ,   $��Center=�5\   ,   ��5X   ,   �� *	DueDate+ �� StringFormat$ {0:dd-MM-yyyy}��5\   ,   5]      5^      5_      5`      5b      5c      5e      