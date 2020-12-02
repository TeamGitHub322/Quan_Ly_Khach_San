using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Quan_Ly_Khach_San;
namespace Quan_Ly_Khach_San
{
     public partial class Login : Form
     {
          public Login()
          {
               InitializeComponent();
          }
          #region Watermark
          private void login_txt_username_Leave(object sender, EventArgs e)
          {
               if (login_txt_username.Text == "")
               {
                    login_txt_username.Text = "Username";
                    login_txt_username.ForeColor = Color.Gray;
               }
          }

          private void login_txt_username_Enter(object sender, EventArgs e)
          {
               if (login_txt_username.Text == "Username")
               {
                    login_txt_username.Text = "";
                    login_txt_username.ForeColor = Color.Black;
               }
          }

          private void login_txt_password_Leave(object sender, EventArgs e)
          {
               if (login_txt_password.Text == "")
               {
                    login_txt_password.Text = "Password";
                    login_txt_password.ForeColor = Color.Gray;
               }
          }

          private void login_txt_password_Enter(object sender, EventArgs e)
          {
               if (login_txt_password.Text == "Password")
               {
                    login_txt_password.Text = "";
                    login_txt_password.ForeColor = Color.Black;

                    login_txt_password.PasswordChar = '*';//gõ mật khẩu theo dạng *
               }
          }
          #endregion
          private void login_btn_login_Click(object sender, EventArgs e)
          {
               string user = login_txt_username.Text;
               string pass = login_txt_password.Text;
               if (user.Equals("admin") && pass.Equals("admin"))
               {
                    MainMenu frm = new MainMenu();
                    frm.Show();
                    this.Hide();
               }
               else
               {
                    MessageBox.Show("Đăng nhập thất bại!");
               }
          }
     }
}
