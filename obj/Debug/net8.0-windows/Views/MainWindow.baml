   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ToDoListPlusToDoListPlus  5   	   A%clr-namespace:ToDoListPlus.ConvertersToDoListPlus.Converters  5   	       ToDoListPlus.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ToDoListPlus     5   	   <
converters%clr-namespace:ToDoListPlus.Converters     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          � WindowStartupLocation$  CenterScreen=�5	   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ ToDoPlus��5   	   $	��640��6   $	��640��6'    � 	Resources 5        IconButtonStyle �� 
TargetType  MaterialDesignFlatButton �� BasedOn �� Property �� Value	 �� Triggers
 P� Property P� Value  MicrosoftButtonStyle3  -System.Windows.Media.Effects.DropShadowEffect   	Direction   
BlurRadius   Opacity   ShadowDepthA   ;ToDoListPlus.Converters.InverseBooleanToVisibilityConverter  InverseBoolToVis?   9ToDoListPlus.Converters.StringToVisibilityHiddenConverter % !StringToVisibilityHiddenConverterB   <ToDoListPlus.Converters.StringToVisibilityCollapsedConverter ( $StringToVisibilityCollapsedConverter 	 	BoolToVis 
 TitleTextStyle �� Binding �� Value��%�  &	       7  &	 v    &	 �    &	 �    &	 �    &		     &	
 !    �� 5   
   " ��6(   8   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 32��6'   �� 5       � ��$ 32��6&   �� 5       � ��$ 0q�6(   �� 5       � ��$ 0,0,4,0q�6'   	 5      P� 5      
 � {�$ False��6/   . �5      ��  � ��
 ���� 63   �� 5       �@J�Opacity$	 0.5Q�60   5       5"      �� 5#   
   " ��6-   .�5$      ��  � ��$ 1q�60   �� 5%       � �� �#DDD6,   �� 5&       � ��$ 8q�6'   �� 5'       �@�Cursor$
 Hand��6'   �� 5(       � ��
 �����6+   �� 5)       �@J�Effect 5*        5+      $
 -120Q�6'   $ 10Q�68   $	 0.4Q�6H   $ 1Q�6V   5-      5.        5/   
   69     50   
   67     51   
   6:   �� 52   
   6'   �� 53   
   " ��6'   	 54      �� 55       6   �� *Status+ Complete69   .a�56      ��  � ��
 �   �63   57      �� 58       6   �� *Status+ 
InProgress69   .a�59      ��  � ��
 �   �63   5:      �� 5;       6   �� *Status+
 Failed69   .a�5<      ��  � ��
 �����63   5>      5@      5A      .��5D   
   )  #MaterialDesignThemes.Wpf.DialogHost     
Identifier$ 
RootDialog��5E      '    DialogContentUniformCornerRadius$ 20Q�5F         DialogTheme$ Inherit=�5G      .��5H   
   �  � RowDefinitions 5J      �� 5K      $
