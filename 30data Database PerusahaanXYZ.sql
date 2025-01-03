Create Database PerusahaanXYZ;
use PerusahaanXYZ;


CREATE TABLE "Departments"(
    "IdDepartments" BIGINT NOT NULL,
    "NamaDepartment" VARCHAR(255) NOT NULL,
    "AlamatDepartments" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Departments" ADD CONSTRAINT "departments_iddepartments_primary" PRIMARY KEY("IdDepartments");
CREATE TABLE "Karyawan"(
    "IdKaryawan" BIGINT NOT NULL,
    "IdDepartments" BIGINT NOT NULL,
    "NamaKaryawan" VARCHAR(255) NOT NULL,
    "TanggalLahir" DATE NOT NULL,
    "Nomor_Telepon" VARCHAR(16) NOT NULL,
    "Alamat" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Karyawan" ADD CONSTRAINT "karyawan_idkaryawan_primary" PRIMARY KEY("IdKaryawan");
CREATE TABLE "Jabatan"(
    "IdJabatan" BIGINT NOT NULL,
    "IdKaryawan" BIGINT NOT NULL,
    "NamaJabatan" VARCHAR(255) NOT NULL,
    "StatusJabatan" NVARCHAR(255) CHECK
        ("StatusJabatan" IN('Aktif','NonAktif')) NOT NULL
);
ALTER TABLE
    "Jabatan" ADD CONSTRAINT "jabatan_idjabatan_primary" PRIMARY KEY("IdJabatan");
CREATE TABLE "Gaji"(
    "IdGaji" BIGINT NOT NULL,
    "IdKaryawan" BIGINT NOT NULL,
    "JumlahGaji" BIGINT NOT NULL,
    "TanggalPengajian" DATE NOT NULL
);
ALTER TABLE
    "Gaji" ADD CONSTRAINT "gaji_idgaji_primary" PRIMARY KEY("IdGaji");
ALTER TABLE
    "Karyawan" ADD CONSTRAINT "karyawan_iddepartments_foreign" FOREIGN KEY("IdDepartments") REFERENCES "Departments"("IdDepartments");
ALTER TABLE
    "Gaji" ADD CONSTRAINT "gaji_idkaryawan_foreign" FOREIGN KEY("IdKaryawan") REFERENCES "Karyawan"("IdKaryawan");
ALTER TABLE
    "Jabatan" ADD CONSTRAINT "jabatan_idkaryawan_foreign" FOREIGN KEY("IdKaryawan") REFERENCES "Karyawan"("IdKaryawan");





SELECT * FROM Departments;
SELECT * FROM Karyawan;
SELECT * FROM Jabatan;
SELECT * FROM Gaji;