   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	    NetworkZoneCreator#   NetworkZoneCreator.MainWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Pcontrols;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   -   5          � Title$  Network Zone Creator��5   	   $	��356��6&   $	��644��63    � WindowStartupLocation$ CenterScreen=�6]    � 
ResizeMode$ CanMinimize=�6�    � Icon$L FImg/Oxygen-Icons.org-Oxygen-Devices-network-wireless-connected-100.ico��6�   (   "MahApps.Metro.Controls.MetroWindow   RightWindowCommands 5      +   %MahApps.Metro.Controls.WindowCommands  5   
   .@�5      �� -   5         ��Name$ btnSobre��5      .��5	      ��  �� Orientation$ 
Horizontal=�6   .+�5
      �� $��20��6    $��20��6+   ��5      ��  �� RelativeSource ��  �� AncestorType$ ButtonL�	 �� Path$	 
Foreground�
 J� OpacityMask
 5      !� 5       j� Stretch$
 Fill=�6*      appbar_information_circle !� Visual# [  5      5      �� 5      $��4 0 0 0q�6    $��Center=�5      $��Sobre��5      5      5      �� 5      -   5        $ btnAjuda��5      .��5      �� $ 
Horizontal=�6   .+�5      �� $��20��6    $��20��6+   ��5      ��  �� $ ButtonL�$	 
Foreground�
 5      !� 5      $
 Fill=�6*      appbar_book_perspective_help# [ 5      5      �� 5      $��4 0 0 0q�6    $��Center=�5       $��Ajuda��5!      5"      5#      5$         Flyouts 5'      +   %MahApps.Metro.Controls.FlyoutsControl  5(   
   .@�5)      #   MahApps.Metro.Controls.Flyout     Theme$ Inverse=�6      Position$ Bottom=�6.   $	��644��6@   $	��356��6L   .��5*      �  � ColumnDefinitions 5+      �� 5,      �� 5-      .+�5/      �� $?��9Desenvolvido por: Rafael Barbosa Silva em Janeiro de 2014��6   $��98,136,148,0q�6`   $	��Top=�6v   $��26��6�   $��2��6�   �� 50      $$��Me encontre nas Redes Sociais:��6   $��172,162,222,0q�6E   $	��Top=�6\   $��2��6t   �� 51      $
