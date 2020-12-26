using Bandit.Context;
using Bandit.Models;
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

namespace Bandit.Views.Pages.Admin
{
    /// <summary>
    /// Логика взаимодействия для DataViewPage.xaml
    /// </summary>
    public partial class DataViewPage : Page
    {
        public DataViewPage()
        {
            InitializeComponent();
        }


        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            dbDataView.ItemsSource = dbContext.db.Bar.ToList();
        }
        private void btnSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            dbDataView.ItemsSource = dbContext.db.Bar.Where(keyword => keyword.BarCounter.Contains(btnSearch.Text)).ToList();
        }

        private void btnCreate_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnRemove_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Bar selecctedItem = (Bar)dbDataView.SelectedItem;
                if (selecctedItem != null)
                {

                    if (MessageBox.Show("Вы действительно хотите удалить данную запись?", "Удалить?", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK) 
                    {
                        dbContext.db.Bar.Remove(selecctedItem);
                        dbContext.db.SaveChanges();
                        Page_Loaded(null, null);
                    }

                }
            }
            catch (Exception ex)
            {

            }
        }

        private void btnInfo_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
