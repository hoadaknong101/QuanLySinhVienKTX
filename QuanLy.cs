namespace QuanLySinhVienKTX
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("QuanLy")]
    public partial class QuanLy
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int SoPhong { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaNV { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayNhan { get; set; }

        public virtual NhanVien NhanVien { get; set; }

        public virtual Phong Phong { get; set; }
    }
}
