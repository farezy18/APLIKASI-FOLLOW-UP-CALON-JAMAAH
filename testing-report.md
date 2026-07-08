# 📋 Laporan Metrik Pengujian Perangkat Lunak

**Aplikasi:** Jemaah Follow Up Management System  
**Repository:** [APLIKASI-FOLLOW-UP-CALON-JAMAAH](https://github.com/username/APLIKASI-FOLLOW-UP-CALON-JAMAAH)  
**Tanggal Pengujian:** 8 Juli 2026  
**Penguji:** Muhammad Shiddiq Azis  
**Versi Aplikasi:** 1.0.0

---

## Langkah 1 – Fitur yang Diuji

Berikut adalah **5 fitur utama** yang dipilih untuk diuji pada aplikasi Jemaah Follow Up Management System:

| No | Fitur | Deskripsi |
|----|-------|-----------|
| 1 | **Login & Autentikasi** | Fitur login dengan role-based access control (Admin & Staff Marketing) |
| 2 | **CRUD Data Calon Jemaah** | Menambah, melihat, mengedit, dan menghapus data calon jemaah umrah |
| 3 | **Manajemen Jadwal Follow Up** | Membuat, menjadwalkan, dan mengelola jadwal follow up calon jemaah |
| 4 | **Status Komunikasi** | Mengelola dan mengubah status komunikasi calon jemaah (Prospek, Tertarik, Hot Lead, Closing, dll.) |
| 5 | **Dashboard & Laporan** | Menampilkan statistik, grafik aktivitas follow up, dan laporan closing |

---

## Langkah 2 – Test Case

Berikut adalah **20 test case** yang mencakup skenario positif dan negatif dari 5 fitur yang diuji:

| No | Fitur | Skenario | Expected Result | Status |
|----|-------|----------|-----------------|--------|
| 1 | Login & Autentikasi | Login dengan email dan password yang benar (Admin) | Berhasil masuk ke dashboard admin dengan menu lengkap | ✅ Pass |
| 2 | Login & Autentikasi | Login dengan email dan password yang benar (Staff Marketing) | Berhasil masuk ke dashboard staff dengan akses terbatas | ✅ Pass |
| 3 | Login & Autentikasi | Login dengan password yang salah | Muncul pesan error "Email atau password salah" | ✅ Pass |
| 4 | Login & Autentikasi | Login dengan email kosong | Muncul validasi "Email wajib diisi" | ✅ Pass |
| 5 | Login & Autentikasi | Login dengan format email tidak valid | Muncul validasi format email tidak sesuai | ❌ Fail |
| 6 | CRUD Data Calon Jemaah | Menambah data calon jemaah dengan semua field wajib diisi lengkap | Data berhasil tersimpan dan muncul di daftar calon jemaah | ✅ Pass |
| 7 | CRUD Data Calon Jemaah | Menambah data calon jemaah tanpa mengisi nama lengkap (field wajib) | Muncul validasi "Nama Lengkap wajib diisi" | ✅ Pass |
| 8 | CRUD Data Calon Jemaah | Mengedit data calon jemaah yang sudah ada (ubah nomor WhatsApp) | Data berhasil diperbarui sesuai perubahan | ✅ Pass |
| 9 | CRUD Data Calon Jemaah | Menghapus data calon jemaah dari daftar | Data berhasil dihapus dan tidak muncul lagi di daftar | ✅ Pass |
| 10 | CRUD Data Calon Jemaah | Mencari data calon jemaah berdasarkan nama di kolom pencarian | Menampilkan data yang sesuai dengan kata kunci pencarian | ✅ Pass |
| 11 | CRUD Data Calon Jemaah | Menambah data calon jemaah dengan nomor WhatsApp menggunakan huruf (bukan angka) | Muncul validasi format nomor tidak sesuai | ❌ Fail |
| 12 | Manajemen Jadwal Follow Up | Membuat jadwal follow up baru dengan data lengkap (jemaah, tanggal, jam, metode, prioritas) | Jadwal berhasil tersimpan dan muncul di daftar jadwal follow up | ✅ Pass |
| 13 | Manajemen Jadwal Follow Up | Membuat jadwal follow up tanpa memilih jemaah (field wajib) | Muncul validasi "Pilih Jemaah wajib diisi" | ✅ Pass |
| 14 | Manajemen Jadwal Follow Up | Mengubah status jadwal follow up dari "Scheduled" menjadi "Completed" | Status berhasil berubah dan tercatat di sistem | ✅ Pass |
| 15 | Manajemen Jadwal Follow Up | Filter daftar jadwal follow up berdasarkan metode (WhatsApp/Call/Meeting) | Daftar menampilkan hanya jadwal dengan metode yang dipilih | ✅ Pass |
| 16 | Manajemen Jadwal Follow Up | Membuat jadwal follow up dengan tanggal yang sudah lewat | Muncul validasi bahwa tanggal harus di masa depan | ❌ Fail |
| 17 | Status Komunikasi | Mengubah status komunikasi calon jemaah dari "Prospek" ke "Tertarik" | Status berhasil diperbarui dan badge warna berubah sesuai | ✅ Pass |
| 18 | Status Komunikasi | Mengubah status komunikasi langsung ke "Closing" tanpa melalui tahapan sebelumnya | Status berhasil diubah (sistem tidak memaksa urutan sequential) | ✅ Pass |
| 19 | Dashboard & Laporan | Mengakses halaman dashboard dan melihat statistik (Total Calon Jemaah, Follow Up Hari Ini, Jemaah Closing, Conversion Rate) | Semua widget statistik menampilkan data yang sesuai dengan database | ✅ Pass |
| 20 | Dashboard & Laporan | Melihat grafik "Follow Up Activity" dan "Closing per Month" di dashboard | Grafik menampilkan data visualisasi yang akurat dan responsif | ✅ Pass |

---

## Langkah 3 – Perhitungan Metrik Pengujian

### 3.1 Ringkasan Hasil Pengujian

| Kategori | Jumlah |
|----------|--------|
| Total Test Case | 20 |
| Test Case Pass | 17 |
| Test Case Fail | 3 |

### 3.2 Pass Rate

$$
\text{Pass Rate} = \frac{\text{Jumlah Test Case Pass}}{\text{Total Test Case}} \times 100\%
$$

$$
\text{Pass Rate} = \frac{17}{20} \times 100\% = \textbf{85\%}
$$

### 3.3 Fail Rate

$$
\text{Fail Rate} = \frac{\text{Jumlah Test Case Fail}}{\text{Total Test Case}} \times 100\%
$$

$$
\text{Fail Rate} = \frac{3}{20} \times 100\% = \textbf{15\%}
$$

### 3.4 Defect Count

Jumlah defect yang ditemukan selama pengujian:

| No | Test Case ID | Fitur | Deskripsi Defect | Severity |
|----|-------------|-------|------------------|----------|
| 1 | TC-05 | Login & Autentikasi | Sistem tidak melakukan validasi format email saat login. User bisa menginput teks tanpa format email (tanpa @) dan sistem tetap memproses request ke server, baru mengembalikan error generic. | Medium |
| 2 | TC-11 | CRUD Data Calon Jemaah | Sistem tidak melakukan validasi tipe data pada field nomor WhatsApp. User bisa memasukkan huruf/karakter non-numerik tanpa ada validasi front-end. | Medium |
| 3 | TC-16 | Manajemen Jadwal Follow Up | Sistem tidak memvalidasi tanggal pada form tambah jadwal follow up. User bisa membuat jadwal dengan tanggal yang sudah lewat tanpa ada peringatan atau pencegahan. | High |

**Total Defect Count = 3**

### 3.5 Defect Density

$$
\text{Defect Density} = \frac{\text{Total Defect}}{\text{Total Test Case}} \times 100\%
$$

$$
\text{Defect Density} = \frac{3}{20} \times 100\% = \textbf{15\%}
$$

### 3.6 Tabel Ringkasan Metrik

| Metrik | Nilai | Keterangan |
|--------|-------|------------|
| **Pass Rate** | 85% | 17 dari 20 test case berhasil |
| **Fail Rate** | 15% | 3 dari 20 test case gagal |
| **Defect Count** | 3 | 2 Medium, 1 High severity |
| **Defect Density** | 15% | 3 defect per 20 test case |

---

## Langkah 4 – Analisis dan Kesimpulan

### Analisis Hasil Pengujian

Pengujian yang dilakukan terhadap Aplikasi Jemaah Follow Up Management System menunjukkan hasil yang **cukup baik** dengan Pass Rate sebesar **85%**. Dari total 20 test case yang dieksekusi pada 5 fitur utama aplikasi, 17 test case berhasil melewati pengujian sesuai dengan expected result yang ditetapkan, sementara 3 test case mengalami kegagalan.

Fitur **Login & Autentikasi** menunjukkan performa yang baik dengan 4 dari 5 test case berhasil pass. Sistem autentikasi berbasis role (Admin dan Staff Marketing) berfungsi dengan benar, termasuk penanganan error untuk password salah dan field kosong. Namun, ditemukan satu defect pada validasi format email yang belum diimplementasikan secara optimal di sisi front-end. Meskipun server tetap menolak request yang tidak valid, pengalaman pengguna akan lebih baik jika validasi dilakukan di sisi client terlebih dahulu.

Fitur **CRUD Data Calon Jemaah** memperoleh hasil 5 dari 6 test case pass. Operasi dasar Create, Read, Update, dan Delete berfungsi dengan baik, termasuk fitur pencarian data. Defect yang ditemukan terkait dengan validasi input pada field nomor WhatsApp yang masih menerima karakter non-numerik. Hal ini berpotensi menyebabkan data yang tidak konsisten dalam database dan dapat mengganggu fungsi komunikasi seperti fitur Call yang terintegrasi pada dashboard.

Fitur **Manajemen Jadwal Follow Up** memperoleh hasil 4 dari 5 test case pass. Secara umum, fungsi penjadwalan, filtering, dan perubahan status berjalan dengan baik. Defect dengan severity **High** ditemukan pada fitur ini, yaitu tidak adanya validasi tanggal pada form pembuatan jadwal. Pengguna dapat membuat jadwal follow up dengan tanggal yang sudah lewat, yang dapat mengakibatkan data jadwal yang tidak relevan dan membingungkan staff marketing. Defect ini perlu diprioritaskan untuk diperbaiki karena berdampak langsung pada efektivitas operasional tim.

Fitur **Status Komunikasi** dan **Dashboard & Laporan** menunjukkan hasil sempurna dengan semua test case pass. Dashboard berhasil menampilkan statistik yang akurat (Total Calon Jemaah, Follow Up Hari Ini, Jemaah Closing, Conversion Rate) beserta visualisasi grafik yang responsif. Pengelolaan status komunikasi juga berfungsi dengan baik, memungkinkan transisi status yang fleksibel sesuai kebutuhan bisnis.

### Kesimpulan

Secara keseluruhan, aplikasi Jemaah Follow Up Management System berada pada kondisi yang **layak digunakan** namun masih memerlukan perbaikan pada aspek validasi input. Ketiga defect yang ditemukan berkaitan erat dengan kurangnya validasi di sisi front-end. Rekomendasi perbaikan yang diprioritaskan adalah: (1) Menambahkan validasi tanggal pada form jadwal follow up agar tidak bisa memilih tanggal lampau, (2) Menambahkan validasi format pada field nomor WhatsApp agar hanya menerima karakter numerik, dan (3) Menambahkan validasi format email pada form login. Dengan Defect Density sebesar 15%, aplikasi ini masih dalam kategori **acceptable** dan siap untuk iterasi perbaikan selanjutnya sebelum deployment ke production.

---

## Langkah 5 – Dokumentasi Screenshot

Berikut adalah screenshot sebagai bukti dokumentasi pengujian fitur-fitur aplikasi:

### Screenshot 1 – Halaman Dashboard Admin
![Dashboard Admin](/DashboardAdmin.jpg)
*Tampilan dashboard utama yang menampilkan statistik Total Calon Jemaah (1.247), Follow Up Hari Ini (32), Jemaah Closing (487), Conversion Rate (39.1%), grafik Follow Up Activity, Closing per Month, dan tabel Follow Up Terbaru.*

---

### Screenshot 2 – Halaman Data Calon Jemaah
![Data Calon Jemaah](/DataCalonJamaah.jpg)
*Tampilan daftar data calon jemaah dengan informasi nama, nomor HP, kota, status minat (Hot Lead, Tertarik, Pertimbangan, Closing, Tidak Tertarik), paket diminati, tanggal input, dan staff marketing yang bertanggung jawab. Terdapat fitur pencarian, filter status, tombol Import Data, dan Tambah Jemaah.*

---

### Screenshot 3 – Form Tambah Data Calon Jemaah
![Tambah Calon Jemaah](/TransaksiCalonJamaah.jpg)
*Tampilan form tambah data calon jemaah baru dengan section Data Pribadi (Nama, Jenis Kelamin, Kota, Umur), Kontak (WhatsApp, Email, Sumber Lead), Minat Umroh (Paket, Budget, Rencana Berangkat, Jumlah Orang), Status & Follow Up, dan Catatan Marketing.*

---

### Screenshot 4 – Halaman Jadwal Follow Up
![Jadwal Follow Up](/JadwalFollowUp.jpg)
*Tampilan daftar jadwal follow up dengan widget statistik (Follow Up Hari Ini: 32, Follow Up Minggu Ini: 127, Follow Up Terlewat: 8), filter berdasarkan metode/status/staff, dan tabel jadwal lengkap dengan status (Pending, Scheduled, Completed, Overdue).*

---

### Screenshot 5 – Form Tambah Jadwal Follow Up
![Tambah Jadwal Follow Up](/TambahJadwalFollowUp.jpg)
*Tampilan form tambah jadwal follow up baru dengan section Informasi Jemaah (Pilih Jemaah, Kontak, Paket), Jadwal Follow Up (Tanggal, Jam, Metode, Prioritas), Penanggung Jawab (Staff Marketing, Status), Catatan Follow Up, dan Reminder & Notifikasi.*

---

### Screenshot 6 – Halaman Settings
![Settings](/Settings.jpg)
*Tampilan halaman pengaturan dengan section Profile Settings (Nama, Email, Telepon, Role), Change Password, Notification Settings (Email, Follow Up Reminders, Closing, Weekly Reports, System Updates), dan System Preferences (Bahasa, Zona Waktu, Format Tanggal, Mata Uang, Dark Mode).*

---

## Informasi Tambahan

### Teknologi yang Digunakan
| Komponen | Teknologi |
|----------|-----------|
| Backend | Laravel (PHP) |
| Frontend | Blade Template + TailwindCSS |
| Database | MySQL |
| Authentication | Laravel Auth (Role-Based) |

### Lingkungan Pengujian
| Komponen | Detail |
|----------|--------|
| Browser | Google Chrome v126 |
| OS | Windows 11 |
| Server | Laravel Development Server (localhost:8000) |
| Metode Pengujian | Manual Testing (Black Box) |
