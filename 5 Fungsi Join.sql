CREATE VIEW InnerJoin AS
SELECT Karyawan.NamaKaryawan, 
		Jabatan.NamaJabatan,
		Jabatan.StatusJabatan
FROM Karyawan
INNER JOIN Jabatan ON Karyawan.IdKaryawan = Jabatan.IdJabatan;


CREATE VIEW LeftJoin AS
SELECT Karyawan.NamaKaryawan,
		Departments.NamaDepartment
FROM Karyawan
LEFT JOIN Departments ON Karyawan.IdKaryawan = Departments.IdDepartments


CREATE VIEW RightJoin AS
SELECT Departments.NamaDepartment,
		 Karyawan.NamaKaryawan
FROM Departments
RIGHT JOIN Karyawan ON Departments.IdDepartments = Karyawan.IdKaryawan



CREATE VIEW FullJoin AS
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



CREATE VIEW CrossJoin AS
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

SELECT * FROM InnerJoin
SELECT * FROM LeftJoin
SELECT * FROM RightJoin
SELECT * FROM FullJoin
SELECT * FROM CrossJoin