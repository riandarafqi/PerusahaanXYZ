CREATE TRIGGER Trigger_ValidasiGaji
ON Gaji
AFTER INSERT
AS
BEGIN
    -- Memeriksa apakah ada gaji dengan nilai negatif
    IF EXISTS (
        SELECT 1
        FROM Gaji
        WHERE IdGaji IN (SELECT IdGaji FROM INSERTED)
          AND JumlahGaji < 0
    )
    BEGIN
        RAISERROR ('Jumlah gaji tidak boleh negatif.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        PRINT 'Data gaji berhasil ditambahkan.';
    END
END;

CREATE TABLE KaryawanLog (
    LogID BIGINT IDENTITY PRIMARY KEY,
    IdKaryawan BIGINT,
    NamaKaryawan NVARCHAR(255),
    Action NVARCHAR(50),
    Timestamp DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER LogKaryawanActivity
ON Karyawan
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Untuk INSERT
    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO KaryawanLog (IdKaryawan, NamaKaryawan, Action)
        SELECT IdKaryawan, NamaKaryawan, 'INSERT'
        FROM inserted;
    END

    -- Untuk UPDATE
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO KaryawanLog (IdKaryawan, NamaKaryawan, Action)
        SELECT IdKaryawan, NamaKaryawan, 'UPDATE'
        FROM inserted;
    END

    -- Untuk DELETE
    IF EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO KaryawanLog (IdKaryawan, NamaKaryawan, Action)
        SELECT IdKaryawan, NamaKaryawan, 'DELETE'
        FROM deleted;
    END
END;
