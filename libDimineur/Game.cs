using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libDimineur
{
    public enum Level { Beginner = 10 , Intermediate = 20 , Advanced = 40 }
    public class Game
    {
        
        public int Bombs { get; set; }
        public int[,] Grid { get; }
       #region Constructeur
        public Game(Level level)
        {
            Bombs = (int)level;
            switch (level)
            {
                case Level.Beginner:
                    Grid = new int[9, 9];
                    break;
                case Level.Intermediate:
                    Grid = new int[12, 12];
                    break;
                case Level.Advanced:
                    Grid = new int[12, 16];
                    break;
                default:
                    break;
            }
            SetBombs();
            filGrid();
        }
        public Game(Level level, int bombs ):this(level)
        {
            this.Bombs = bombs;
        }
        #endregion

       #region SetBombs
        private void SetBombs()
        {
            Random r = new Random();
            
            int comptBombs = Bombs;
            while (comptBombs > 0 )
            {
                int x = r.Next(0, this.Grid.GetLength(0));
                int y = r.Next(0, this.Grid.GetLength(1));
                if (Grid[x, y] != 9)
                {
                    Grid[x, y] = 9;
                    comptBombs--;
                }
            }
            

        }
        #endregion
        private void filGrid()
        {
            for (int i = 0; i < Grid.GetLength(0); i++)
            {
                for (int j = 0; j < Grid.GetLength(1); j++)
                {
                    if (Grid[i,j]!=9)
                    {
                        Grid[i, j] = GetDegit(i, j);
                    }
                }
            }
        }
        private int GetDegit(int i, int j)
        {
            int nb = 0;
            for (int x = i-1; x <=i+1; x++)
            {
                if (x > -1 && x < Grid.GetLength(0))
                {
                    for (int y = j-1; y <= j+1; y++)
                    {
                        if (y > -1 && y < Grid.GetLength(1) && Grid[x,y]==9)
                        {
                            nb++;
                        }
                    }
                }
            }
            return nb;
        }
    }
}
