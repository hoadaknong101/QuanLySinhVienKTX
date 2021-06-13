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
    public partial class frmNhanVien : Form
    {
        private SVDB db = new SVDB();
        public frmNhanVien()
        {
            InitializeComponent();
        }

        private void frmNhanVien_Load(object sender, EventArgs e)
        {
            LoadData();
            btnHuy.Enabled = false;
            btnLuu.Enabled = false;
            btnXoa.Enabled = false;
        }
        private void LoadData()
        {
            dgvNhanVien.DataSource = db.NhanViens.ToList();
            Setting();
        }
        private void Setting()
        {
            dgvNhanVien.Columns[0].HeaderText = "Mã NV";
            dgvNhanVien.Columns[1].HeaderText = "Họ và tên";
            dgvNhanVien.Columns[2].HeaderText = "Ngày sinh";
            dgvNhanVien.Columns[3].HeaderText = "Địa chỉ";
            dgvNhanVien.Columns[4].HeaderText = "Chức vụ";
            dgvNhanVien.Columns[5].HeaderText = "Số ĐT";
            dgvNhanVien.EditMode = DataGridViewEditMode.EditProgrammatically;
            dgvNhanVien.Columns[6].Visible = false;
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            var nv = new NhanVien()
            {
                MaNV = txtMSNV.Text.Trim(),
                HoTen = txtHoTen.Text.Trim(),
                NgaySinh = DateTime.Parse(dtpNgaySinh.Value.ToString("MM/dd/yyyy")),
                DiaChi = txtDiaChi.Text.Trim(),
                SDT = txtSDT.Text.Trim(),
                ChucVu = txtChucVu.Text.Trim()
            };
            db.NhanViens.Add(nv);
            db.SaveChanges();
            LoadData();
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            var mod = db.NhanViens.Find(txtMSNV.Text.Trim());
            mod.HoTen = txtHoTen.Text.Trim();
            mod.NgaySinh = DateTime.Parse(dtpNgaySinh.Value.ToString("MM/dd/yyyy"));
            mod.DiaChi = txtDiaChi.Text.Trim();
            mod.ChucVu = txtChucVu.Text.Trim();
            mod.SDT = txtSDT.Text.Trim();
            db.SaveChanges();
            LoadData();
            btnHuy.Enabled = false;
            btnLuu.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            txtChucVu.Clear();
            txtDiaChi.Clear();
            txtHoTen.Clear();
            txtMSNV.Clear();
            txtSDT.Clear();
            dgvNhanVien.ClearSelection();
            LoadData();
            btnHuy.Enabled = false;
            btnLuu.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc không ?", "Xóa", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                var x = db.NhanViens.Find(int.Parse(txtMSNV.Text.Trim()));
                db.NhanViens.Remove(x);
                db.SaveChanges();
                dgvNhanVien.ClearSelection();
                LoadData();
                btnHuy.Enabled = false;
                btnLuu.Enabled = false;
                btnXoa.Enabled = false;
            }
        }
        private void dgvNhanVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvNhanVien.Rows.Count == 0)
            {
                MessageBox.Show("Dữ liệu trống!", "Thông báo");
                return;
            }
            txtMSNV.Text = dgvNhanVien.CurrentRow.Cells[0].Value.ToString();
            txtHoTen.Text = dgvNhanVien.CurrentRow.Cells[1].Value.ToString();
            dtpNgaySinh.Value = DateTime.Parse(dgvNhanVien.CurrentRow.Cells[2].Value.ToString());
            txtDiaChi.Text = dgvNhanVien.CurrentRow.Cells[3].Value.ToString();
            txtChucVu.Text = dgvNhanVien.CurrentRow.Cells[4].Value.ToString();
            txtSDT.Text = dgvNhanVien.CurrentRow.Cells[5].Value.ToString();
            btnHuy.Enabled = true;
            btnLuu.Enabled = true;
            btnXoa.Enabled = true;
        }
    }
}
