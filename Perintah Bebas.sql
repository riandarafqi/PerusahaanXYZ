CREATE VIEW ViewKaryawanJabatanGaji AS
SELECT 
    Karyawan.NamaKaryawan,
    Jabatan.NamaJabatan,
    DATEDIFF(YEAR, Karyawan.TanggalLahir, GETDATE()) AS Umur,
    Gaji.JumlahGaji
FROM 
    Karyawan
LEFT JOIN 
    Jabatan ON Karyawan.IdKaryawan = Jabatan.IdKaryawan
LEFT JOIN 
    Gaji ON Karyawan.IdKaryawan = Gaji.IdGaji


CREATE VIEW ViewKaryawanNamaD AS
SELECT * FROM Karyawan
WHERE NamaKaryawan LIKE 'd%';


CREATE VIEW ViewKaryawanAlamatBandung AS
SELECT * 
FROM Karyawan 
    WHERE Alamat LIKE '%Bandung%'


CREATE VIEW ViewKaryawanAlamatB AS
SELECT * FROM Karyawan
WHERE Alamat LIKE '%B%'


CREATE VIEW ViewAlamatKaryawanDepartments AS
SELECT Alamat FROM Karyawan
UNION
SELECT AlamatDepartments FROM Departments;


 
SELECT * FROM ViewKaryawanJabatanGaji ORDER BY NamaKaryawan ASC;
SELECT * FROM ViewKaryawanNamaD;
SELECT * FROM ViewKaryawanAlamatBandung;
SELECT * FROM ViewKaryawanAlamatB;
SELECT * FROM ViewAlamatKaryawanDepartments;