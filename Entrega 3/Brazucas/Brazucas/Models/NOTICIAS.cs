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
    
    public partial class NOTICIAS
    {
        public NOTICIAS()
        {
            this.COMENTARIOS = new HashSet<COMENTARIOS>();
        }
    
        public int CODNOT { get; set; }
        public Nullable<int> CODUSU { get; set; }
        public Nullable<int> CODCAT { get; set; }
        public string TITULONOT { get; set; }
        public string DCRNOT { get; set; }
        public byte[] IMAGENOT { get; set; }
        public Nullable<System.DateTime> DATPOSNOT { get; set; }
        public Nullable<System.DateTime> DATFIMNOT { get; set; }
        public string SITUANOT { get; set; }
    
        public virtual CATEGORIAS CATEGORIAS { get; set; }
        public virtual ICollection<COMENTARIOS> COMENTARIOS { get; set; }
        public virtual USUARIOS USUARIOS { get; set; }
    }
}