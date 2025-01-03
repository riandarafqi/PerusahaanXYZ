CREATE VIEW TotalGaji AS
SELECT SUM(JumlahGaji) AS TotalGaji
FROM Gaji;

SELECT * FROM TotalGaji;


CREATE VIEW RataRataGaji AS
SELECT AVG(JumlahGaji) AS RataRataGaji
FROM Gaji;

SELECT * FROM RataRataGaji;

CREATE VIEW JumlahKaryawan AS
SELECT COUNT(*) AS JumlahKaryawan
FROM Karyawan;

SELECT * FROM JumlahKaryawan;

CREATE VIEW KaryawanPerDepartemen AS
SELECT IdDepartments, COUNT(*) AS JumlahKaryawan
FROM Karyawan
GROUP BY IdDepartments;

SELECT * FROM KaryawanPerDepartemen

CREATE VIEW KaryawanGajiTinggi AS
SELECT COUNT(*) AS JumlahKaryawanGajiTinggi
FROM Gaji
WHERE JumlahGaji > 10000000;

SELECT * FROM KaryawanGajiTinggi;

CREATE VIEW GajiTertinggi AS
SELECT MAX(JumlahGaji) AS GajiTertinggi
FROM Gaji;

SELECT * FROM GajiTertinggi

CREATE VIEW GajiTerendah AS
SELECT MIN(JumlahGaji) AS GajiTerendah
FROM Gaji;

SELECT * FROM GajiTerendah


select * from Karyawan
Where NamaKaryawan = 'Dwiyan';