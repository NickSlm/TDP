   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ToDoListPlusToDoListPlus  5   	   A%clr-namespace:ToDoListPlus.ConvertersToDoListPlus.Converters  5   	       ToDoListPlus.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ToDoListPlus     5   	   <
converters%clr-namespace:ToDoListPlus.Converters     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	     � WindowStartupLocation$  CenterScreen=�5	   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ ToDoPlus��5   	   $	��608��6   $	��504��6'    � 	Resources 5        IconButtonStyle �� 
TargetType �� Property �� Value  MicrosoftButtonStyle3  -System.Windows.Media.Effects.DropShadowEffect   	Direction	   
BlurRadius
   Opacity   ShadowDepthA   ;ToDoListPlus.Converters.InverseBooleanToVisibilityConverter  InverseBoolToVis  	BoolToVis��%�  &	       &	     &	 i    &	 |    �� 5   
   " ��6(   .�5      ��  � ��$ 24��6'   �� 5       � ��$ 24��6&   �� 5       � ��
 ���� 6+   �� 5       � ��$ 0q�60   �� 5       � ��$	 2,0q�6'   �� 5       �@�Cursor$
 Hand��6'   5      �� 5   
   " ��6-   .�5      ��  � ��$ 0q�60   �� 5       � ��$ 8q�6'   �� 5        �@�Cursor$
 Hand��6'   �� 5!       � �� �#2D89EF6+   �� 5"       � ��
 �����6+   �� 5#       �@J�Effect 5$        5%      $
 -120Q�6'   $	 10Q�68   $	
 0.4Q�6H   $ 1Q�6V   5'      5(        5)   
   69   �� 5*   
   6'   5,      .��5/      )  #MaterialDesignThemes.Wpf.DialogHost  '    DialogContentUniformCornerRadius$ 20Q�50   	      DialogTheme$ Inherit=�51   	   .��52   
   �  � RowDefinitions 54   
   �� 55      $
