   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ToDoListPlusToDoListPlus  5   	   A%clr-namespace:ToDoListPlus.ConvertersToDoListPlus.Converters  5   	       ToDoListPlus.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ToDoListPlus     5   	   <
converters%clr-namespace:ToDoListPlus.Converters     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          � WindowStartupLocation$  CenterScreen=�5	   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ ToDoPlus��5   	   $	��640��6   $	��640��6'    � 	Resources 5        IconButtonStyle �� 
TargetType �� Property �� Value  MicrosoftButtonStyle3  -System.Windows.Media.Effects.DropShadowEffect   	Direction	   
BlurRadius
   Opacity   ShadowDepthA   ;ToDoListPlus.Converters.InverseBooleanToVisibilityConverter  InverseBoolToVis?   9ToDoListPlus.Converters.StringToVisibilityHiddenConverter % !StringToVisibilityHiddenConverterB   <ToDoListPlus.Converters.StringToVisibilityCollapsedConverter ( $StringToVisibilityCollapsedConverter  	BoolToVis 	 PriorityTextStyle �� Triggers �� Binding �� Value��%�  &	       &	     &	 f    &	 y    &	 �    &	 �    &		 �    �� 5   
   " ��6(   .�5      ��  � ��$ 24��6'   �� 5       � ��$ 24��6&   �� 5       � ��
 ���� 6+   �� 5       � ��$ 0q�60   �� 5       � ��$	 2,0q�6'   �� 5       �@�Cursor$
 Hand��6'   5      �� 5   
   " ��6-   .�5      ��  � ��$ 1q�60   �� 5        � �� �#DDD6,   �� 5!       � ��$ 8q�6'   �� 5"       �@�Cursor$
 Hand��6'   �� 5#       � ��
 �����6+   �� 5$       �@J�Effect 5%        5&      $
 -120Q�6'   $	 10Q�68   $	
 0.4Q�6H   $ 1Q�6V   5(      5)        5*   
   69     5+   
   67     5,   
   6:   �� 5-   
   6'   �� 5.   
   " ��6*    5/      �� 50       6   �� *
Importance+ high6=   .a�51      ��  � ��
 �  ��63   �� 52       � ��$
 Bold"�63   53      �� 54       6   �� *
Importance+
 normal6=   .a�55      ��  � ��
 �   �63   56      �� 57       6   �� *
Importance+ low6=   .a�58      ��  � ��
 � � �63   5:      5<      5=      .��5@      )  #MaterialDesignThemes.Wpf.DialogHost     
Identifier$ 
RootDialog��5A   	   '    DialogContentUniformCornerRadius$ 20Q�5B   	      DialogTheme$ Inherit=�5C   	   .��5D   
   �  � RowDefinitions 5F   
   �� 5G      $
