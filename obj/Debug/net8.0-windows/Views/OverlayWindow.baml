   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListPlus.ViewsToDoListPlus.Views  5   	   A%clr-namespace:ToDoListPlus.ConvertersToDoListPlus.Converters  5   	   &     ToDoListPlus.Views.OverlayWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ToDoListPlus.Views     5   	   <
converters%clr-namespace:ToDoListPlus.Converters     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � Topmost$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ Manual=�5   	    � AllowsTransparency$
 True��5   	   
������  � ShowInTaskbar$ False��5   	     MaterialDesignFont#���  5   	    � Title$ OverlayWindow��5   	   $	��416��5   	   $	��320��5   	    � 	Resources 5        PriorityTextStyle	 �� 
TargetType
 �� Triggers �� Binding �� Value �� Property �� Value  	ColorTest �� Mode �� UpdateSourceTrigger��%  &	       &	 �    �� 5   
   "	 ��6*   
 5      �� 5       6   �� *
Importance+ high6=   .a�5      ��  � ��
 �  ��63   �� 5       � ��$
 Bold"�63   5       �� 5!       6   �� *
Importance+
 normal6=   .a�5"      ��  � ��
 �   �63   5#      �� 5$       6   �� *
Importance+ low6=   .a�5%      ��  � ��
 � � �63   5'      5)      �� 5*   
   "	 ��6"   
 5+      �� 5,       6   �� *Status+$ TwoWay=�$ PropertyChanged=� Complete6k   .a�5-      ��  � ��
 ����63   �� 5.       �@J�Opacity$	 0.9Q�60   5/      �� 50       6   �� *Status+$ TwoWay=�$ PropertyChanged=� 
InProgress6k   .a�51      ��  � ��
 ��ح�63   �� 52       �@J�Opacity$	 0.9Q�60   53      �� 54       6   �� *Status+$ TwoWay=�$ PropertyChanged=�
 Failed6k   .a�55      ��  � �� �#ed433763   �� 56       �@J�Opacity$	 0.9Q�60   58      5:      5;      .��5>      �� $��8q�6   $
��Auto=�6   .��5?   
   �� ��6   �� *
ToDoList+��5@      �� 5A      .R�5B      �� $��4q�6    �� Padding$ 10q�5C      #��[ 5D      ._�5E      �� .+�5H      �� $��SemiBold"�5I   $   
���   �$
��Wrap=�5K   $   $��14(�5L   $   ��5H   (   �� *Title+5L   $   �� 5O      $��Italic$�5P   $   
�������$��12(�5R   $   $��0,2,0,0q�5S   $   $
��Wrap=�5T   $   ��5O   (   �� *Description+5T   $   � 5X      $��0,6,0,0q�6#    � ColumnDefinitions 5Y   "   �� 5Z   &   $
��Auto �67   �� 5[   &   $��* �67   �� 5\   &   $
��Auto �67   .+�5_   "   �� $��0��5`   ,   $��12(�5a   ,   $��Center=�5b   ,   ��5_   ,   �� *
Importance+5b   ,   �� 5e   "   $�� ��6,   $��1��5f   ,   �� 5h   "   $��2��5i   ,   
���   �$��12(�5k   ,   $��Center=�5l   ,   ��5h   ,   �� *
TimeLeft+ �� StringFormat$ {0:%d}d {0:%h}h {0:%m}m��5l   ,   5m      5n      5o      5p      5r      5s      5u      