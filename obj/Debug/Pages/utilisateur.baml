   M S B A M L   `   `   `  ����P  LWPFModernVerticalMenu, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:WPFModernVerticalMenu.PagesWPFModernVerticalMenu.Pages  5      -    'WPFModernVerticalMenu.Pages.utilisateur   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:WPFModernVerticalMenu.Pages     5        N� Title$  utilisateur��5	      $
��1031��6   .��5      � $��	-15,0,0,0q�6   .+�5   
   �� $	��Nom��6   $
��Left=�6   $��	56,56,0,0q�69   $	��Top=�6L   $��71��6d   ���	#FFFFFCFC$��Times New Roman)�6�   $��18(�6�    J� RenderTransformOrigin$ 
0.56,1.243&�6�   �� 5   
   -   5         ��Name$ txtNom��5      $
��Left=�6"   $��
127,60,0,0q�6=    �� TextWrapping$
 Wrap=�6Q   $	��Top=�6e   $	��259��6}   $��Times New Roman)�6�   $��18(�6�   �� 5   
   $��Prenom��6   $
��Left=�6!   $��
56,134,0,0q�6<   $	��Top=�6P   $��71��6h   ���	#FFFFFCFC$��Times New Roman)�6�   $��18(�6�   $ 
0.56,1.243&�6�   �� 5   
   -   5        $ 	txtPrenom��5      $
��Left=�6%   $��127,138,0,0q�6@   $
 Wrap=�6U   $	��Top=�6i   $	��259��6�   $��Times New Roman)�6�   $��18(�6�   �� 5   
   $	��Age��6   $
��Left=�6   $��
56,221,0,0q�69   $	��Top=�6M   $��71��6e   ���	#FFFFFCFC$��Times New Roman)�6�   $��18(�6�   $ 
0.56,1.243&�6�   �� 5   
   -   5        $ txtAge��5      $
��Left=�6"   $��127,225,0,0q�6=   $
 Wrap=�6R   $	��Top=�6f   $	��259��6~   $��Times New Roman)�6�   $��18(�6�   �� 5   
   -   5         ��Name$ 
btnAjouter��5      $��Ajouter��6%   $
��Left=�67   $��
56,280,0,0q�6R   $	��Top=�6f   $	��142��6~   $��50��6�   $��Times New Roman)�6�   $��18(�6�   6�   �� 5   
   -   5        $ btnModifier��5      $��Modifier��6&   $
��Left=�69   $��244,280,0,0q�6T   $	��Top=�6i   $	��142��6�   $��50��6�   $��Times New Roman)�6�   $��18(�6�   $ 0.795,-0.256&�6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��
dgPersonne��5      $��427,53,23,197q�6%      AutoGenerateColumns .  $	��200��6X   $ 0.584,0.457&�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6H   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 61   �� *Id+6H     5      $	 Nom��6%   $ * 6J   	 62   �� *Nom+6J     5      $ Prénom��6%   $ * 6P   	 65   �� *Prenom+6P     5      $
 Âge��6%   $ * 6J   	 62   �� *Age+6J   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Action��6)   $ * 69   
   CellTemplate
 5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6)   $��Center=�6B   .+�5   "   �� $ btnSupprimer��6)   -   5        $��	Supprimer��5   ?   $��5q�6S   6^   �� 5    "   $ btnSelectionner��6)   -   5        $
��Edit��5    B   $��5q�6R   6]   5"      5$      5&      5(      5-      5.      