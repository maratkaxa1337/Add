   M S B A M L   `   `   `  ����E  ACarCompany, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:CarCompany.Views.Pages.AdminCarCompany.Views.Pages.Admin  5      /    )CarCompany.Views.Pages.Admin.DataViewPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:CarCompany.Views.Pages.Admin     5      -   5          N� FontSize$  18(�5       N� Title$ DataViewPage��5	       � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  � ��$	 250��6&   �� 5       � ��$ 45��6'   �� 5       � ��
 �iii�6+   �� 5       � ��
 ���� 6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      $��* �6   �� 5      $
��0.5* �6   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $��Center=�6O   .+�5      �� $��
Поиск��6   �� 5      -   5         ��Name$ 
txbSearchh��5      $	��250��6.   $��10 0 0 0q�6:   6L   5       5!      � 5$   
   $��1��6   .+�5%      &   System.Windows.Controls.DataGrid  -   5        	  Name$	 
dbDataView��5*      
   AutoGenerateColumns
 .  $��10q�5&      
���iii�$
��Bold"�5(         
IsReadOnly .    ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5+         Columns 5,      0  *System.Windows.Controls.DataGridTextColumn  5-      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      Width$
 0.2* 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *ID+6L     5.      $ Название��6)   $ * 6T    6;   �� *Name+6T     5/      $ Модель��6)   $ * 6R    69   �� *Mark+6R     50      $ Страна��6)   $ * 6_    69   �� *Country.CountryID+6_   54      55      � 57   
   $��2��6   .+�58      �� $ 
Horizontal=�6   $��Center=�59      $��Center=�5:      .+�5<      �� -   5         ��Name$ 	btnCreate��5<      $��Создать��5=      5>      �� 5?      -   5        $ btnEdit��5?      $ ��Редактировать��5@      $
��10 0q�5A      5B      �� 5C      -   5        $ 	btnRemove��5C      $��Удалить��5D      5E      �� 5F      -   5        $ 
btnGetInfo��5F      $��Подробнее��5G      $��10 0 0 0q�5H      5I      5K      5L      5M      5N      