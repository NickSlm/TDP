   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListPlus.ViewsToDoListPlus.Views  5   	   (    "ToDoListPlus.Views.PopupDialogView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ToDoListPlus.Views     5   	     � WindowStyle$
  None=�5   	   
����� � � AllowsTransparency$
 True��5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Add Task��5   	   $	��300��6   $	��300��6'    � 	Resources 5      ��%    5      .��5      �� $��16q�6   .+�5   
   �� $��Title:��6   �� 5   
   ��6   �� *	TaskTitle+�� 5   
   $��Description:��6   � 5   
   $��96��6   .+�5      �� .��5      �� $
��Auto��6    �� TextWrapping$
 Wrap=�6(   5      5      �� 5   	   $��Select DueTime��6   (  "System.Windows.Controls.DatePicker  5   
      SelectedDate 
2000-12-316      SelectedDateFormat$
 Long=�6/   6K   �� 5   
   	 �� Orientation$	 
Horizontal=�6   $��16q�6.   $��Center=�6:   .+�5      �� $��3��6   $��0��6"   $
��Save��62   $��80��6a   $��6q�6l   ��6A   �� *SaveCommand+6l   �� 5       $��3��6   $��1��6"   $��Cancel��62   $��80��6e   $��6q�6p   ��6C   �� *CancelCommand+6p   5!      5"      5$      