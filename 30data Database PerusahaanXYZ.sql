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






INSERT INTO "Departments" VALUES
(1, 'IT', 'Bandung'),
(2, 'HR', 'Jakarta'),
(3, 'Finance', 'Surabaya'),
(4, 'Marketing', 'Yogyakarta'),
(5, 'Operations', 'Bandung'),
(6, 'Legal', 'Jakarta'),
(7, 'Logistics', 'Surabaya'),
(8, 'R&D', 'Bandung'),
(9, 'Quality Control', 'Jakarta'),
(10, 'Support', 'Yogyakarta'),
(11, 'Procurement', 'Surabaya'),
(12, 'Public Relations', 'Jakarta'),
(13, 'Customer Service', 'Bandung'),
(14, 'Sales', 'Yogyakarta'),
(15, 'Engineering', 'Bandung'),
(16, 'Administration', 'Surabaya'),
(17, 'Warehouse', 'Jakarta'),
(18, 'Product Development', 'Bandung'),
(19, 'Business Analysis', 'Yogyakarta'),
(20, 'Event Planning', 'Jakarta'),
(21, 'Facility Management', 'Bandung'),
(22, 'Creative Design', 'Surabaya'),
(23, 'Compliance', 'Jakarta'),
(24, 'Education and Training', 'Bandung'),
(25, 'Data Science', 'Yogyakarta'),
(26, 'Risk Management', 'Surabaya'),
(27, 'Maintenance', 'Jakarta'),
(28, 'Internal Audit', 'Bandung'),
(29, 'Security', 'Surabaya'),
(30, 'Media Relations', 'Yogyakarta');


INSERT INTO "Karyawan" VALUES
(1, 1, 'Alice', '1990-01-15', 62811111111, 'Jl. Anggrek No.5, Bandung'),
(2, 2, 'Bob', '1985-03-22', 62822222222, 'Jl. Merpati No.10, Jakarta'),
(3, 3, 'Charlie', '1992-07-05', 62833333333, 'Jl. Mawar No.8, Surabaya'),
(4, 4, 'Diana', '1989-11-19', 62844444444, 'Jl. Melati No.3, Yogyakarta'),
(5, 5, 'Eve', '1993-04-08', 62855555555, 'Jl. Kamboja No.7, Bandung'),
(6, 6, 'Frank', '1990-06-12', 62866666666, 'Jl. Kenanga No.12, Bandung'),
(7, 7, 'Grace', '1988-09-30', 62877777777, 'Jl. Angkasa No.4, Jakarta'),
(8, 8, 'Hank', '1995-12-01', 62888888888, 'Jl. Surya No.9, Surabaya'),
(9, 9, 'Ivy', '1991-02-18', 62899999999, 'Jl. Pelangi No.1, Yogyakarta'),
(10, 10, 'John', '1987-05-25', 62810101010, 'Jl. Cemara No.15, Bandung'),
(11, 11, 'Karen', '1990-03-10', 62811121212, 'Jl. Cempaka No.6, Surabaya'),
(12, 12, 'Leo', '1992-07-15', 62822232323, 'Jl. Dahlia No.9, Jakarta'),
(13, 13, 'Mona', '1989-11-25', 62833343434, 'Jl. Soka No.7, Bandung'),
(14, 14, 'Nathan', '1993-06-05', 62844454545, 'Jl. Sakura No.8, Yogyakarta'),
(15, 15, 'Olivia', '1995-04-30', 62855565656, 'Jl. Tulip No.4, Bandung'),
(16, 16, 'Peter', '1990-09-12', 62866676767, 'Jl. Anggrek No.10, Surabaya'),
(17, 17, 'Quinn', '1987-03-18', 62877787878, 'Jl. Mawar No.3, Jakarta'),
(18, 18, 'Rachel', '1994-08-09', 62888898989, 'Jl. Melati No.2, Bandung'),
(19, 19, 'Steve', '1991-12-19', 62899910101, 'Jl. Teratai No.1, Yogyakarta'),
(20, 20, 'Tina', '1988-05-22', 62810111212, 'Jl. Kamboja No.5, Jakarta'),
(21, 21, 'Uma', '1992-10-30', 62812131414, 'Jl. Flamboyan No.6, Bandung'),
(22, 22, 'Victor', '1986-01-15', 62813141515, 'Jl. Cemara No.9, Surabaya'),
(23, 23, 'Wendy', '1990-11-12', 62814151616, 'Jl. Angkasa No.7, Jakarta'),
(24, 24, 'Xander', '1993-02-27', 62815161717, 'Jl. Merpati No.8, Bandung'),
(25, 25, 'Yasmine', '1991-07-05', 62816171818, 'Jl. Sakura No.10, Yogyakarta'),
(26, 26, 'Zack', '1989-12-20', 62817181919, 'Jl. Soka No.11, Jakarta'),
(27, 27, 'Amy', '1994-03-14', 62818192020, 'Jl. Tulip No.3, Bandung'),
(28, 28, 'Brian', '1995-08-30', 62819202121, 'Jl. Teratai No.6, Surabaya'),
(29, 29, 'Cindy', '1988-06-22', 62820212222, 'Jl. Dahlia No.4, Jakarta'),
(30, 30, 'David', '1990-09-10', 62821232323, 'Jl. Cempaka No.9, Yogyakarta');