��auto �6   �� 5H      $��* �6   .+�5L      �� $��0��6   ���#f6f6f6 �� Padding$ 8q�5N      ���#DDD$��0 0 0 1q�5P      ._�5Q      �  � ColumnDefinitions 5R      �� 5S      $��* �6+   �� 5T      $
��auto �6+   .+�5V      ��  �� Orientation$ 
Horizontal=�6!   $��Center=�5W   !   $
��Left=�5X   !   .+�5Y      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ AccountCircle=�62   $��24��5Z   2   $��24��5[   2   $��0,0,8,0q�5\   2   ���#5555]   2   �� 5^      $��Center=�5_   $   $��16(�5`   $   $��SemiBold"�5a   $   ���#333��5^   $   �� *!AuthorizationVM.AccountUsername+5b   $   5c      '  !MaterialDesignThemes.Wpf.PopupBox  5e      $��Center=�6.   $��Right=�5f      $��0,0,12,0q�5g      $��8q�5h         PlacementMode$ BottomAndAlignRightEdges=�5i         	StaysOpen$ False��5j      $��Account��5k         PopupContent. 5l      �� .+�5m      ��   
 MaterialDesignFlatDarkButton#��[
 6%   $��Settings��5n   %   ��5o   %   �� *OpenSettingsCommand+�� 5q      #��[
 6%   ��5r   %   �� * AuthorizationVM.SignOutCommand+.��5s   "   �� $ 
Horizontal=�6-   .+�5t   &     $ AccountSwitch=�6>   $��20��6S   $��20��6^   $��0,0,8,0q�6j   �� 5u   &   $��Sign out��60   $��Center=�6@   5v   #   5w      5x      5y      5{      5|      � 5      $��1��6   ���#F5F5F5.+�5�      �  5�      �� 5�      $��* �6(   �� 5�      $
��auto �6(   .+�5�      � $��0��6   $��8q�6(   .+�5�      �  5�      �� 5�   "   $
��Auto �60   �� 5�   "   $��* �60   .+�5�      � $��0��6#    5�   "   �� 5�   &   $
��0.8* �67   �� 5�   &   $
��0.2* �67   .+�5�   "   � $��0��6.    � Maximum$	 100Q�5�   .   $��32��5�   .   ���#66BB6A���#E0E0E0
������ $��0q�5�   .   $	��8,0q�5�   .    � Value 5�   .   �� *ToDoListVM.CompletedTasks+5�   .   �� 5�   "   $��0��6,   $��Center=�5�   ,   $��Center=�5�   ,   
���   �$��SemiBold"�5�   ,   $��16(�5�   ,   ��5�   ,   �� *ToDoListVM.CompletedTasks+ �� StringFormat$ {0:0}%��5�   ,   �� 5�   "   $	��8,0q�5�   )   $��1��5�   )    " MaterialDesignPaperLightButton#��[ 5�   )    � ToolTip$ Clear all completed tasks��5�   )   $��Clean Up��5�   *   ��5�   )   �� *ToDoListVM.CleanItemsCommand+��5�   )   �� *ToDoListVM.ToDoList+5�   #   5�      � 5�      $��1��6#   $��8q�5�   #   $��Stretch=�5�   #   .+�5�   "   &	   System.Windows.Controls.DataGrid	   	  AutoGenerateColumns$ False��5�   -    	  SelectionMode$ Single=�5�   -     	  SelectionUnit$  FullRow=�5�   -   ! 	  
IsReadOnly$
! True��5�   -   " 	  HeadersVisibility$" Column=�5�   -   # 	  GridLinesVisibility$
# None=�5�   -   $|�False��5�   -   ��5�   +   �� *ToDoListVM.ToDoList+ 5�   &   )
  #System.Windows.Controls.DataGridRow*  $System.Windows.Controls.DataGridCell$ P� Property% P� Value��%  '��       '
  J     '  b     �� 5�   *   " ��60   .�5�   .   ��  � ��
 �����6K   5�   +   �� 5�   *   " 
 60   �� 5�   *   "  60   .�5�   .   ��  � ��
 ���� 6K   �� 5�   .    � ��$ 0q�6P   �� 5�   .    � |�$ False��6J    5�   .   P� 5�   2   $ �@ 
IsSelected$
% True��6P   . �5�   6   ��  � ��
 ���� 6S   �� 5�   6    � ��
 �   �6S   5�   3   P� 5�   2   $ �@J�IsMouseOver$
% True��6Q   . �5�   6   ��  � ��
 ���� 6S   5�   3   5�   +   5�   '   & 	  RowStyle& 5�   &   �� 5�   *   " 
 60   .�5�   .   ��  � ��
 �����6L   �� 5�   .    � ��$ 0,0,0,1q�6P   �� 5�   .    � ��
 ��ح�6K   �� 5�   .    � ��
 �   �6K   �� 5�   .    � |�$ False��6J    5�   .   �� 5�   2    6>   �� *
IsComplete+' �� Mode$' TwoWay=�( �� UpdateSourceTrigger$( PropertyChanged=� True6�   .a�5�   6   ��  � ��
 ����6S   5�   3   5�   +   ) 	  Columns) 5�   &   4  .System.Windows.Controls.DataGridTemplateColumn  5�   *   ,  &System.Windows.Controls.DataGridColumn*   Header$
* Done��6A   +   Width5  /System.Windows.Controls.DataGridLengthConverter$
+ Auto 6O   ,   SortMemberPath$, 
IsComplete��6\   -   CellTemplate- 5�   .   �� 5�   2   .R�5�   6   �� $��Center=�5�   ?   $��Center=�5�   ?   . d� 	IsChecked. 5�   ?   �� *
IsComplete+$' TwoWay=�$( PropertyChanged=�5�   ?   5�   3   5�   +     5�   *   $
* Task��6A   $+ * 5�   A   - 5�   .   �� 5�   2   .R�5�   6   �� $��4q�6A   .+�5�   :   �  5�   >   �� 5�   B   $
��Auto �6S   �� 5�   B   $��* �6S   .+�5�   >     $ CalendarCheck=�5�   A   $��0��5�   A   $��0,2,4,0q�5�   A   $��Center=�5   A   $ Microsoft Event��5  A   y�5  A   �� *	EventId+/ �� 	Converter#/ [ �� 5  >   $��1��5  A   $
��Wrap=�5  A   $��Center=�5	  A   $��0q�5
  A    $  MaterialDesignSubtitle2TextBlock#��[ 5  A   ��5  A   �� *Title+5  A   5  ;   �� 5  :   $
��Wrap=�5  =   $	��Top=�5  =   $��20,2,0,0q�5  =    " MaterialDesignCaptionTextBlock#��[ 5  =   ��5  =   �� *Description+y�5  =   �� *Description+#/ [ 5  =   5  7   5  3   5  +     5  *   $* Priority��6A   $
+ Auto 6S   $, prioritySortOrder��6`   - 5  .   �� 5  2   .R�5  6   �� $��Center=�5   @   $��Center=�5!  @   #��[	 5"  @   ��5  @   �� *
Importance+5#  7   5$  3   5&  +     5(  *   $* Due Date��6A   $
+ Auto 6S   $, DueDate��6`   - 5)  .   �� 5*  2   .R�5+  6   �� #��[ 5,  A   $��Center=�5-  A   $��Center=�5.  A   ��5+  @   �� *	DueDate+$ {0:dd-MM-yyyy}��5.  A   5/  3   51  +     53  *   $
+ Auto 6A   - 54  .   �� 55  2   .R�56  6   �� #��[ 58  =   ��56  =   �� **(DataContext.ToDoListVM.RemoveItemCommand+0 �� RelativeSource0 �� 1 �� AncestorType1 DataGrid��57  =   �� .��5:  :     $ DeleteOutline=�6R   $��24��5;  R   $��24��5<  R   5=  7   5>  3   5@  +   5B  #   5D     5E     5F     �� 5H     $��1��6   ���#FAFAFA$��1,1,0,0q�5J     ���#DDD2 �� CornerRadius$2 	12,12,0,0��5L     $	 8 4q�5M     ._�5N     �� #��[ 5O  !   $	��0 8q�5P  !   $
��10 6q�5Q  !   $��Center=�5R  !   $ Add new task��5S  !   ��5N  !   �� *NewTaskCommand+.��5T     �� $ 
Horizontal=�6)   .+�5U  "     $
 Plus=�6:   $��18��6F   $��18��6Q   $��0 0 6 0q�6]   �� 5V  "   $��Add New Task��6,   $��Center=�6@   5W     5X     5Y     5Z     5[     5\     5]     5^     