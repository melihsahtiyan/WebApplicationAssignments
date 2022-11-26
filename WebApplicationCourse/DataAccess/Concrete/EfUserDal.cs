using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApplicationCourse.DbConnection;
using WebApplicationCourse.Entities;

namespace WebApplicationCourse.DataAccess.Abstract
{
    public class EfUserDal : EfEntityRepositoryBase<User, BaseDbContext>, IUserDal
    {
    }
}