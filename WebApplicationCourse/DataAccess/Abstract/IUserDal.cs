using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApplicationCourse.Entities;

namespace WebApplicationCourse.DataAccess.Abstract
{
    public interface IUserDal : IEntityRepository<User>
    {
    }
}
