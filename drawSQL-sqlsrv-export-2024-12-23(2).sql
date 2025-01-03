CREATE TABLE "Departments" (
    "IdDepartments" SERIAL PRIMARY KEY,
    "NamaDepartment" VARCHAR(255) NOT NULL,
    "AlamatDepartments" VARCHAR(255) NOT NULL
);

CREATE TABLE "Karyawan" (
    "IdKaryawan" SERIAL PRIMARY KEY,
    "IdDepartments" INT NOT NULL,
    "NamaKaryawan" VARCHAR(255) NOT NULL,
    "TanggalLahir" DATE NOT NULL,
    "NomorTelepon" VARCHAR(15) NOT NULL, -- Mengganti INT ke VARCHAR untuk nomor telepon
    "Alamat" VARCHAR(255) NOT NULL,
    CONSTRAINT "FK_Departments_Karyawan" FOREIGN KEY ("IdDepartments") REFERENCES "Departments"("IdDepartments")
);

CREATE TABLE "Jabatan" (
    "IdJabatan" SERIAL PRIMARY KEY,
    "IdKaryawan" INT NOT NULL,
    "NamaJabatan" VARCHAR(255) NOT NULL,
    "StatusJabatan" VARCHAR(50) NOT NULL CHECK ("StatusJabatan" IN ('Aktif', 'Tidak Aktif')),
    CONSTRAINT "FK_Karyawan_Jabatan" FOREIGN KEY ("IdKaryawan") REFERENCES "Karyawan"("IdKaryawan")
);

CREATE TABLE "Gaji" (
    "IdGaji" SERIAL PRIMARY KEY,
    "IdKaryawan" INT NOT NULL,
    "JumlahGaji" BIGINT NOT NULL,
    "TanggalPengajian" DATE NOT NULL,
    CONSTRAINT "FK_Karyawan_Gaji" FOREIGN KEY ("IdKaryawan") REFERENCES "Karyawan"("IdKaryawan")
);