INSERT INTO "Jabatan" VALUES
(1, 1, 'Manager', 'Aktif'),
(2, 2, 'Staff', 'Aktif'),
(3, 3, 'Supervisor', 'Aktif'),
(4, 4, 'Intern', 'NonAktif'),
(5, 5, 'Manager', 'Aktif'),
(6, 6, 'Senior Staff', 'Aktif'),
(7, 7, 'Junior Staff', 'Aktif'),
(8, 8, 'Head of Department', 'Aktif'),
(9, 9, 'Coordinator', 'Aktif'),
(10, 10, 'Analyst', 'NonAktif'),
(11, 11, 'Consultant', 'Aktif'),
(12, 12, 'Technician', 'NonAktif'),
(13, 13, 'Clerk', 'Aktif'),
(14, 14, 'Specialist', 'Aktif'),
(15, 15, 'Supervisor', 'Aktif'),
(16, 16, 'Manager', 'Aktif'),
(17, 17, 'Assistant', 'NonAktif'),
(18, 18, 'Senior Analyst', 'Aktif'),
(19, 19, 'Coordinator', 'Aktif'),
(20, 20, 'Advisor', 'Aktif'),
(21, 21, 'Intern', 'NonAktif'),
(22, 22, 'Team Lead', 'Aktif'),
(23, 23, 'Officer', 'Aktif'),
(24, 24, 'Chief', 'Aktif'),
(25, 25, 'Deputy', 'Aktif'),
(26, 26, 'Strategist', 'Aktif'),
(27, 27, 'Executive', 'NonAktif'),
(28, 28, 'Assistant Manager', 'Aktif'),
(29, 29, 'Researcher', 'Aktif'),
(30, 30, 'Planner', 'Aktif');

INSERT INTO "Gaji" VALUES
(1, 1, 10000000, '2024-01-01'),
(2, 2, 8500000, '2024-01-01'),
(3, 3, 9000000, '2024-01-01'),
(4, 4, 4000000, '2024-01-01'),
(5, 5, 12000000, '2024-01-01'),
(6, 6, 11000000, '2024-01-01'),
(7, 7, 8000000, '2024-01-01'),
(8, 8, 15000000, '2024-01-01'),
(9, 9, 9500000, '2024-01-01'),
(10, 10, 5000000, '2024-01-01'),
(11, 11, 9500000, '2024-01-01'),
(12, 12, 6000000, '2024-01-01'),
(13, 13, 7000000, '2024-01-01'),
(14, 14, 8500000, '2024-01-01'),
(15, 15, 12000000, '2024-01-01'),
(16, 16, 11000000, '2024-01-01'),
(17, 17, 4500000, '2024-01-01'),
(18, 18, 15500000, '2024-01-01'),
(19, 19, 13000000, '2024-01-01'),
(20, 20, 10000000, '2024-01-01'),
(21, 21, 7500000, '2024-01-01'),
(22, 22, 9000000, '2024-01-01'),
(23, 23, 8000000, '2024-01-01'),
(24, 24, 10500000, '2024-01-01'),
(25, 25, 12500000, '2024-01-01'),
(26, 26, 13500000, '2024-01-01'),
(27, 27, 6000000, '2024-01-01'),
(28, 28, 14000000, '2024-01-01'),
(29, 29, 8500000, '2024-01-01'),
(30, 30, 9500000, '2024-01-01');

SELECT * FROM Departments;
SELECT * FROM Karyawan;
SELECT * FROM Jabatan;
SELECT * FROM Gaji;