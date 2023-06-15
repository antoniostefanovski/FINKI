using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LABS3.Models
{
    public class Hospital
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        [Display(Name="Hospital Address")]
        public string Address { get; set; }
        public string ImageURL { get; set; }
        public virtual List<Doctor> Doctors { get; set; }
    }
}