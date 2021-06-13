using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Validation;
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
        private List<SinhVien> lsSinhVien = new List<SinhVien>();
        public frmSinhVien()
        {
            InitializeComponent();
        }

        private void frmSinhVien_Load(object sender, EventArgs e)
        {
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
            btnLuu.Enabled = false;
            lsSinhVien = db.SinhViens.ToList();
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
            dgvSinhVien.EditMode = DataGridViewEditMode.EditProgrammatically;
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if(txtMSSV.Text.Trim() == "")
            {
                MessageBox.Show("Xin hãy nhập dữ liệu !", "Thông báo");
                return;
            }
            foreach(var x in lsSinhVien)
            {
                if (txtMSSV.Text.Trim() == x.MSSV.ToString().Trim())
                {
                    MessageBox.Show("MSSV đã tồn tại!", "Thông báo");
                    return;
                }
            }    
            var sv = new SinhVien()
            {
                MSSV = int.Parse(txtMSSV.Text.Trim()),
                HoTen = txtHoTen.Text.Trim(),
                CMND = int.Parse(txtCMND.Text.Trim()),
                NgaySinh = DateTime.Parse(dtpNgaySinh.Value.ToString("MM/dd/yyyy")),
                SDT = txtSDT.Text.Trim(),
                GioiTinh = cbbGioiTinh.Text.Trim(),
                Lop = txtLop.Text.Trim()
            };
            db.SinhViens.Add(sv);
            db.SaveChanges();
            MessageBox.Show("Thêm thành công !!!", "Thông báo");
            LoadLCBBGioiTinh();
            LoadDataSinhVien();
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
            btnLuu.Enabled = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("Bạn có chắc không ?","Xóa",MessageBoxButtons.YesNo) == DialogResult.Yes )
            {
                var del = db.SinhViens.Find(int.Parse(dgvSinhVien.CurrentRow.Cells[0].Value.ToString()));
                db.SinhViens.Remove(del);
                db.SaveChanges();
                LoadDataSinhVien();
                btnHuy.Enabled = false;
                btnXoa.Enabled = false;
                btnLuu.Enabled = false;
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            var value = db.SinhViens.Find(int.Parse(txtMSSV.Text.Trim()));
            value.HoTen = txtHoTen.Text.Trim();
            value.SDT = txtSDT.Text.Trim();
            value.NgaySinh = DateTime.Parse(dtpNgaySinh.Value.ToString("MM/dd/yyyy"));
            value.GioiTinh = cbbGioiTinh.Text;
            value.Lop = txtLop.Text;
            db.SaveChanges();
            LoadLCBBGioiTinh();
            LoadDataSinhVien();
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
            btnLuu.Enabled = false;
        }

        private void dgvSinhVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if(dgvSinhVien.Rows.Count == 0)
            {
                MessageBox.Show("Dữ liệu trống", "Lỗi");
                return;
            }
            btnHuy.Enabled = true;
            btnXoa.Enabled = true;
            btnLuu.Enabled = true;
            txtMSSV.Text = dgvSinhVien.CurrentRow.Cells[0].Value.ToString();
            txtHoTen.Text = dgvSinhVien.CurrentRow.Cells[1].Value.ToString();
            txtCMND.Text = dgvSinhVien.CurrentRow.Cells[2].Value.ToString();
            dtpNgaySinh.Value = DateTime.Parse(dgvSinhVien.CurrentRow.Cells[3].Value.ToString());
            txtSDT.Text = dgvSinhVien.CurrentRow.Cells[4].Value.ToString();
            cbbGioiTinh.Text = dgvSinhVien.CurrentRow.Cells[5].Value.ToString();
            txtLop.Text = dgvSinhVien.CurrentRow.Cells[6].Value.ToString();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
            btnLuu.Enabled = false;
            txtMSSV.Clear();
            txtHoTen.Clear();
            txtCMND.Clear();
            txtLop.Clear();
            txtSDT.Clear();
            dgvSinhVien.ClearSelection();
        }
    }
}
