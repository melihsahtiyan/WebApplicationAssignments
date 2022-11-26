using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationCourse.Entities
{
    public class User : IEntity
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool Gender { get; set; }
    }
}