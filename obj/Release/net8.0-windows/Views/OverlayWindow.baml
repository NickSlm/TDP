   M S B A M L   `   `   `  ���� G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListPlus.ViewsToDoListPlus.Views  A%clr-namespace:ToDoListPlus.ConvertersToDoListPlus.Converters  &     ToDoListPlus.Views.OverlayWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:ToDoListPlus.Views     <
converters%clr-namespace:ToDoListPlus.Converters     _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=� � Topmost$
 True�� � WindowStyle$
 None=� � WindowStartupLocation$ Manual=� � AllowsTransparency$
 True��
������  � ShowInTaskbar$ False��  MaterialDesignFont#���   � Title$ OverlayWindow��$	��416��$	��320�� � 	Resources   PriorityTextStyle	 �� 
TargetType
 �� Triggers �� Binding �� Value �� Property �� Value  	ColorTest �� Mode �� UpdateSourceTrigger �� RelativeSource �� AncestorType  TitleTextStyle��%  &	       &	 �     &	     �� "	 ��
 ��  �� *
Importance+ high.a���  � ��
 �  ����  � ��$
 Bold"���  �� *
Importance+
 normal.a���  � ��
 �   ���  �� *
Importance+ low.a���  � ��
 � � ��� "	 ��
 ��  �� *Status+$ TwoWay=�$ PropertyChanged=� Complete.a���  � �� �� * DataContext.CompletedTaskColor+ �� 
 Window��  �@J�Opacity$	 0.9Q���  �� *Status+$ TwoWay=�$ PropertyChanged=� 
InProgress.a���  � �� �� *!DataContext.InProgressTaskColor+ �� 
 Window��  �@J�Opacity$	 0.9Q���  �� *Status+$ TwoWay=�$ PropertyChanged=�
 Failed.a���  � �� �� *DataContext.FailedTaskColor+ �� 
 Window��  �@J�Opacity$	 0.9Q��� "	 ��
 ��  �� *Status+ Complete.a���  � ��
 �   ���  �� *Status+ 
InProgress.a���  � ��
 �   ���  �� *Status+
 Failed.a���  � ��
 �����.���� $��8q�$
��Auto=�.���� ���� *
ToDoList+���� .R��� $��4q� �� Padding$ 10q�#��[ ._��� .+��� $��SemiBold"�$
��Wrap=�$��14(�#��[ ���� *Title+�� $��Italic$�
�������$��12(�$��0,2,0,0q�$
��Wrap=����� *Description+� $��0,6,0,0q� � ColumnDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��12(�$��Center=�#��[ ���� *
Importance+�� $�� ��$��1���� $��2��
���   �$��12(�$��Center=�#��[ ���� *
TimeLeft+ �� StringFormat$ {0:%d}d {0:%h}h {0:%m}m��