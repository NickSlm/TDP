   M S B A M L   `   `   `  ���� G  CToDoListPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListPlus.ViewsToDoListPlus.Views  ,    &ToDoListPlus.Views.AuthorizationWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:ToDoListPlus.Views     _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignFont#���   � Title$ Login��$	��350��$	��400�� � WindowStartupLocation$ CenterScreen=����#FAFAFA � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � 	Resources   MicrosoftButtonStyle �� 
TargetType �� Property	 �� Value3  -System.Windows.Media.Effects.DropShadowEffect
   	Direction   
BlurRadius   Opacity   ShadowDepth��%�   &	       �� " ��.���  � ��$	 1q���  � ��	 �#DDD��  � ��$	 8q���  �@�Cursor$
	 Hand����  � ��
	 �������  �@J�Effect	   $

 -120Q�$ 10Q�$	 0.4Q�$ 1Q�.���� ���#DDD$��1q� �� CornerRadius$ 10��$��20q�._�� $��20q� � RowDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$
��0,10q�$��Center=�.+��� $��ToDoList Plus��$��24(�$
��Bold"����#333�� $#��Welcome! Sign in to continue.��$��14(����#777$��0,4,0,0q��� $��1��$��Center=�$��Center=�.+��� #��[ ���� *AuthorizationCommand+.����  �� Orientation$ 
Horizontal=�$��Center=�$��2q�.+��� $=��7D:\Projects\ToDoListPlus\Assets\Icons\microsoftIcon.png���� $��Sign in with Microsoft��$��Center=����#2F2F2F$��2q��� $��2��$��×��$��Right=�$	��Top=�
������ 
������ $��16(����#888���� *CloseCommand+