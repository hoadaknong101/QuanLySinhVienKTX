using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLySinhVienKTX
{
    public partial class frmMain : Form
    {
        private SVDB db = new SVDB();

        //Tạo danh sách phòng của từng tầng: có 9 tầng
        List<Phong> tang1 = new List<Phong>();
        List<Phong> tang2 = new List<Phong>();
        List<Phong> tang3 = new List<Phong>();
        List<Phong> tang4 = new List<Phong>();
        List<Phong> tang5 = new List<Phong>();
        List<Phong> tang6 = new List<Phong>();
        List<Phong> tang7 = new List<Phong>();
        List<Phong> tang8 = new List<Phong>();
        List<Phong> tang9 = new List<Phong>();

        public frmMain()
        {
            InitializeComponent();
        }
        private void tabPage1_Click(object sender, EventArgs e)
        {

        }
        private void tabControlTang_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void frmMain_Load(object sender, EventArgs e)
        {
            GetData();
            LoadDataToTabControl();
        }
        private void LoadDataToTabControl()
        {
            dgvTang1.DataSource = tang1;
            dgvTang2.DataSource = tang2;
            dgvTang3.DataSource = tang3;
            dgvTang4.DataSource = tang4;
            dgvTang5.DataSource = tang5;
            dgvTang6.DataSource = tang6;
            dgvTang7.DataSource = tang7;
            dgvTang8.DataSource = tang8;
            dgvTang9.DataSource = tang9;
            Setting();
        }
        private void Setting()
        {
            dgvTang1.Columns[0].HeaderText = "Số phòng";
            dgvTang1.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang1.Columns[2].HeaderText = "Sức chứa";
            dgvTang1.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang1.Columns[3].Visible = false;
            dgvTang1.Columns[1].Visible = false;
            dgvTang1.Columns[4].Visible = false;

            dgvTang2.Columns[0].HeaderText = "Số phòng";
            dgvTang2.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang2.Columns[2].HeaderText = "Sức chứa";
            dgvTang2.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang2.Columns[3].Visible = false;
            dgvTang2.Columns[1].Visible = false;
            dgvTang2.Columns[4].Visible = false;

            dgvTang3.Columns[0].HeaderText = "Số phòng";
            dgvTang3.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang3.Columns[2].HeaderText = "Sức chứa";
            dgvTang3.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang3.Columns[3].Visible = false;
            dgvTang3.Columns[1].Visible = false;
            dgvTang3.Columns[4].Visible = false;

            dgvTang4.Columns[0].HeaderText = "Số phòng";
            dgvTang4.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang4.Columns[2].HeaderText = "Sức chứa";
            dgvTang4.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang4.Columns[3].Visible = false;
            dgvTang4.Columns[1].Visible = false;
            dgvTang4.Columns[4].Visible = false;

            dgvTang5.Columns[0].HeaderText = "Số phòng";
            dgvTang5.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang5.Columns[2].HeaderText = "Sức chứa";
            dgvTang5.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang5.Columns[3].Visible = false;
            dgvTang5.Columns[1].Visible = false;
            dgvTang5.Columns[4].Visible = false;

            dgvTang6.Columns[0].HeaderText = "Số phòng";
            dgvTang6.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang6.Columns[2].HeaderText = "Sức chứa";
            dgvTang6.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang6.Columns[3].Visible = false;
            dgvTang6.Columns[1].Visible = false;
            dgvTang6.Columns[4].Visible = false;

            dgvTang7.Columns[0].HeaderText = "Số phòng";
            dgvTang7.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang7.Columns[2].HeaderText = "Sức chứa";
            dgvTang7.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang7.Columns[3].Visible = false;
            dgvTang7.Columns[1].Visible = false;
            dgvTang7.Columns[4].Visible = false;

            dgvTang8.Columns[0].HeaderText = "Số phòng";
            dgvTang8.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang8.Columns[2].HeaderText = "Sức chứa";
            dgvTang8.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang8.Columns[3].Visible = false;
            dgvTang8.Columns[1].Visible = false;
            dgvTang8.Columns[4].Visible = false;

            dgvTang9.Columns[0].HeaderText = "Số phòng";
            dgvTang9.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang9.Columns[2].HeaderText = "Sức chứa";
            dgvTang9.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvTang9.Columns[3].Visible = false;
            dgvTang9.Columns[1].Visible = false;
            dgvTang9.Columns[4].Visible = false;
        }
        private void GetData()
        {
            tang1 = db.Phongs.Where(s => s.Tang == 1).ToList();
            tang2 = db.Phongs.Where(s => s.Tang == 2).ToList();
            tang3 = db.Phongs.Where(s => s.Tang == 3).ToList();
            tang4 = db.Phongs.Where(s => s.Tang == 4).ToList();
            tang5 = db.Phongs.Where(s => s.Tang == 5).ToList();
            tang6 = db.Phongs.Where(s => s.Tang == 6).ToList();
            tang7 = db.Phongs.Where(s => s.Tang == 7).ToList();
            tang8 = db.Phongs.Where(s => s.Tang == 8).ToList();
            tang9 = db.Phongs.Where(s => s.Tang == 9).ToList();
        }
        private void btnThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnSinhVien_Click(object sender, EventArgs e)
        {
            frmSinhVien frm = new frmSinhVien();
            frm.Show();
            //frm.ShowDialog();
        }

        private void btnPhong_Click(object sender, EventArgs e)
        {
            frmPhong frm = new frmPhong();
            frm.Show();
            //frm.ShowDialog();
        }

        private void btnHopDong_Click(object sender, EventArgs e)
        {
            frmHopDong frm = new frmHopDong();
            frm.Show();
            //frm.ShowDialog();
        }

        private void btnNhanVien_Click(object sender, EventArgs e)
        {
            frmNhanVien frm = new frmNhanVien();
            frm.Show();
            //frm.ShowDialog();
        }
    }
}
