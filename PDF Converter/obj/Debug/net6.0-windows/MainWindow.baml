   M S B A M L   `   `   `  ����H  DPDF Converter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:PDF_ConverterPDF_Converter  5   	       PDF_Converter.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:PDF_Converter     5   	   d `Syncfusion.SfSkinManager.WPF, Version=26.2.8.0, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89] YSyncfusion.Shared.WPF, Version=26.2.8.0, Culture=neutral, PublicKeyToken=3d67ed1f87d44c894
syncfusion!http://schemas.syncfusion.com/wpf   5   	   -   5          �Name$  myMainWindow��5	   	    � Icon$ /Images/favicon.png��5   	    � Title$ Velvet PDF Converter��5   	   $	��300��6&   $	��500��63   .��5      �  � LayoutTransform 5   
   �� 5      -   5        ApplicationScaleTransform�� �� CenterX$ 0Q�5       �� CenterY$ 0Q�5       � ColumnDefinitions 5   
   �� 5      $
��auto �6   6.   �� 5      $
��auto �6   6.   �� 5      $
��auto �6   6.    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5       $
��auto �6   6,   �� 5!      $
��auto �6   6,   .+�5$   
   �� $��1��6   $��0��6    $��10,10,10,10q�6-   $��/Images/Logo.png��6B   $��Center=�5%      $	��Top=�6-   $	��156��6E   �� 5'   
   -   5         ��Name$ title��5'      $��1��6   $��Select a File to convert��6/   $��Center=�5(      $��1��6-   $��Center=�6:   $��Center=�6U   $��Center=�5)      $��16(�62   $
��Bold"�6@   
������ ���	#FFFF0606$
��auto��5*      $
��auto��6   1  +Syncfusion.Windows.Tools.Controls.ButtonAdv  5,   
   -   5        $��
Select Fie��5,      	   	SmallIcon$"	 /Images/Select File Icon.png��64   $
��Left=�5-      $��35��6:   
   Label$
 Select File��6F   $��2��6Z   $��Center=�5.      $	��115��6:   $��10,10,10,10q�6F   ���	#FFBA70FB
�������5/      �� 52   
   -   5         ��Name$ pathTextBox��52      $��1��6'   $��Center=�67   $��2��6T    �� TextWrapping$ NoWrap=�6a   $��Center=�53      $	��160��6-    �� AcceptsReturn$ False��69   $��30��6O   3  -Syncfusion.Windows.Tools.Controls.ComboBoxAdv  55   
   -   5          Name$ conversionDropDown��55   !      AllowMultiSelect$ False��6?   $��2��6X      DefaultText$ Select��6h   $��30��56   !   $��2��6-   $	��115��6:   
����������	#FFBA70FB$��10,10,10,10q�6p   .@�57      7  1Syncfusion.Windows.Tools.Controls.ComboBoxItemAdv  $��
Doc to PDF��6)     58      $��
PDF to Doc��6)     59      $��
PNG to PDF��6)   5:        5<   
   -   5        $��Convert��5<      $%	 /Images/Convert Button Icon.png��61   $��Center=�5=      $��35��6<   $
 Convert��6H   $��3��6X   $	��Top=�5>      $	��115��67   $��0,28,0,0q�6C   ���	#FFBA70FB
�������$��1��6   5?      5C      5D      