DELETE Mahasiswa
FROM Mahasiswa
JOIN Jurusan ON Mahasiswa.jurusan_id = Jurusan.id
JOIN Dosen_Wali ON Mahasiswa.dosen_wali_id = Dosen_Wali.id
WHERE Mahasiswa.id < 6;