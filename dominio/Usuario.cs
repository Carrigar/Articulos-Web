using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public enum TipoUsuario
    {
        ADMIN = 1,
        NORMAL = 2
    }
    public class Usuario
    {
        public int Id { get; set; }
        public string User { get; set; }
        public string Password { get; set; }
        public TipoUsuario TipoUsuario { get; set; }

        public Usuario(string user, string password, bool admin)
        {
            User = user;
            Password = password;
            TipoUsuario = admin ? TipoUsuario.ADMIN : TipoUsuario.NORMAL;
        }
    }
}
