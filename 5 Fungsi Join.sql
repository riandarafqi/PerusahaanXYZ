SELECT Karyawan.NamaKaryawan, 
		Jabatan.NamaJabatan,
		Jabatan.StatusJabatan
FROM Karyawan
INNER JOIN Jabatan ON Karyawan.IdKaryawan = Jabatan.IdJabatan;


SELECT Karyawan.NamaKaryawan,
		Departments.NamaDepartment
FROM Karyawan
LEFT JOIN Departments ON Karyawan.IdKaryawan = Departments.IdDepartments


SELECT Departments.NamaDepartment,
		 Karyawan.NamaKaryawan
FROM Departments
RIGHT JOIN Karyawan ON Departments.IdDepartments = Karyawan.IdKaryawan


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