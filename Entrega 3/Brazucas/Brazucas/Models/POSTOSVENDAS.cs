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
    
    public partial class POSTOSVENDAS
    {
        public int CODPOS { get; set; }
        public string ENDPOS { get; set; }
        public Nullable<int> CODCID { get; set; }
    
        public virtual CIDADE_SEDE CIDADE_SEDE { get; set; }
    }
}