��auto �6    �� 5L      $��* �6    .+�5P      �� $��0��6   ���#f6f6f6 �� Padding$ 8q�5R      ���#DDD$��0 0 0 1q�5T      ._�5U      �  � ColumnDefinitions 5V      �� 5W      $��* �6+   �� 5X      $
��auto �6+   .+�5Z      ��  �� Orientation$ 
Horizontal=�6!   $��Center=�5[   !   $
��Left=�5\   !   .+�5]      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ AccountCircle=�62   $��24��5^   2   $��24��5_   2   $��0,0,8,0q�5`   2   ���#5555a   2   �� 5b      $��Center=�5c   $   $��16(�5d   $   $��SemiBold"�5e   $   ���#333��5b   $   �� *!AuthorizationVM.AccountUsername+5f   $   5g      '  !MaterialDesignThemes.Wpf.PopupBox  5i      $��Center=�6.   $��Right=�5j      $��0,0,12,0q�5k      $��8q�5l         PlacementMode$ BottomAndAlignRightEdges=�5m         	StaysOpen$ False��5n      $��Account��5o         PopupContent. 5p      �� .+�5q      ��    MaterialDesignFlatDarkButton#��[ 6%   $��Settings��5r   %   ��5s   %   �� *OpenSettingsCommand+�� 5u      #��[ 6%   ��5v   %   �� * AuthorizationVM.SignOutCommand+.��5w   "   �� $ 
Horizontal=�6-   .+�5x   &     $ AccountSwitch=�6>   $��20��6S   $��20��6^   $��0,0,8,0q�6j   �� 5y   &   $��Sign out��60   $��Center=�6@   5z   #   5{      5|      5}      5      5�      � 5�      $��1��6   ���#F5F5F5.+�5�      �  5�      �� 5�      $��* �6(   �� 5�      $
��auto �6(   .+�5�      � $��0��6   $��8q�6(   .+�5�      �  5�      �� 5�   "   $
��Auto �60   �� 5�   "   $��* �60   .+�5�      � $��0��6#    5�   "   �� 5�   &   $
��0.8* �67   �� 5�   &   $
��0.2* �67   .+�5�   "   � $��0��6.    � Maximum$	 100Q�5�   .   $��32��5�   .   ���#66BB6A���#E0E0E0
������ $��0q�5�   .   $	��8,0q�5�   .    � Value 5�   .   �� *ToDoListVM.CompletedTasks+5�   .   �� 5�   "   $��0��6,   $��Center=�5�   ,   $��Center=�5�   ,   
���   �$��SemiBold"�5�   ,   $��16(�5�   ,   ��5�   ,   �� *ToDoListVM.CompletedTasks+ �� StringFormat$ {0:0}%��5�   ,   �� 5�   "   $	��8,0q�5�   )   $��1��5�   )    " MaterialDesignPaperLightButton#��[ 5�   )     � ToolTip$  Clear all completed tasks��5�   )   $��Clean Up��5�   )   ��5�   )   �� *ToDoListVM.CleanUpCommand+��5�   )   �� *ToDoListVM.ToDoList+5�   #   5�      � 5�      $��1��6#   $��8q�5�   #   $��Stretch=�5�   #   .+�5�   "   &	   System.Windows.Controls.DataGrid	  ! 	  AutoGenerateColumns$! False��5�   -   " 	  SelectionMode$" Single=�5�   -   # 	  SelectionUnit$# FullRow=�5�   -   $ 	  
IsReadOnly$
$ True��5�   -   % 	  HeadersVisibility$% Column=�5�   -   & 	  GridLinesVisibility$
& None=�5�   -   $|�False��5�   -   ��5�   +   �� *ToDoListVM.ToDoList+ 5�   &   *
  $System.Windows.Controls.DataGridCell��%�  '��       '
  J     �� 5�   *   " ��60   .�5�   .   ��  � ��
 �����6K   5�   +   �� 5�   *   " 
 60   .�5�   .   ��  � ��
 ���� 6K   �� 5�   .    � ��$ 0q�6P   �� 5�   .    � |�$ False��6J   	 5�   .   P� 5�   2   
 �@
 
IsSelected$
 True��6P   . �5�   6   ��  � ��
 ���� 6S   �� 5�   6    � ��
 �   �6S   5�   3   P� 5�   2   
 �@J�IsMouseOver$
 True��6Q   . �5�   6   ��  � ��
 ���� 6S   5�   3   5�   +   5�   '   ' 	  RowStyle' 5�   &   �� 5�   *   )  #System.Windows.Controls.DataGridRow"  60   .�5�   .   ��  � ��
 �����6L   �� 5�   .    � ��$ 0,0,0,1q�6P   �� 5�   .    � ��
 ��ح�6K   �� 5�   .    � |�$ False��6J   	 5�   .   �� 5�   2    6>   �� *Status+( �� Mode$( TwoWay=�) �� UpdateSourceTrigger$) PropertyChanged=� Complete6�   .a�5�   6   ��  � ��
 ����6S   5�   3   �� 5�   2    6>   �� *Status+
 Failed6Y   .a�5�   6   ��  � {�$ False��6R   �� 5�   6    � �� �#ed43376S   �� 5�   6    �@J�Opacity$	 0.8Q�6P   5�   2   5�   +   * 	  Columns* 5�   &   4  .System.Windows.Controls.DataGridTemplateColumn  5�   *   ,  &System.Windows.Controls.DataGridColumn+   Header$
+ Done��6A   ,   Width5  /System.Windows.Controls.DataGridLengthConverter$
, Auto 6O   -   SortMemberPath$- 
IsComplete��6\   .   CellTemplate. 5�   .   �� 5�   2   .R�5�   6   �� $��Center=�5�   ?   $��Center=�5�   ?   / d� 	IsChecked/ 5�   ?   �� *
IsComplete+$( TwoWay=�$) PropertyChanged=�5�   ?   5�   3   5�   +     5�   *   $
+ Task��6A   $, * 5�   A   . 5�   .   �� 5�   2   .R�5�   6   �� $��4q�6A   .+�5�   :   �  5�   >   �� 5�   B   $
��Auto �6S   �� 5�   B   $��* �6S   .+�5  >     $ CalendarCheck=�5  A   $��0��5  A   $��0,2,4,0q�5  A   $��Center=�5  A   $  Microsoft Event��5  A   y�5	  A   �� *	EventId+0 �� 	Converter#0 [ �� 5  >   $��1��5  A   $
��Wrap=�5  A   $��Center=�5  A   $��SemiBold"�5  A   $��0q�5  A   #��[
 5  A   ��5  A   �� *Title+5  A   5  ;   �� 5  :   $
��Wrap=�5  =   $	��Top=�5  =   $��Italic$�5  =   
�������$��20,2,0,0q�5  =    " MaterialDesignCaptionTextBlock#��[ 5  =   ��5  =   �� *Description+y�5  =   �� *Description+#0 [ 5  =   5   7   5"  3   5$  +     5&  *   $+ Priority��6A   $
, Auto 6S   $- prioritySortOrder��6`   . 5'  .   �� 5(  2   .R�5)  6   �� $��Center=�5*  @   $��Center=�5+  @   #��[
 5,  @   ��5)  @   �� *
