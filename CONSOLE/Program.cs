using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using libDimineur;
namespace CONSOLE
{
    class Program
    {
        static void Main(string[] args)
        {
            Game g = new Game(Level.Beginner);
            DisplayGrid(g.Grid);
            Console.WriteLine("Press any key to exit ! ");
            Console.ReadKey();
        }

        private static void DisplayGrid(int[,] grid)
        {
            for (int i = 0; i < grid.GetLength(0); i++)
            {
                for (int j = 0; j < grid.GetLength(1); j++)
                {
                    Console.Write(grid[i, j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}
