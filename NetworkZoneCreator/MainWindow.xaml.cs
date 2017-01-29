using MahApps.Metro.Controls;
using NetworkZoneCreator.Exceptions;
using NetworkZoneCreator.Regra_de_Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Media.Animation;
using MahApps.Metro.Controls.Dialogs;
using MahApps.Metro.Controls;
using System.Diagnostics;
using System.ComponentModel;

namespace NetworkZoneCreator
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        Rede rede;
        Boolean desligar;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void ligaDesligaRede_Checked(object sender, RoutedEventArgs e)
        {
            try
            {
                NomeESenhaEstaoCorretos();
                rede = new Rede();
                rede.iniciarRede(txtSSID.Text, txtSenha.Password);
                NomeESenhaAtivado(false);
                lblStatusRede.Foreground = Brushes.Green;
                lblStatusRede.Content = "Rede iniciada!";
                subirLabel();
                fazerFadeOut(5);
            }
            catch (NomeESenhaVaziosException ex)
            {
                QuandoDerErro(ex);
            }
            catch (SsidIncorretoException ex)
            {
                QuandoDerErro(ex);
            }
            catch (SenhaIncorretaException ex)
            {
                QuandoDerErro(ex);
            }
            catch (Win32Exception ex)
            {
                ligaDesligaRede.IsChecked = false;
                MessageBox.Show("Um ou mais arquivos de configuração podem ter sido corrompidos ou apagados acidentalmente,\n reinstale o software para obte-los novamente.\n\n" + ex.Message, "Erro.");
            }
            catch (Exception ex) 
            {
                ligaDesligaRede.IsChecked = false;
                MessageBox.Show("Erro desconhecido! Menssagem de erro:\n\n" + ex.Message);
            }

        }

        private void ligaDesligaRede_Unchecked(object sender, RoutedEventArgs e)
        {
            try
            {
                rede.desligarRede();
                NomeESenhaAtivado(true);
                lblStatusRede.Foreground = Brushes.Green;
                lblStatusRede.Content = "Rede desligada!";
                subirLabel();
                fazerFadeOut(5);
            }
            catch (NullReferenceException ex) 
            {
                //Não faz nada
            }
            catch (Win32Exception ex)
            {
                ligaDesligaRede.IsChecked = false;
                MessageBox.Show("Um ou mais arquivos de configuração podem ter sido corrompidos ou apagados acidentalmente,\n reinstale o software para obte-los novamente.\n\n" + ex.Message, "Erro.");
            }
            catch (Exception ex)
            {
                ligaDesligaRede.IsChecked = false;
                MessageBox.Show("Erro desconhecido! Menssagem de erro:\n\n" + ex.Message);
            }
        }

        private async void MetroWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (ligaDesligaRede.IsChecked == true)
            {
                rede.desligarRede();
                
                e.Cancel = !desligar;

                var configuracao = new MetroDialogSettings()
                {
                    AffirmativeButtonText = "Sim, quero desligar a rede!",
                    NegativeButtonText = "Não",
                    AnimateShow = true,
                    AnimateHide = false
                };

                var resultado = await this.ShowMessageAsync("Atenção!",
                                                            "Ao sair a rede " + txtSSID.Text + " será desligada, deseja realmente fechar?",
                                                            MessageDialogStyle.AffirmativeAndNegative, configuracao);

                desligar = resultado == MessageDialogResult.Affirmative;

                if (desligar)
                {
                    Application.Current.Shutdown();
                }
            }
        }

        private void QuandoDerErro(Exception ex)
        {
            ligaDesligaRede.IsChecked = false;
            lblStatusRede.Foreground = Brushes.Red;
            lblStatusRede.Content = ex.Message;
            //fazerFadeIn(0.2);
            subirLabel();
            fazerFadeOut(5);
        }

        /// <summary>
        /// Faz a label lblStatusRede sumir em fade-out
        /// </summary>
        /// <param name="tempo">Define o tempo para o fade-out terminar de ocorrer em segundos.</param>
        private void fazerFadeOut(double tempo)
        {
            DoubleAnimation animation = new DoubleAnimation(1, 0, TimeSpan.FromSeconds(tempo));
            lblStatusRede.BeginAnimation(Label.OpacityProperty, animation);
        }

        private void fazerFadeIn(double tempo) 
        {
            DoubleAnimation animation = new DoubleAnimation(0, 1, TimeSpan.FromSeconds(tempo));
            lblStatusRede.BeginAnimation(Label.OpacityProperty, animation);
        }

        private void subirLabel() 
        {
            Thickness posicao;
            ThicknessAnimation animacao = new ThicknessAnimation(
                posicao = new Thickness(0,305,0,0), 
                posicao = new Thickness(0,285, 0,0), 
                TimeSpan.FromSeconds(0.2));
            lblStatusRede.BeginAnimation(Label.MarginProperty, animacao);
        }

        private void NomeESenhaAtivado(Boolean b)
        {
            txtSSID.IsEnabled = b;
            txtSenha.IsEnabled = b;
        }

        /// <summary>
        /// <para>Verifica se os campos nome e senha da rede estão corretos.</para>
        /// <para>O Nome deve ter pelo menos 1 caractere e não deve ter espaços vazios.</para>
        /// <para>A Senha deve ter de 8 a 63 caracteres e não deve ter espaços vazios.</para>
        /// <para>Se as condições não forem satisfeitas, exceções são lançadas</para>
        /// </summary>
        private void NomeESenhaEstaoCorretos()
        {
            if (txtSSID.Text.Trim().Length < 1 && txtSenha.Password.Trim().Length < 1) 
            {
                throw new NomeESenhaVaziosException("Os campos Nome e Senha estão vazios.");
            }
            if (txtSSID.Text.Trim().Length < 1) 
            {
                throw new SsidIncorretoException("Digite um nome correto para esta rede. O nome deve ter pelo menos 1 caractere que não seja espaço em branco.");
            }
            if (txtSenha.Password.Trim().Length < 8 || txtSenha.Password.Length > 63) 
            {
                throw new SenhaIncorretaException("Digite uma senha válida para esta rede. A senha deve ter de 8 a 63 caracteres sem espaços em branco.");
            }
            
        }

        private void btnSobre_Click(object sender, RoutedEventArgs e)
        {
            abreFlyOut(0);   
        }

        private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Process.Start(new ProcessStartInfo(e.Uri.AbsoluteUri));
            e.Handled = true;
        }

        private void btnAjuda_Click(object sender, RoutedEventArgs e)
        {
            abreFlyOut(1);
        }

        private void abreFlyOut(int indice) 
        {
            var flyout = this.Flyouts.Items[indice] as Flyout;
            if (flyout == null)
            {
                return;
            }

            flyout.IsOpen = !flyout.IsOpen;
        }

    }
}
