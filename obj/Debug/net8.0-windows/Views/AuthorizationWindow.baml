   M S B A M L   `   `   `  ����G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListPlus.ViewsToDoListPlus.Views  5   	   ,    &ToDoListPlus.Views.AuthorizationWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ToDoListPlus.Views     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � Title$ Login��5   	   $	��350��6   $	��400��6$    � WindowStartupLocation$ CenterScreen=�5   	   ���#FAFAFA � 
ResizeMode$ NoResize=�5       � WindowStyle$
 None=�64    � 	Resources 5        MicrosoftButtonStyle �� 
TargetType �� Property	 �� Value3  -System.Windows.Media.Effects.DropShadowEffect
   	Direction   
BlurRadius   Opacity   ShadowDepth��%i  &	       �� 5   
   " ��6-   .�5      ��  � ��$	 1q�60   �� 5       � ��	 �#DDD6,   �� 5       � ��$	 8q�6'   �� 5       �@�Cursor$
	 Hand��6'   �� 5       � ��
	 �����6+   �� 5       �@J�Effect	 5        5      $

 -120Q�6'   $ 10Q�68   $	 0.4Q�6H   $ 1Q�6V   5      5       5!      .��5#      �� ���#DDD$��1q�6     �� CornerRadius$ 10��64   $��20q�6F   ._�5$   
   � $��20q�6    � RowDefinitions 5%      �� 5&      $
��Auto �6    �� 5'      $��* �6    �� 5(      $
��Auto �6    .+�5,      �� $��0��6   $
��0,10q�6&   $��Center=�64   .+�5-      �� $��ToDoList Plus��6   $��24(�5.      $
��Bold"�5/      ���#33350      �� 51      $#��Welcome! Sign in to continue.��6   $��14(�52      ���#777$��0,4,0,0q�54      55      �� 58      $��1��6   $��Center=�6&   $��Center=�6A   .+�59      �� #��[ 5:      ��59      �� *AuthorizationCommand+.��5;      ��  �� Orientation$ 
Horizontal=�6!   $��Center=�6:   $��2q�6U   .+�5<      �� $=��7D:\Projects\ToDoListPlus\Assets\Icons\microsoftIcon.png��6    �� 5=      $��Sign in with Microsoft��6$   $��Center=�5>   $   ���#2F2F2F$��2q�5@   $   {�5A   $   �� *IsAuthorizing+5B      5C      5D      �� 5G      $��2��6   $��×��6"   $��Right=�5H      $	��Top=�61   
������ 
������ $��16(�5J      ���#888��5K      �� *CloseCommand+5L      5M      5N      