SELECT *
FROM dbo.mahasiswa 
WHERE nama_mahasiswa IN (SELECT nama_mahasiswa FROM dbo.dpp_mahasiswa WHERE status_pembayaran = 'lunas');