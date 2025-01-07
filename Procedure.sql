CREATE OR ALTER PROCEDURE GetKaryawanDetailsByDepartment
    @IdDepartments BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        k."IdKaryawan",
        k."NamaKaryawan",
        k."TanggalLahir",
        k."Nomor_Telepon",
        k."Alamat",
        j."NamaJabatan",
        j."StatusJabatan",
        g."JumlahGaji",
        g."TanggalPengajian"
    FROM "Karyawan" k
    LEFT JOIN "Jabatan" j ON k."IdKaryawan" = j."IdKaryawan"
    LEFT JOIN "Gaji" g ON k."IdKaryawan" = g."IdKaryawan"
    WHERE k."IdDepartments" = @IdDepartments;
END;

CREATE OR ALTER PROCEDURE RekapGajiByDepartment
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        d."NamaDepartment",
        SUM(g."JumlahGaji") AS "TotalGaji"
    FROM "Departments" d
    LEFT JOIN "Karyawan" k ON d."IdDepartments" = k."IdDepartments"
    LEFT JOIN "Gaji" g ON k."IdKaryawan" = g."IdKaryawan"
    GROUP BY d."NamaDepartment";
END;

CREATE OR ALTER PROCEDURE UpdateGajiByJabatan
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE "Gaji"
    SET "JumlahGaji" = 
        CASE 
            WHEN j."NamaJabatan" = 'Manager' THEN 15000000
            WHEN j."NamaJabatan" = 'Supervisor' THEN 10000000
            WHEN j."NamaJabatan" = 'Staff' THEN 7000000
            ELSE 5000000
        END
    FROM "Gaji" g
    JOIN "Jabatan" j ON g."IdKaryawan" = j."IdKaryawan";
END

