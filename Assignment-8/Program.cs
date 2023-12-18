using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Assignment_8
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string conStr = "server=LAPTOP-CL65602K\\SQLEXPRESS;database=Assignment8;trusted_connection=true;";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();                        
                using (SqlCommand cmd = new SqlCommand("select Top 5 * from Products Order By PName DESC", con))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        Console.WriteLine("Top 5 Records:");
                        Console.WriteLine("Pid\tPName\tPPrice\tMfgDate\t\t\tExpDate");
                        while (reader.Read())
                        {
                            Console.WriteLine($"{reader["Pid"]}\t{reader["PName"]}\t{reader["PPrice"]}\t{reader["MfgDate"]}\t{reader["ExpDate"]}\t");
                        }
                        Console.ReadKey();
                    }
                }
            }
        }
    }
}

