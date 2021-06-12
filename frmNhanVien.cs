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
    }
}
