using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace QuanLySinhVienKTX
{
    public partial class QLSVBD : DbContext
    {
        public QLSVBD()
            : base("name=QLSVBD")
        {
        }

        public virtual DbSet<HopDong> HopDongs { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }
        public virtual DbSet<Phong> Phongs { get; set; }
        public virtual DbSet<QuanLy> QuanLies { get; set; }
        public virtual DbSet<SinhVien> SinhViens { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<HopDong>()
                .Property(e => e.MaHD)
                .IsFixedLength();

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.MaNV)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.QuanLies)
                .WithRequired(e => e.NhanVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Phong>()
                .HasMany(e => e.HopDongs)
                .WithRequired(e => e.Phong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<QuanLy>()
                .Property(e => e.MaNV)
                .IsUnicode(false);

            modelBuilder.Entity<SinhVien>()
                .Property(e => e.Lop)
                .IsFixedLength();

            modelBuilder.Entity<SinhVien>()
                .HasMany(e => e.HopDongs)
                .WithRequired(e => e.SinhVien)
                .WillCascadeOnDelete(false);
        }
    }
}
