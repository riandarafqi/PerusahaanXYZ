-- Tabel Departemen
CREATE TABLE "Departments"(
    "IdDepartment" INT NOT NULL PRIMARY KEY,
    "NamaDepartemen" VARCHAR(100) NOT NULL,
    "Alamat" VARCHAR(255) NOT NULL
);

-- Tabel Karyawan
CREATE TABLE "Karyawan"(
    "IdKaryawan" INT IDENTITY(1,1) PRIMARY KEY,
    "IdDepartment" INT NOT NULL,
    "NamaKaryawan" NVARCHAR(100) NOT NULL,
    "TanggalLahir" DATE NOT NULL,
    "NomorTelepon" NVARCHAR(16) NOT NULL,
    "Alamat" NVARCHAR(255) NOT NULL,
    CONSTRAINT "FK_Karyawan_Department" FOREIGN KEY ("IdDepartment") REFERENCES "Departments"("IdDepartment")
);

-- Tabel Jabatan
CREATE TABLE "Jabatan"(
    "IdJabatan" INT NOT NULL PRIMARY KEY,
    "IdKaryawan" INT NOT NULL,
    "NamaJabatan" VARCHAR(100) NOT NULL,
    "StatusJabatan" NVARCHAR(50) CHECK ("StatusJabatan" IN (N'Aktif', N'Tidak Aktif')) NOT NULL,
    CONSTRAINT "FK_Jabatan_Karyawan" FOREIGN KEY ("IdKaryawan") REFERENCES "Karyawan"("IdKaryawan")
);

-- Tabel Gaji
CREATE TABLE "Gaji"(
    "IdGaji" INT NOT NULL PRIMARY KEY,
    "IdKaryawan" INT NOT NULL,
    "JumlahGaji" BIGINT NOT NULL,
    "TanggalPengajian" DATE NOT NULL,
    CONSTRAINT "FK_Gaji_Karyawan" FOREIGN KEY ("IdKaryawan") REFERENCES "Karyawan"("IdKaryawan")
);