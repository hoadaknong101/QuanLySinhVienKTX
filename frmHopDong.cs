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
    public partial class frmHopDong : Form
    {
        private SVDB db = new SVDB();
        private List<Phong> lsPhong;
        public frmHopDong()
        {
            InitializeComponent();
        }

        private void frmHopDong_Load(object sender, EventArgs e)
        {
            LoadData();
            btnLuu.Enabled = false;
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
        }
        private void LoadData()
        {
            dgvHopDong.DataSource = db.HopDongs.ToList();
            lsPhong = db.Phongs.ToList();
            cbbPhong.DataSource = lsPhong;
            cbbPhong.DisplayMember = "SoPhong";
            cbbPhong.ValueMember = "Tang";
            Setting();
        }
        private void Setting()
        {
            dgvHopDong.Columns[0].HeaderText = "Mã HĐ";
            dgvHopDong.Columns[1].HeaderText = "Ngày bắt đầu";
            dgvHopDong.Columns[1].Width = 150;
            dgvHopDong.Columns[2].Width = 150;
            dgvHopDong.Columns[2].HeaderText = "Ngày kết thúc";
            dgvHopDong.Columns[3].HeaderText = "Số phòng";
            dgvHopDong.Columns[4].HeaderText = "MSSV";
            dgvHopDong.Columns[4].Width = 150;
            dgvHopDong.Columns[5].Visible = false;
            dgvHopDong.Columns[6].Visible = false;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            var sv = new HopDong()
            {
                MaHD = txtHoTen.Text,
                NgayBD = DateTime.Parse(dtpBatDau.Value.ToString()),
                NgayKT = DateTime.Parse(dtpKetThuc.Value.ToString()),
                MSSV = int.Parse(txtMSSV.Text),
                SoPhong = int.Parse(cbbPhong.Text),
                Phong = db.Phongs.Find(int.Parse(cbbPhong.Text.Trim())),
                SinhVien = db.SinhViens.Find(int.Parse(txtMSSV.Text.Trim()))
            };
            db.HopDongs.Add(sv);
            db.SaveChanges();
            MessageBox.Show("Thêm thành công !!!", "Thông báo");
            LoadData();
            btnLuu.Enabled = false;
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            var sv = db.HopDongs.Find(txtMaHD.Text.Trim());
            sv.NgayBD = DateTime.Parse(dtpBatDau.Value.ToString());
            sv.NgayKT = DateTime.Parse(dtpKetThuc.Value.ToString());
            sv.MSSV = int.Parse(txtMSSV.Text);
            sv.SoPhong = int.Parse(cbbPhong.Text);
            db.SaveChanges();
            LoadData();
            btnLuu.Enabled = false;
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if(dgvHopDong.Columns.Count == 0)
            {
                MessageBox.Show("Dữ liêu trống", "Error");
                return;
            }
            try
            {
                if (MessageBox.Show("Bạn có chắc không ?", "Xóa", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    HopDong x = new HopDong()
                    {
                        MaHD = txtMaHD.Text.ToString().Trim()
                    };
                    db.HopDongs.Remove(x);
                    db.SaveChanges();
                    LoadData();
                    btnLuu.Enabled = false;
                    btnHuy.Enabled = false;
                    btnXoa.Enabled = false;
                }
            }
            catch
            {
                MessageBox.Show("Dữ liêu trống", "Error");
                return;
            }
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            txtHoTen.Clear();
            txtMaHD.Clear();
            txtMSSV.Clear();
            btnLuu.Enabled = false;
            btnHuy.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dgvHopDong_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvHopDong.Rows.Count == 0)
            {
                MessageBox.Show("Dữ liêu trống", "Error");
                return;
            }
            txtMaHD.Text = dgvHopDong.CurrentRow.Cells[0].Value.ToString();
            txtMSSV.Text = dgvHopDong.CurrentRow.Cells[4].Value.ToString();
            var HoTen = db.SinhViens.Find(int.Parse(dgvHopDong.CurrentRow.Cells[4].Value.ToString()));
            txtHoTen.Text = HoTen.HoTen;
            dtpBatDau.Value = DateTime.Parse(dgvHopDong.CurrentRow.Cells[1].Value.ToString());
            dtpKetThuc.Value = DateTime.Parse(dgvHopDong.CurrentRow.Cells[2].Value.ToString());
            cbbPhong.Text = dgvHopDong.CurrentRow.Cells[3].Value.ToString();
            btnLuu.Enabled = true;
            btnHuy.Enabled = true;
            btnXoa.Enabled = true;
        }
    }
}
