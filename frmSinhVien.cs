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
    public partial class frmSinhVien : Form
    {
        private SVDB db = new SVDB();
        private List<string> gioiTinh = new List<string>();
        public frmSinhVien()
        {
            InitializeComponent();
        }

        private void frmSinhVien_Load(object sender, EventArgs e)
        {
            LoadLCBBGioiTinh();
            LoadDataSinhVien();
        }
        private void LoadLCBBGioiTinh()
        {
            gioiTinh.Add("Nam");
            gioiTinh.Add("Nữ");
            gioiTinh.Add("Khác");
            cbbGioiTinh.DataSource = gioiTinh;
        }
        private void LoadDataSinhVien()
        {
            dgvSinhVien.DataSource = db.SinhViens.ToList();
            dgvSinhVien.Columns[0].HeaderText = "MSSV";
            dgvSinhVien.Columns[1].HeaderText = "Họ và tên";
            dgvSinhVien.Columns[2].HeaderText = "CMND/CCCD";
            dgvSinhVien.Columns[3].HeaderText = "Ngày sinh";
            dgvSinhVien.Columns[4].HeaderText = "Số ĐT";
            dgvSinhVien.Columns[5].HeaderText = "Giới tính";
            dgvSinhVien.Columns[6].HeaderText = "Lớp";
            dgvSinhVien.Columns[1].Width = 250;
            dgvSinhVien.Columns[3].Width = 150;
            dgvSinhVien.Columns[7].Visible = false;
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
