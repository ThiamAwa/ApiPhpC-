   M S B A M L   `   `   `  ����P  LWPFModernVerticalMenu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WPFModernVerticalMenuWPFModernVerticalMenu  5   	   #    WPFModernVerticalMenu.Window1   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WPFModernVerticalMenu     5   	     � Title$  Window1��5   	   $	��450��6   $	��800��6&   .��5	      � $��10,8,-10,-8q�6    � ColumnDefinitions 5
   
   �� 5      $	��21* �6   �� 5      $
��779* �6    � RowDefinitions 5   
   �� 5      $
��283* �6   �� 5      $
��151* �6   .+�5   
   �� $	��Nom��6   $
��Left=�6   $��	31,30,0,0q�69   $	��Top=�6L   $��68��6d   $��18(�6o   $��Times New Roman)�6}   $��1��6�   �� 5   
   -   5         ��Name$ textNom��5      $
��Left=�6#   $��	99,38,0,0q�6>    �� TextWrapping$
 Wrap=�6Q   $	��Top=�6e   $	��244��6}   $��Times New Roman)�6�   $��18(�6�   $��1��6�   �� 5   
   $��Prenom��6   $
��Left=�6!   $��
31,116,0,0q�6<   $	��Top=�6P   $��68��6h   $��18(�6s   $��Times New Roman)�6�   $��1��6�   �� 5   
   -   5        $ 	txtPrenom��5      $
��Left=�6%   $��
99,124,0,0q�6@   $
 Wrap=�6T   $	��Top=�6h   $	��244��6�   $��Times New Roman)�6�   $��18(�6�   $��1��6�   �� 5   
   $	��Age��6   $
��Left=�6   $��
31,198,0,0q�69   $	��Top=�6M   $��68��6e   $��18(�6p   $��Times New Roman)�6~   $��1��6�   �� 5   
   -   5        $ txtAge��5      $
��Left=�6"   $��
99,206,0,0q�6=   $
 Wrap=�6Q   $	��Top=�6e   $	��244��6}   $��Times New Roman)�6�   $��18(�6�   $��1��6�   �� 5   
   -   5        $��Ajouter��5      $
��Left=�6#   $��151,24,0,75q�6>   $��1��6S   $	��140��6`   $��Times New Roman)�6�   $��20(�6�   $��1��6�   �� 5   
   -   5        $��Modifer��5      $
��Left=�6#   $��321,24,0,75q�6>   $��1��6S   $	��140��6`   $��Times New Roman)�6�   $��20(�6�   $��1��6�   �� 5   
   -   5        $��	Supprimer��5      $
��Left=�6%   $��511,24,0,75q�6@   $��1��6U   $	��140��6b   $��Times New Roman)�6�   $��20(�6�   $��1��6�   �� 5   
   -   5        $��Selectionner��5      $
��Left=�6(   $��
10,24,0,75q�6C   $	��140��6W   $��Times New Roman)�6x   $��20(�6�   $��1��6�   $��2��6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��	348,0,0,0q�5   >   $��1��6~   5      5      