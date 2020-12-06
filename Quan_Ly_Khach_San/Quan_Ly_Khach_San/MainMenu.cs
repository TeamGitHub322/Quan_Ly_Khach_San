
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
               FormQLDichVu frm = new FormQLDichVu();
               frm.ShowDialog();
               frm.Close();
               frm.Dispose();
          }

          private void butQLPhong_Click(object sender, EventArgs e)
          {
            FormQLPhong frm = new FormQLPhong();
            frm.ShowDialog();
            frm.Close();
            frm.Dispose();
        }

          private void butQLDoDung_Click(object sender, EventArgs e)
          {
            FormQLDoDung frm = new FormQLDoDung();
            frm.ShowDialog();
            frm.Close();
            frm.Dispose();
        }

          private void butKhachHang_Click(object sender, EventArgs e)
          {
               FormKhachHang frm = new FormKhachHang();
               frm.ShowDialog();
               frm.Close();
               frm.Dispose();
          }

          private void butDoDung_Click(object sender, EventArgs e)
          {

          }

          private void butDichVu_Click(object sender, EventArgs e)
          {
               FormDichVu frm = new FormDichVu();
               frm.ShowDialog();
               frm.Close();
               frm.Dispose();
          }

          private void butPhong_Click(object sender, EventArgs e)
          {
               FormPhong frm = new FormPhong();
               frm.ShowDialog();
               frm.Close();
               frm.Dispose();
          }

          private void button1_Click(object sender, EventArgs e)
          {

          }
     }
}
