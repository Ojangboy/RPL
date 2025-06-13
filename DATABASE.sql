-- Membuat Tabel User
CREATE TABLE User (
    UserID VARCHAR(10) PRIMARY KEY,
    Nama VARCHAR(100),
    Email VARCHAR(100),
    Password VARCHAR(100),
    TipeUser VARCHAR(20),
    TanggalDaftar DATE
);

-- Membuat Tabel UMKM
CREATE TABLE UMKM (
    UMKM_ID VARCHAR(10) PRIMARY KEY,
    NamaUMKM VARCHAR(100),
    Deskripsi TEXT,
    Kategori VARCHAR(50)
);

-- Membuat Tabel Menu
CREATE TABLE Menu (
    MenuID VARCHAR(10) PRIMARY KEY,
    UMKM_ID VARCHAR(10),
    NamaMenu VARCHAR(100),
    DeskripsiMenu TEXT,
    Harga INT,
    Foto VARCHAR(100),
    FOREIGN KEY (UMKM_ID) REFERENCES UMKM(UMKM_ID)
);

-- Membuat Tabel Ulasan
CREATE TABLE Ulasan (
    UlasanID VARCHAR(10) PRIMARY KEY,
    UserID VARCHAR(10),
    Rating INT,
    Komentar TEXT,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- Menambahkan Data ke Tabel User
INSERT INTO User (UserID, Nama, Email, Password, TipeUser, TanggalDaftar) VALUES
('U001', 'Budi Santoso', 'budi@gmail.com', 'pass123', 'UMKM', '2025-01-01'),
('U002', 'Siti Aminah', 'siti@gmail.com', 'aminah456', 'Konsumen', '2025-01-03'),
('U003', 'Rudi Hartono', 'rudi@gmail.com', 'rudih789', 'UMKM', '2025-02-10'),
('U004', 'Lina Marlina', 'lina@gmail.com', 'lina234', 'Konsumen', '2025-03-21'),
('U005', 'Dimas Wijaya', 'dimas@gmail.com', 'dimas321', 'Konsumen', '2025-04-05');

-- Menambahkan Data ke Tabel UMKM
INSERT INTO UMKM (UMKM_ID, NamaUMKM, Deskripsi, Kategori) VALUES
('UMKM01', 'Warung Sate Haji', 'Menyajikan sate kambing dan ayam', 'Kuliner Malam'),
('UMKM02', 'Nasi Goreng 99', 'Spesialis nasi goreng berbagai rasa', 'Makanan Cepat'),
('UMKM03', 'Angkringan Pak Dul', 'Menjual makanan ringan dan kopi', 'Angkringan'),
('UMKM04', 'Bakso Bakar Mantep', 'Bakso bakar pedas dan original', 'Kuliner Malam'),
('UMKM05', 'Es Campur Karawang', 'Menjual es campur dan dessert lokal', 'Minuman');

-- Menambahkan Data ke Tabel Menu
INSERT INTO Menu (MenuID, UMKM_ID, NamaMenu, DeskripsiMenu, Harga, Foto) VALUES
('M001', 'UMKM01', 'Sate Kambing', 'Sate kambing dengan bumbu kacang', 25000, 'sate.jpg'),
('M002', 'UMKM02', 'Nasi Goreng Spesial', 'Nasi goreng dengan telur & ayam', 20000, 'nasgor.jpg'),
('M003', 'UMKM03', 'Kopi Jahe', 'Kopi hangat dengan jahe segar', 12000, 'kopi.jpg'),
('M004', 'UMKM04', 'Bakso Bakar Pedas', 'Bakso bakar dengan saus sambal', 18000, 'bakso.jpg'),
('M005', 'UMKM05', 'Es Campur Komplit', 'Es campur dengan isian lengkap', 15000, 'escampur.jpg');

-- Menambahkan Data ke Tabel Ulasan
INSERT INTO Ulasan (UlasanID, UserID, Rating, Komentar) VALUES
('UL001', 'U002', 5, 'Enak banget, bakal balik lagi!'),
('UL002', 'U004', 4, 'Lumayan, tapi agak lama pelayanannya'),
('UL003', 'U005', 5, 'Sate kambingnya mantap!'),
('UL004', 'U002', 3, 'Kopinya kurang panas'),
('UL005', 'U004', 5, 'Es campurnya segar sekali');
