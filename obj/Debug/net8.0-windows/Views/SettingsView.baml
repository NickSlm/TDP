   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListPlus.ViewsToDoListPlus.Views  5      %    ToDoListPlus.Views.SettingsView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:ToDoListPlus.Views     5      _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5      �� $	��300��6   $	��320��6   $	��480��6,     �� Padding$  16q�6;   
�������._�5   
   �  � RowDefinitions 5      �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      �� $��0��6   $	��Top=�6&   .+�5      �� .+�5      �� $��General��6     $   MaterialDesignHeadline6TextBlock#��[  5      $��0,0,0,8q�5      � 5      $��0,0,0,8q�6    � ColumnDefinitions 5      �� 5       $
��Auto �6/   �� 5!      $��* �6/   .+�5$      �� $��Theme��6    $��0��5%       $��0,0,8,8q�5&       $��Center=�5'       d� 5)      $��1��6'   $��0,0,0,8q�5*   '    $  MaterialDesignSwitchToggleButton#��[ 5+   '    � ToolTip$ 
Light/Dark��5,   '   5-      5.      �� 5/      $	��0,8q�6   �� 52      .+�53      �� $��Hotkeys��6    #��[  54      $��0,0,0,8q�55      � 57       58      �� 59      $
��Auto �6,   �� 5:      $
��Auto �6,    5<      �� 5=      $
��Auto �6/   �� 5>      $��* �6/   .+�5A      �� $��0��6    $��Toggle overlay��5B      $��Center=�5C      $��0,0,8,8q�5D      �� 5E      -   5        $��0��5E   "   $��1��5F      
 � Tag$ Overlay��5H       �� 
IsReadOnly$
 True��5J       � Cursor$
 Hand��5K       ! MaterialDesignOutlinedTextBox#��[ 5L      $��0,0,0,8q�5M      ��5G      �� * _keyStrokes[Overlay].keyStroke+5M      �� 5O      $��1��6    $��Create new task��5P      $��Center=�5Q      $��0,0,8,8q�5R      �� 5S      -   5        $��1��5S   "   $��1��5T      $ NewTask��5V      $
 True��5X      $
 Hand��5Y      #��[ 5Z      $��0,0,0,8q�5[      ��5U      �� * _keyStrokes[NewTask].keyStroke+5[      5\      5]      �� 5^      $	��0,8q�6   �� 5_      .+�5`      �� $��Overlay��6    #��[  5a       $��0,0,0,8q�5b       � 5c      $��0,0,0,8q�6    5d      �� 5e      $
��Auto �6/   �� 5f      $��* �6/   .+�5i      �� $��Overlay position��6    $��0,0,8,8q�5j      $��Center=�5k      �� 5l      $��1��6#   $��0,0,0,8q�5m       " MaterialDesignOutlinedComboBox#��[ 5p      ��5n      �� *PositionOptions+ �� SelectedItem 5o      �� *
OverlayPos+ �� Mode$ TwoWay=�5p      5q      5r      5s      �� 5v      $��1��6   	 �� Orientation$	 
Horizontal=�5w      $��Center=�5x      $��0,16,0,0q�5y      .+�5z      �� $��ACCEPT��6   
 �� 	IsDefault$

 True��5{      $	��8,0q�5|       " MaterialDesignPaperLightButton#��[ 5~      ��5}      �� *SaveSettingsCommand+5~      �� 5      $��CANCEL��6    �� IsCancel$
 True��5�      $	��8,0q�5�      #��[ 5�      )  #MaterialDesignThemes.Wpf.DialogHost   CloseDialogCommand#��Z 5�      5�      5�      5�      5�      