��auto �6   �� 56      $��* �6   .+�5:      �� $��0��6   ���#f6f6f6 �� Padding$ 8q�5<      ���#DDD$��0 0 0 1q�5>      ._�5?      �  � ColumnDefinitions 5@      �� 5A      $��* �6+   �� 5B      $
��auto �6+   .+�5D      �� $��0��6    $��Center=�5F       $��16(�5G       $��SemiBold"�5H       ���#333$��12 0 0 0q�5J       ��5E       �� *!AuthorizationVM.AccountUsername+5J       �� 5M       �� Orientation$ 
Horizontal=�6!   $��1��6:   $��Center=�6J   .+�5N      �� #��[ 5P   !   y�5N   !   �� *AuthorizationVM.IsSignedIn+ �� 	Converter# [ ��5O   !   �� *&$AuthorizationVM.AuthorizationCommand+.��5Q      �� $ 
Horizontal=�6)   $��2q�6B   .+�5R   "   �� $=��7D:\Projects\ToDoListPlus\Assets\Icons\microsoftIcon.png��6(   �� 5S   "   $��Center=�6,   $��2q�5T   ,   $��Center=�5U   ,   $��Sign in with Microsoft��5V   ,   5W      5Y      �� 5Z      #��[ 5\   !   y�5Z   !   �� *AuthorizationVM.IsSignedIn+# [ ��5[   !   �� * AuthorizationVM.SignOutCommand+.��5]      �� $ 
Horizontal=�6)   $��2q�6B   .+�5^   "   �� $=��7D:\Projects\ToDoListPlus\Assets\Icons\microsoftIcon.png��6(   �� 5_   "   $��Center=�6,   $��2q�5`   ,   $��Center=�5a   ,   $��Sign out��5b   ,   5c      5d      5e      5f      5g      � 5j      $��1��6   ���#F5F5F5.+�5k      �  5l      �� 5m      $��* �6(   �� 5n      $
��auto �6(   .+�5r      � $��0��6   $��8q�6(   .+�5s      �  5t      �� 5u   "   $
��Auto �60   �� 5v   "   $��* �60   .+�5z      � $��0��6#    5{   "   �� 5|   &   $
��0.8* �67   �� 5}   &   $
��0.2* �67   .+�5   "   � $��0��6.    � Maximum$	 100Q�5�   .   $��32��5�   .   ���#66BB6A���#E0E0E0
������ $��0q�5�   .   $	��8,0q�5�   .    � Value 5�   .   �� *ToDoListVM.CompletedTasks+5�   .   �� 5�   "   $��0��6,   $��Center=�5�   ,   $��Center=�5�   ,   
���   �$��SemiBold"�5�   ,   $��16(�5�   ,   ��5�   ,   �� *ToDoListVM.CompletedTasks+ �� StringFormat$ {0:0}%��5�   ,   �� 5�   "   $	��8,0q�5�   %   $��1��5�   %   $��Clear��5�   %    " MaterialDesignPaperLightButton#��[ 5�   %    � ToolTip$4 .Resource  name: MaterialDesignPaperLightButton��5�   %   ��5�   %   �� *ToDoListVM.CleanItemsCommand+��5�   %   �� *ToDoListVM.ToDoList+5�   %   5�      � 5�      $��1��6#   $��8q�60   .+�5�   "   �� $��Stretch=�5�   *   ��5�   *   �� *ToDoListVM.ToDoList+��5�   &   �� 5�   *   " ��60     MaterialDesignListBoxItem �� BasedOn# [ 6I   �5�   .   �� 5�   2    � ��
 ���� 6O   �� 5�   2   0  *MaterialDesignThemes.Wpf.ListBoxItemAssist �@ ShowSelection$ False��6s    �� Triggers 5�   .   �� 5�   2    �� Binding 6>   �� *
IsComplete+ �� Value True6]   .a�5�   6   ��  � �� �#C8E6C96S   �� 5�   6    � �� �#1B5E206S   5�   3   �� 5�   2    6>   �� *
IsComplete+	 False6]   .a�5�   6   ��  � �� �#BBDEFB6S   �� 5�   6    � �� �#0D47A16S   5�   3   5�   +   ��5�   &   �� 5�   *   .R�5�   .   �  5�   2   �� 5�   6   $
��Auto �6G   �� 5�   6   $��* �6G   �� 5�   6   $
��Auto �6G   .+�5�   2   �� $	��Top=�6;    	 MaterialDesignLightCheckBox#��[	 5�   ;   $��0��5�   ;   $��4q�5�   ;    d� 	IsChecked 5�   ;   �� *
IsComplete+5�   ;   �� 5�   2   $��1��6A   $��4q�5�   A   ��5�   A   �� ��5�   6   �� 5�   :   " ��6@    5�   >   �� 5�   B    6N   �� *
IsReadOnly+	 False5�   N   .a�5�   F   ��  � �� 5�   J   �� 5�   N   .R�5�   R   �� .+�5�   V   �� ��6^   �� *Title+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5�   V    "
 MaterialDesignCaptionTextBlock#��[
 5�   Y   $
��Wrap=�5�   Y   ��5�   Y   �� *Description+5�   S   5�   O   5�   G   5�   C   �� 5�   B    6N   �� *
IsReadOnly+ True5�   N   .a�5�   F   ��  � �� 5�   J   �� 5�   N   .R�5�   R   �� .+�5�   V   �� $
��Bold"�5�   `   ��5�   `   �� *Title+��5�   Z   �� 5�   ^   " ��6d    5�   b   �� 5�   f    6r   �� *
IsComplete+ True6�   .a�5�   j   ��  � ��$ Strikethrough{�5�   m   5�   g   5�   _   5�   W   �� 5�   V   #��[
 5�   Y   $
��Wrap=�5�   Y   ��5�   Y   �� *Description+5�   S   5�   O   5�   G   5�   C   5�   ;   5�   3   �� 5�   2   $��2��6=   $ 
Horizontal=�5�   =   $	��Top=�5�   =   $��4q�5�   =   .+�5�   6   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ CalendarClock=�6N   $��24��5�   N   $��24��5�   N   $��4q�5�   N    ^� InitialShowDelay$	 100��5   N     ^� ShowDuration$  10000��5  N   
���   � 5�   N   �� *	DueDate+5  N   �� 5  6   $��24��5  =   $��24��5  =   #��[ 5
  =   ��5  =   �� *.,DataContext.ToDoListVM.ToggleReadOnlyCommand+! �� RelativeSource! �� " �� AncestorType
" Window��5  =   �� y�5	  =   �� *
IsReadOnly+# [ .��5  :     $ Pencil=�6R   $��24��5  R   $��24��5  R   5  7   �� 5  6   $��24��5  =   $��24��5  =   #��[ 5  =   ��5  =   �� *.,DataContext.ToDoListVM.ToggleReadOnlyCommand+! �� 
" Window��5  =   �� y�5  =   �� *
IsReadOnly+# [ .��5  :     $ ContentSave=�6R   $��24��5  R   $��24��5  R   5  7   �� 5  6   $��24��5  >   $��24��5   >   #��[ 5!  >   ��5  >   �� **(DataContext.ToDoListVM.RemoveItemCommand+! �� 
" Window��5  >   �� .��5"  :     $ Delete=�6R   $��24��5#  R   $��24��5$  R   5%  7   5&  3   5'  /   5(  +   5*  #   5+     5,     5-     �� 50     $��1��6   ���#FAFAFA$��1,1,0,0q�52     ���#DDD# �� CornerRadius$# 	12,12,0,0��54     $	 8 4q�55     ._�56     �� $   OpenDialogCommand#��Z$ 6!   #��[ 57  !   $	��0 8q�58  !   $
��10 6q�59  !   $��Center=�5:  !   $ Add new task��5;  !   .��5<     �� $ 
Horizontal=�6)   .+�5=  "     $
 Plus=�6:   $��18��6F   $��18��6Q   $��0 0 6 0q�6]   �� 5>  "   $��Add New Task��6,   $��Center=�6@   5?     5@     5A     5B     5C     5D     %   DialogContent% 5G  
   �� 5H     $	��300��6   $	��300��6!   ._�5J     � $��8q�6   $��Center=�6"    5K     �� 5L     $
��Auto �6(   �� 5M     $
��Auto �6(   �� 5N     $
��Auto �6(   �� 5O     $
��Auto �6(   �� 5P     $
��Auto �6(   .+�5S     �� $��0��5T     $��8 8 8 8q�5U     )  #MaterialDesignThemes.Wpf.HintAssist&   Hint$& Title��5W     $��Bottom=�5X      % !MaterialDesignFloatingHintTextBox#��[ 5Y     ��5V     �� *ToDoListVM.TaskTitle+5Y     �� 5\     $��1��5]     $��8 8 8 8q�5^     $	��100��5_     $	��Top=�5a     $& Description (optional)��5b     ' �� 	MaxLength$	' 256��5c      ! MaterialDesignOutlinedTextBox#��[ 5d     ( �� TextWrapping$
( Wrap=�5e     ") �� VerticalScrollBarVisibility$
) Auto=�5f     ��5`     �� *ToDoListVM.TaskDescription+5f     (  "System.Windows.Controls.DatePicker  5i     $��2��5j     $��8 8 8 8q�5k     $& Due Date��5m      ( $MaterialDesignFloatingHintDatePicker#��[ 5n     *   SelectedDate* 5l     �� *ToDoListVM.TaskDueDate+$ TwoWay=�5n     � 5p     $��3��5q     $��8 8 8 8q�5r     $��2��6*    5t     �� 5u     $
��Auto �6/   �� 5v     $��* �6/   .+�5y     �� $��0��5z     $��Calendar Event��5}      5{     �� *ToDoListVM.EventIsChecked+{�5|     �� * AuthorizationVM.EventIsEnabled+5}     �� 5     $��1��5�     $��Center=�5�     $��Right=�5�     
�������$��(Login required)��5�     5�     �� 5�     $��4��5�     $��Center=�5�     $ 
Horizontal=�5�     $��0 4 0 0q�5�     $��1��5�     .+�5�     �� $��ACCEPT��5�     + �� 	IsDefault$
+ True��5�     $��8 0 8 0q�5�       MaterialDesignFlatButton#��[ 5�     ��5�     �� *ToDoListVM.SaveTaskCommand+5�     �� 5�     $��CANCEL��5�     $��8 0 8 0q�5�     , �� IsCancel$
, True��5�     #��[ 5�     -   CloseDialogCommand#��Z- 5�     5�     5�     5�     5�     5�     5�     