��Left=�6    $��150,188,0,0q�6;   $
��Wrap=�6P   $	��Top=�6d   $	��100��6|   $	��100��6�   �� 52      -   5        $4��.https://www.facebook.com/rafael.barbosasilva.5?�52   ?    �� TextDecorations 6$   Z� .�6�   .�53      �� .F�54   "   �� $	��100��6(   $	��Top=�66   $9��3/NetworkZoneCreator;component/Img/facebook-icon.png��6N   $	��100��6�   55      56      57      �� 58      $
��Left=�6    $��270,188,0,0q�6;   $
��Wrap=�6P   $	��Top=�6d   $	��100��6|   $	��100��6�   $��2��6�   �� 59      -   5        $2��,http://br.linkedin.com/in/rafaelbarbosasilva?�59   ?    6$   Z� .�6�   .�5:      �� .F�5;   "   �� $	��100��6(   $	��Top=�65   $9��3/NetworkZoneCreator;component/Img/linkedin-icon.png��6M   $	��100��6�   5<      5=      5>      �� 5?      $��Network Zone Creator��6   $��78,72,128,0q�6;   $	��Top=�6P   $��2��6h   $��36(�6|   5@      5A        5C      $ Inverse=�6   $	 Top=�6.   $	��644��6=   $	��356��6I   ��. .��5D      � $��
0,0,0,-438q�6    5E      �� 5F      �� 5G      .+�5I      �� $
��Auto=�6#   $��2��6F   $��	0,24,10,0q�6Z   $	��326��6m   $	��Top=�6z   .��5J      �� $
��Left=�6%   $
��1377��6@   $	��540��6N   $��2��6Z   .+�5K      �� $(��"Network Zone Creator Modo de Usar:��6$   $
��Left=�6Q   $��	0,0,-49,0q�6l   $	��Top=�6   �� 5L      $
��Left=�6(   $��67��6C   $��10,0,-400,0q�6O   $
��Wrap=�6d   $	��Top=�6x   $	��550��6�   �� 6�   $�Requis��6�   �� 6�   $�i��6�   �� 6�   $
�tos:��6�   �� 6�   $M�G 1 - Estar com privilégios de Administrador ao executar este software.��6�   �� 6&  �� 62  $_�Y	    2 - Ter uma interface de rede que suporte a criação de redes hospedadas.(Hardware)��66  �� 6�  �� 6�  $2�,	    3 - Ter o .Net Framework 4.5 instalado.��6�  �� 6�  �� 6�  .F�5M      �� $
��Left=�6   $��34��69   $��0q�6E   $	��Top=�6P   $	��550��6h   5N      6(   �� 5O      $
��Left=�6(   $��71��6C   $��10,0,0,0q�6O   $
��Wrap=�6a   $����Utilização: Para utilizar corretamente, informe um nome sem espaços em branco com pelo menos 1 caractere. Informe tambem uma senha que contenha de 8 a 63 caracteres ASCII sem espaços em branco. Em seguida clique no botão ao lado direito dos campos nome e senha para que a rede seja criada!��6u   $	��Top=�6�  $	��530��6�  �� 5P      $
��Left=�6(   $��10,0,0,0q�6C   $
��Wrap=�6U   $����O Network Zone Creator não compartilha internet ele apenas cria uma rede, para compartilhar internet, após criar a rede abra as configurações da sua fonte de internet como mostrado no exemplo a seguir:��6i   $	��Top=�6:  $��54��6R  $	��530��6^  �� 5Q      $
��Left=�6$   $	��100��6?   $��106,0,-298,0q�6L   $	��Top=�6b   $	��352��6z   $-��'/NetworkZoneCreator;component/Img/1.png��6�   �� 5R      $
��Left=�6(   $��10,0,-400,0q�6C   $
��Wrap=�6X   $1��+Em seguida clique no botão "Propriedades".��6l   $	��Top=�6�   $��22��6�   $	��550��6�   �� 5S      $
��Left=�6$   $	��378��6?   $��119,0,-275,0q�6L   $	��Top=�6b   $	��316��6z   $-��'/NetworkZoneCreator;component/Img/2.png��6�   �� 5T      $
��Wrap=�6(   $��72��6<   $��	10,10,0,0q�6H   �� 6\   $�Na próxima janela ��6`   �� 6|   $���que abrir clique na aba compartilhamento, depois marque o chekbox que permite que outros usuários da rede se conectem à internet pela conexão deste computador e por fim na lista de opções selecione a ��6�   �� 6R  $���rede correspondente a rede que você acabou de criar. Observação: Os nomes mostrados na lista de opções poderão mudar no seu computador.��6V  6�  �� 5U      $	��375��6$   $-��'/NetworkZoneCreator;component/Img/3.png��61   $��10,0,0,0q�6b   �� 5V      $
��Wrap=�6(   $��	10,10,0,0q�6<   $����Repare que para este exemplo a rede escolhida na lista de opções é a mesma que aparece nos atributos da rede que criada pelo Network Zone Creator, que nesse caso se chama Conexão Local*4. Não se preocupe com esse nome, o próprio Windows gera esse nome.��6O   �� 5W      $	��117��6$   $��	10,10,0,0q�61   $-��'/NetworkZoneCreator;component/Img/4.png��6D   5X      5Y      5\      5]      5^      .��5a      � .+�5b   
   �� -   5        $��txtSSID��5b   �   *   $MahApps.Metro.Controls.TextboxHelper   	Watermark$ Digite o Nome da Rede��6      ClearTextButton . $��71,118,315,0q�6y   $��26��6�   $	��Top=�6�   G� 5c   
   -   5        $��txtSenha��5c   �   $ Digite a Senha��6    . $��71,160,315,0q�6v   $��26��6�   $	��Top=�6�   )   #MahApps.Metro.Controls.ToggleSwitch  5d   
   -   5        $��ligaDesligaRede��5d   �      Header$ Status da Rede��6    $��57��68   $	��Top=�6D   $��411,127,80,0q�6\      OnLabel$ Ligado��6r      OffLabel$ 	Desligado��6�   6�   �� 5e   
   $��Propriedades da rede��6   $��71,52,315,0q�6/   $	��Top=�6D   $��47��6\   $��22(�6h   �� 5f   
   -	   5         ��Name$ lblStatusRede��5f      $�� ��6'   $��10,289,10,0q�62   $	��Top=�6G   
���   ���6_   Z� 6u   5g      5h      