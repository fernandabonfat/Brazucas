//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Brazucas.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class TIPO_USUARIOS
    {
        public TIPO_USUARIOS()
        {
            this.USUARIOS = new HashSet<USUARIOS>();
        }
    
        public int CODTIPUSU { get; set; }
        public string DCRTIPUSU { get; set; }
    
        public virtual ICollection<USUARIOS> USUARIOS { get; set; }
    }
}