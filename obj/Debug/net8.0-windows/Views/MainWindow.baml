   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ToDoListPlusToDoListPlus  5   	       ToDoListPlus.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ToDoListPlus     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ ToDoPlus��5	   	   $	��608��6   $	��504��6'    � 	Resources 5         IconButtonStyle �� 
TargetType �� Property �� Value  MicrosoftButtonStyle��%�  &	        &	     �� 5   
   " ��6(   .�5      ��  � ��$ 24��6'   �� 5       � ��$ 24��6&   �� 5       � ��
 ���� 6+   �� 5       � ��$ 0q�60   �� 5       � ��$	 2,0q�6'   �� 5       �@�Cursor$
 Hand��6'   5      �� 5   
   " ��6-   .�5      ��  � ��$ 0q�60   �� 5       � ��$ 8q�6'   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $��* �6   6)   .+�5"   
   � $��0��6   ���#F0F0F0 � ColumnDefinitions 5#      �� 5$      $��* �6#   6/   �� 5%      $
��auto �6#   62   .+�5'      �� $��Center=�6   $��0��66   $	��8,8q�6F   ��6S   �� *AuthorizationVM.AccessToken+�� 5(      #��[ 6N   $��1��6|   ��6   �� *&$AuthorizationVM.AuthorizationCommand+.��5)      ��  �� Orientation$ 
Horizontal=�6   .+�5*      �� $=��7D:\Projects\ToDoListPlus\Assets\Icons\microsoftIcon.png��6   �� 5+      $��5q�6    Sign in with Microsoft6C   5,      5-      5.      � 51   
   $��1��6   ���#FFFFFF.+�53      �  54      �� 55      $��* �6$   61   �� 56      $
��auto �6$   64   .+�5:      � $��0��6   $��8q�6$   .+�5;      �  5<      �� 5=      $
��Auto �6,   6<   �� 5>      $��* �6,   69   .+�5B      � $��0��6    5C      �� 5D   "   $
��0.8* �63   �� 5E   "   $
��0.2* �63   .+�5G      � -   5        $��pbStatus��5G   t   $��0��6*   	 � Maximum$		 100Q�6:   $	��8,0q�6�   
 � Value
 6H   �� *ToDoListVM.CompletedTasks+6�   �� 5H      $��0��6(   $��Center=�6z   $��Center=�6�   ��68   �� *ToDoListVM.CompletedTasks+ �� StringFormat$ {0:0}%��6�   �� 5I      $��0q�6V   $��1��6�   $��Clean��6�   $	��8,0q�6�   ��6%   �� *ToDoListVM.CleanItemsCommand+��6j   �� *ToDoListVM.ToDoList+6�   5J      � 5M      $��1��6   $��8q�6,   .+�5N      �� $��Stretch=�6R   ��6&   �� *ToDoListVM.ToDoList+��5O   "   �� 5P   &   .R�5Q   *   �  5R   .   �� 5S   2   $
��0.1* �6C   �� 5T   2   $
��0.8* �6C   �� 5U   2   $
��0.1* �6C   .+�5X   .   �� $��0��6X   $��10q�6h    d� 	IsChecked 67   �� *
IsComplete+6h   �� 5Z   .   $��1��6=   $��8q�6a   ��6M   �� ��5[   2   �� 5\   6   " ��6<    �� Triggers 5]   :   �� 5^   >    �� Binding 6J   �� *
IsReadOnly+ �� Value	 False6i   .a�5_   B   ��  � �� 5`   F   �� 5a   J   .R�5b   N   �� ��6V   �� *Title+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5c   K   5e   C   5f   ?   �� 5g   >    6J   �� *
IsReadOnly+ True6i   .a�5h   B   ��  � �� 5i   F   �� 5j   J   .R�5k   N   �� ��6X   �� *Title+��5l   R   �� 5m   V   " ��6\    5n   Z   �� 5o   ^    6j   �� *
IsComplete+ True6�   .a�5p   b   ��  � ��$ Strikethrough{�6�   5q   _   5s   W   5u   O   5v   K   5x   C   5y   ?   5{   7   5}   /   �� 5~   .   $��2��69   $ 
Horizontal=�6I   $	��8,0q�6b   .+�5   2   �� #��[  6c   ��69   �� *ToggleReadOnlyCommand+.��5�   6   �� $8��2D:\Projects\ToDoListPlus\Assets\Icons\editIcon.png��6<   5�   3   �� 5�   2   #��[  5�   f   ��5�   :   �� **(DataContext.ToDoListVM.RemoveItemCommand+ �� RelativeSource ��  �� AncestorType
 Window��5�   I   �� .��5�   6   �� $:��4D:\Projects\ToDoListPlus\Assets\Icons\removeIcon.png��6<   5�   3   5�   /   5�   +   5�   '   5�      5�      5�      5�      � 5�      $��1��6   $��16q�6$   .+�5�      �� $��➕ Add New Task��6   $��32��66   $��0q�6B   ��6V   �� *ToDoListVM.OpenPopupCommand+5�      5�      5�      5�      5�      