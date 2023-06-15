using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LABS3.Models
{
    public class Doctor
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public virtual List<Patient> Patients { get; set; }
        [Display(Name="Hospital Name")]
        public int HospitalId { get; set; }
        public virtual Hospital Hospital { get; set; }
    }
}