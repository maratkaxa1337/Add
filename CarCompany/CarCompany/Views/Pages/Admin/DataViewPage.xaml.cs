using CarCompany.Context;
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

namespace CarCompany.Views.Pages.Admin
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

        private void txbSearchh_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btnCreate_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnRemove_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnGetInfo_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            dbDataView.ItemsSource = dbContext.db.Car.ToList();
        }
    }
}
