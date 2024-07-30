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
using System.Net;
using System.Collections.Specialized;
using WPFModernVerticalMenu.Service;
using WPFModernVerticalMenu.Model;
using static System.Runtime.CompilerServices.RuntimeHelpers;

namespace WPFModernVerticalMenu.Pages
{
    /// <summary>
    /// Logique d'interaction pour utilisateur.xaml
    /// </summary>
    public partial class utilisateur : Page
    {
        //WebClient client = new WebClient();
        //NameValueCollection dataSend = new NameValueCollection();
        PersonneService service = new PersonneService();
        public utilisateur()
        {
            InitializeComponent();

            LoadUtilisateurs();
        }
        private async void LoadUtilisateurs()
        {
            var utilisateurs = await service.GetListUtilisateursAsync();
            dgPersonne.ItemsSource = utilisateurs;
        }


        /// <summary>
        /// Ajouter Personner
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void btnAjouter_Click(object sender, RoutedEventArgs e)
        {
            Personne personne = new Personne();
            
                personne.Nom = txtNom.Text;
           personne.Prenom = txtPrenom.Text;
            personne.Age = int.Parse(txtAge.Text);
            

            if (service.AddUtilisateurAsync(personne))
            {
                MessageBox.Show("Utilisateur ajouté avec succès !");
                LoadUtilisateurs();
            }
            else
            {
                MessageBox.Show("Erreur lors de l'ajout de l'utilisateur.");
            }
            effacer();

        }

        private void effacer()
        {
            txtNom.Text = string.Empty;
            txtPrenom.Text = string.Empty;
            txtAge.Text = string.Empty;
            LoadUtilisateurs();
            txtNom.Focus();
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void DataGrid_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

        private void dgPersonne_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private async void btnSupprimer_Click(object sender, RoutedEventArgs e)
        {
            if (dgPersonne.SelectedItem is Personne selectedPersonne)
            {
                bool result = await service.DeleteUtilisateurAsync(selectedPersonne.Id);
                if (result)
                {
                    MessageBox.Show("Utilisateur supprimé avec succès !");
                    LoadUtilisateurs();
                    effacer();
                }
                else
                {
                    MessageBox.Show("Erreur lors de la suppression de l'utilisateur.");
                }
            }
            else
            {
                MessageBox.Show("Veuillez sélectionner un utilisateur à supprimer.");
            }
        }

        private void btnSelection_Click(object sender, RoutedEventArgs e)
        {
            
                if (dgPersonne.SelectedItem is Personne selectedPersonne)
                {
                 
                    txtNom.Text = selectedPersonne.Nom;
                    txtPrenom.Text = selectedPersonne.Prenom;
                    txtAge.Text = selectedPersonne.Age.ToString();
                }
                else
                {
                    MessageBox.Show("Veuillez sélectionner un utilisateur à éditer.");
                }
            

        }

        private async void btnModifier_Click(object sender, RoutedEventArgs e)
        {
            if (dgPersonne.SelectedItem is Personne selectedPersonne)
            {
                selectedPersonne.Nom = txtNom.Text;
                selectedPersonne.Prenom = txtPrenom.Text;
                selectedPersonne.Age = int.Parse(txtAge.Text);

                bool result = await service.UpdateUtilisateurAsync(selectedPersonne);
                if (result)
                {
                    MessageBox.Show("Utilisateur modifié avec succès !");
                    LoadUtilisateurs();
                    effacer();
                }
                else
                {
                    MessageBox.Show("Erreur lors de la modification de l'utilisateur.");
                }
            }
            else
            {
                MessageBox.Show("Veuillez sélectionner un utilisateur à modifier.");
            }
        }


    }
}
