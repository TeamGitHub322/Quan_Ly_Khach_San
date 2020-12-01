using Quan_Ly_HS_GV_THPT;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quan_Ly_Khach_San
{
     public partial class MainMenu : Form
     {
          public MainMenu()
          {
               InitializeComponent();
          }

          private void btn_Log_out_Click(object sender, EventArgs e)
          {
               Login lg = new Login();
               lg.Show();
               this.Hide();
          }

          private void butQLDichVu_Click(object sender, EventArgs e)
          {

          }

          private void butQLPhong_Click(object sender, EventArgs e)
          {

          }

          private void butQLDoDung_Click(object sender, EventArgs e)
          {

          }

          private void butKhachHang_Click(object sender, EventArgs e)
          {

          }

          private void butDoDung_Click(object sender, EventArgs e)
          {

          }

          private void butDichVu_Click(object sender, EventArgs e)
          {

          }

          private void butPhong_Click(object sender, EventArgs e)
          {

          }

          private void button1_Click(object sender, EventArgs e)
          {

          }
     }
}
