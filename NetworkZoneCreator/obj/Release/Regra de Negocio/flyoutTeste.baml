   M S B A M L   `   `   `  ����   NetworkZoneCreator5    /NetworkZoneCreator.Regra_de_Negocio.flyoutTeste   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008       N� Title$  flyoutTeste��.��� $��0,0,0,-1068q� � ColumnDefinitions �� �� .+��� $
��Auto=�$��2��$��	0,24,10,0q�$	��326��$	��Top=�.���� $
��Left=�$
��1377��$	��540��$��2��.+��� $(��"Network Zone Creator Modo de Usar:��$
��Left=�$��	0,0,-49,0q�$	��Top=��� $
��Left=�$��67��$��10,0,-400,0q�$
��Wrap=�$	��Top=�$	��550���� $�Requis���� $�i���� $
�tos:���� $M�G 1 - Estar com privilégios de Administrador ao executar este software.���� �� $_�Y	    2 - Ter uma interface de rede que suporte a criação de redes hospedadas.(Hardware)���� �� $2�,	    3 - Ter o .Net Framework 4.5 instalado.���� �� .F��� $
��Left=�$��34��$��0q�$	��Top=�$	��550���� $
��Left=�$��71��$��10,0,0,0q�$
��Wrap=�$����Utilização: Para utilizar corretamente, informe um nome sem espaços em branco com pelo menos 1 caractere. Informe tambem uma senha que contenha de 8 a 63 caracteres ASCII sem espaços em branco. Em seguida clique no botão ao lado direito dos campos nome e senha para que a rede seja criada!��$	��Top=�$	��530���� $
��Left=�$��10,0,0,0q�$
��Wrap=�$����O Network Zone Creator não compartilha internet ele apenas cria uma rede, para compartilhar internet, após criar a rede abra as configurações da sua fonte de internet como mostrado no exemplo a seguir:��$	��Top=�$��54��$	��530���� $
��Left=�$	��100��$��106,0,-298,0q�$	��Top=�$	��352��$-��'/NetworkZoneCreator;component/Img/1.png���� $
��Left=�$��10,0,-400,0q�$
��Wrap=�$1��+Em seguida clique no botão "Propriedades".��$	��Top=�$��22��$	��550���� $
��Left=�$	��378��$��119,0,-275,0q�$	��Top=�$	��316��$-��'/NetworkZoneCreator;component/Img/2.png���� $
��Wrap=�$��72��$��	10,10,0,0q��� $�Na próxima janela ���� $���que abrir clique na aba compartilhamento, depois marque o chekbox que permite que outros usuários da rede se conectem à internet pela conexão deste computador e por fim na lista de opções selecione a ���� $���rede correspondente a rede que você acabou de criar. Observação: Os nomes mostrados na lista de opções poderão mudar no seu computador.���� $	��375��$-��'/NetworkZoneCreator;component/Img/3.png��$��10,0,0,0q��� $
��Wrap=�$��	10,10,0,0q�$����Repare que para este exemplo a rede escolhida na lista de opções é a mesma que aparece nos atributos da rede que criada pelo Network Zone Creator, que nesse caso se chama Conexão Local*4. Não se preocupe com esse nome, o próprio Windows gera esse nome.���� $	��117��$��	10,10,0,0q�$-��'/NetworkZoneCreator;component/Img/4.png��