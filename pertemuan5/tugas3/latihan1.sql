CREATE TABLE Jurusan (
id BIGINT IDENTITY PRIMARY KEY,
nama_jurusan BIGINT
);

CREATE TABLE Dosen_Wali (
id BIGINT IDENTITY PRIMARY KEY,
nrp BIGINT,
nama VARCHAR (255),
tanggal_lahir DATE,
alamat VARCHAR (255),
no_hp INT
);

CREATE TABLE Mahasiswa (
id BIGINT IDENTITY PRIMARY KEY,
npm INT,
nama VARCHAR (255),
tanggal_lahir DATE,
alamat VARCHAR (255),
no_hp INT,
jurusan_id BIGINT,
dosen_wali_id BIGINT,
FOREIGN KEY (jurusan_id) REFERENCES Jurusan(id),
FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id),
);