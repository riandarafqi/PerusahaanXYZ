CREATE OR ALTER PROCEDURE ManageKaryawan
    @action_type NVARCHAR(10),
    @id_karyawan INT = NULL,
    @id_departments INT = NULL,
    @nama_karyawan NVARCHAR(255) = NULL,
    @tanggal_lahir DATE = NULL,
    @nomor_telepon NVARCHAR(15) = NULL,
    @alamat NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @action_type = 'ADD'
    BEGIN
        INSERT INTO Karyawan (IdDepartments, NamaKaryawan, TanggalLahir, Nomor_Telepon, Alamat)
        VALUES (@id_departments, @nama_karyawan, @tanggal_lahir, @nomor_telepon, @alamat);
    END
    ELSE IF @action_type = 'UPDATE'
    BEGIN
UPDATE Karyawan
SET 
    IdDepartments = ISNULL(@id_departments, IdDepartments),
    NamaKaryawan = ISNULL(@nama_karyawan, NamaKaryawan),
    TanggalLahir = ISNULL(@tanggal_lahir, TanggalLahir),
    Nomor_Telepon = ISNULL(@nomor_telepon, Nomor_Telepon),
    Alamat = ISNULL(@alamat, Alamat)
WHERE IdKaryawan = @id_karyawan;    END
    ELSE IF @action_type = 'DELETE'
    BEGIN
        DELETE FROM Karyawan WHERE IdKaryawan = @id_karyawan;
    END
    ELSE
    BEGIN
        THROW 50000, 'Invalid action_type: valid values are ADD, UPDATE, DELETE', 1;
    END
END;

EXEC ManageKaryawan @action_type = 'DELETE', @id_karyawan = 1;
EXEC ManageKaryawan @action_type = 'UPDATE', 
                    @id_karyawan = 1, 
                    @nama_karyawan = 'John Smith';

					EXEC ManageKaryawan @action_type = 'ADD',
                    @id_departments = 1, 
                    @nama_karyawan = 'Jane Doe', 
                    @tanggal_lahir = '1990-01-01', 
                    @nomor_telepon = '08123456789', 
                    @alamat = 'Jl. Merdeka';


