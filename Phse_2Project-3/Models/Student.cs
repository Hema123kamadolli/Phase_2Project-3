using System;
using System.Collections.Generic;

namespace Phse_2Project_3.Models
{
    public partial class Student
    {
        public Student()
        {
            Marks = new HashSet<Mark>();
        }

        public int StudentId { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }

        public virtual ICollection<Mark> Marks { get; set; }
    }
}
