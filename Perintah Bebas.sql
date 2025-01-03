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
ORDER BY 
    Karyawan.NamaKaryawan ASC;

SELECT * FROM Karyawan
WHERE NamaKaryawan LIKE 'd%';

SELECT * 
FROM Karyawan
ORDER BY 
  CASE 
    WHEN Alamat LIKE '%Bandung%' THEN 1
    ELSE 2
  END;


 

