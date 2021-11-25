using libDimineur;
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
using System.Windows.Threading;

namespace graph
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Button[,] buttons;
        Game myGame;
        int lines;
        int columns;
        private int seconds;
        private int minutes;
        DispatcherTimer timer =new System.Windows.Threading.DispatcherTimer();

        public MainWindow()
        {
            InitializeComponent();
        }
        private void Timer_tick(object sender, EventArgs e) { 
            if (seconds == 0) {
                minutes--; 
                seconds = 59;
            } 
            else { 
                seconds--;
            } 
            temps.Text = minutes.ToString("00") + ":" + seconds.ToString("00");
            if (seconds == 0 && minutes == 0) {
                timer.Stop(); 
                MessageBox.Show("game over"); }
        }
        private void ListViewItem_MouseEnter(object sender, MouseEventArgs e)
        {
            // Set tooltip visibility

            if (Tg_Btn.IsChecked == true)
            {
                tt_home.Visibility = Visibility.Collapsed;
                tt_lvl.Visibility = Visibility.Collapsed;
                tt_newGame.Visibility = Visibility.Collapsed;
                tt_temps.Visibility = Visibility.Collapsed;
                tt_Music.Visibility = Visibility.Collapsed;
            }
            else
            {
                tt_home.Visibility = Visibility.Visible;
                tt_temps.Visibility = Visibility.Visible;
                tt_lvl.Visibility = Visibility.Visible;
                tt_newGame.Visibility = Visibility.Visible;
                tt_Music.Visibility = Visibility.Visible;
            }
        }


        private void Tg_Btn_Unchecked(object sender, RoutedEventArgs e)
        {
            img_bg.Opacity = 1;
        }

        private void Tg_Btn_Checked(object sender, RoutedEventArgs e)
        {
            img_bg.Opacity = 0.3;
        }

        private void BG_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Tg_Btn.IsChecked = false;
        }

        private void CloseBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
        
        

        private void newGame_MouseDown(object sender, RoutedEventArgs e)
        {
            minutes = 1; 
            seconds = 0; 
            if (timer != null) timer.Stop(); timer = new DispatcherTimer(); 
            timer.Interval = TimeSpan.FromSeconds(1); 
            timer.Tick += Timer_tick; 
            timer.Start();

            if (bg.IsChecked == true)
            {
                myGame = new Game(Level.Beginner);
                myCanvas.Children.Clear();
            }
            else
            {
                myGame = new Game(Level.Advanced);
                myCanvas.Children.Clear();

            }
            
            lines = myGame.Grid.GetLength(0);
            columns = myGame.Grid.GetLength(1);
            buttons = new Button[lines, columns];
            for (int i = 0; i < lines; i++)
            {
                for (int j = 0; j < columns; j++)
                {
                    Button bt = new Button();
                    bt.Click += Bt_Click;
                    bt.MouseRightButtonDown += Bt_MouseRightButtonDown;
                    bt.Background = new ImageBrush(new BitmapImage(new Uri(@"C:/Users/FIRAS/source/repos/Dimineur/graph/Assets/btn.png", UriKind.Relative)));
                    bt.FontSize = 20;
                    bt.Width = myCanvas.Width / columns;
                    bt.Height = myCanvas.Height / lines;
                    Canvas.SetTop(bt, (double)i * bt.Height);
                    Canvas.SetLeft(bt, (double)j * bt.Width);
                    bt.Tag = i + "/" + j;
                    myCanvas.Children.Add(bt);
                    buttons[i, j] = bt;
                }

            }

        }
        bool flag = false; 
        private void Bt_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            Button b = (Button)sender;
            if (!flag)
            {
                b.Background = new ImageBrush(new BitmapImage(new Uri(@"C:/Users/FIRAS/source/repos/Dimineur/graph/Assets/flag.png", UriKind.Relative)));
                flag = true;
            }
            else
            {
                b.Background = new ImageBrush(new BitmapImage(new Uri(@"C:/Users/FIRAS/source/repos/Dimineur/graph/Assets/btn.png", UriKind.Relative)));
                flag = false;
            }


        }
       


        private void Home_MouseDown(object sender, RoutedEventArgs e){
            myCanvas.Children.Clear();
        }
        
        private void OnMouseDownMedia(object sender, RoutedEventArgs e)
        {
            MediaPlayer player = new MediaPlayer();
            bool played = true ;
            player.Open(new Uri("C:/Users/FIRAS/source/repos/Dimineur/graph/Assets/Music.mp3", UriKind.RelativeOrAbsolute));
            if (played == false )
            {
                player.Pause();
                played = false;
                
            }
            else 
            {
                player.Play();
                played = true;
            }
            

        }
        private void Bt_Click(object sender, RoutedEventArgs e)
        {
            Button b = (Button)sender;
            String[] cord = b.Tag.ToString().Split('/');
            int l = int.Parse(cord[0]);
            int c = int.Parse(cord[1]);
            
            if(b.Content == null)
            {
                if (myGame.Grid[l, c] == 9)
                {
                    buttons[l, c].Background = new ImageBrush(new BitmapImage(new Uri(@"C:/Users/FIRAS/source/repos/Dimineur/graph/Assets/bomb.png", UriKind.Relative)));
                    affichCont();
                    timer.Stop();
                    MessageBox.Show("You Lose in " + temps.Text + " Second");
                }
                else if (myGame.Grid[l, c] == 0)
                {
                    affichzero(l, c);
                }
                else
                {
                    if (flag)
                    {
                        b.Background = new ImageBrush(new BitmapImage(new Uri(@"C:/Users/FIRAS/source/repos/Dimineur/graph/Assets/btn.png", UriKind.Relative)));
                        flag = false;
                    }
                    buttons[l, c].Content = myGame.Grid[l, c];
                }
            }

        }
        public void affichCont()
        {
            lines = myGame.Grid.GetLength(0);
            columns = myGame.Grid.GetLength(1);
            for (int i = 0; i < lines; i++)
            {
                for (int j = 0; j < columns; j++)
                {
                    if (myGame.Grid[i, j] == 9)
                    {
                        buttons[i, j].Content = "";
                        buttons[i, j].Background = new ImageBrush(new BitmapImage(new Uri(@"C:/Users/FIRAS/source/repos/Dimineur/graph/Assets/bomb.png", UriKind.Relative)));

                    }
                    else
                    {
                        buttons[i, j].Content = myGame.Grid[i, j];

                    }
                }
            }
        }

            public void affichzero(int l,int c)
        {
            for (int i = l - 1; i <= l + 1; i++)
            {
                if (i > -1 && i < myGame.Grid.GetLength(0))
                    for (int j = c - 1; j <= c + 1; j++)
                    {
                        if(j > -1 && j < myGame.Grid.GetLength(1))
                        {
                            if (buttons[i, j].Content == null)
                            {
                                buttons[i, j].Content = myGame.Grid[i, j];
                                if (myGame.Grid[i, j] == 0)

                                    affichzero(i, j);
                            }

                        }
                    }

            }
        }

    }

}
