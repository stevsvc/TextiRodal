using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DisplayTableOriginal.Models
{
    public class Pedido
    {
        public int Id_Empresa { get; set; }
        public int Num_Orden { get; set; }
        public string Descripcion { get; set; }
        public DateTime F_Entrega { get; set; }
        public double Sam_Total { get; set; }
    }
}