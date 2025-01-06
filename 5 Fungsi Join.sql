CREATE VIEW KaryawanJabatan AS
SELECT Karyawan.NamaKaryawan, 
		Jabatan.NamaJabatan,
		Jabatan.StatusJabatan
FROM Karyawan
INNER JOIN Jabatan ON Karyawan.IdKaryawan = Jabatan.IdJabatan;


CREATE VIEW KaryawanDenganDepartment  AS
SELECT Karyawan.NamaKaryawan,
		Departments.NamaDepartment
FROM Karyawan
LEFT JOIN Departments ON Karyawan.IdKaryawan = Departments.IdDepartments


CREATE VIEW DepartmentDenganKaryawan  AS
SELECT Departments.NamaDepartment,
		 Karyawan.NamaKaryawan
FROM Departments
RIGHT JOIN Karyawan ON Departments.IdDepartments = Karyawan.IdKaryawan



CREATE VIEW Detail AS
SELECT 
	Karyawan.IdKaryawan,
	Karyawan.NamaKaryawan,
	Karyawan.TanggalLahir,
	Karyawan.Nomor_Telepon,
	Karyawan.Alamat,
	Departments.IdDepartments,
	Departments.NamaDepartment,
	Departments.AlamatDepartments
FROM Karyawan
FULL JOIN Departments ON Karyawan.IdKaryawan = Departments.IdDepartments;



CREATE VIEW KombinasiKaryawanDanDepartment AS
SELECT 
	Karyawan.IdKaryawan,
	Karyawan.NamaKaryawan,
	Karyawan.TanggalLahir,
	Karyawan.Nomor_Telepon,
	Karyawan.Alamat,
	Departments.IdDepartments,
	Departments.NamaDepartment,
	Departments.AlamatDepartments
FROM Karyawan
CROSS JOIN Departments

SELECT * FROM KaryawanJabatan
SELECT * FROM KaryawanDenganDepartment 
SELECT * FROM DepartmentDenganKaryawan 
SELECT * FROM Detail
SELECT * FROM KombinasiKaryawanDanDepartment 