Importance+5.  7   5/  3   51  +     53  *   $+ Due Date��6A   $
, Auto 6S   $- DueDate��6`   . 54  .   �� 55  2   .R�56  6   �� #��[
 57  @   $��Center=�58  @   $��Center=�59  @   ��56  @   �� *	DueDate+$ {0:dd-MM-yyyy}��59  @   5:  3   5<  +     5>  *   $+  ��6A   $
, Auto 6K   1   MinWidth$1 36Q�6X   . 5?  .   �� 5@  2   .R�5A  6   �� #��[ 5C  =   ��5A  =   �� **(DataContext.ToDoListVM.RemoveTaskCommand+2 �� RelativeSource2 �� 3 �� AncestorType3 DataGrid��5B  =   �� .��5D  :     $ DeleteOutline=�6R   $��24��6g   $��24��6r   5E  7   5F  3   5H  +   5J  #   5L     5M     5N     �� 5P     $��1��6   ���#FAFAFA$��1,1,0,0q�5R     ���#DDD4 �� CornerRadius$4 	12,12,0,0��5T     $	 8 4q�5U     ._�5V     �� #��[ 5W  !   $	��0 8q�5X  !   $
��10 6q�5Y  !   $��Center=�5Z  !   $  Add new task��5[  !   ��5V  !   �� *NewTaskCommand+.��5\     �� $ 
Horizontal=�6)   .+�5]  "     $
 Plus=�6:   $��18��6F   $��18��6Q   $��0 0 6 0q�6]   �� 5^  "   $��Add New Task��6,   $��Center=�6@   5_     5`     5a     5b     5c     5d     5e     5f     