# 🚀 Tugas Besar: Sistem Follow Up Calon Jemaah Umrah

> **Dosen Pengampu:** Muhammad Shiddiq Azis, S.T., MBA

---

## 📊 Data Flow Diagram (DFD)

Diagram berikut menunjukkan alur data dalam sistem follow up jemaah.

### 🔹 DFD Level 0
![DFD Level 0](dfd0_new.jpg)

### 🔹 DFD Level 1
![DFD Level 1](dfd1_new.jpg)

---

## 🗄️ Entity Relationship Diagram (ERD)

Diagram berikut menunjukkan struktur database dan relasi antar entitas dalam sistem.

### 🔹 ERD
![ERD](erd.jpg)

---

## 🎨 Mockup Antarmuka

Rancangan UI aplikasi yang berfokus pada pengalaman pengguna dalam mengelola proses follow up calon jemaah.

| Dashboard Admin                        | Dashboard Staff                        | Data Jemaah                  |
| -------------------------------------- | -------------------------------------- | ---------------------------- |
| ![Dashboard Admin](DashboardAdmin.jpg) | ![Dashboard Staff](DashboardStaff.jpg) | ![Data](DataCalonJamaah.jpg) |

| Jadwal Follow Up              | Jadwal Staff                             | Tambah Jadwal                       |
| ----------------------------- | ---------------------------------------- | ----------------------------------- |
| ![Jadwal](JadwalFollowUp.jpg) | ![Jadwal Staff](JadwalFollowUpStaff.jpg) | ![Tambah](TambahJadwalFollowUp.jpg) |

| Update Follow Up              | Status Jemaah                         | Status Staff                               |
| ----------------------------- | ------------------------------------- | ------------------------------------------ |
| ![Update](UpdateFollowup.jpg) | ![Status](StatusKomunikasiJamaah.jpg) | ![Status Staff](StatusKomunikasiStaff.jpg) |

| Aktivitas                        | Catatan                            | Laporan                        |
| -------------------------------- | ---------------------------------- | ------------------------------ |
| ![Aktivitas](AktivitasStaff.jpg) | ![Catatan](CatatanJamaahStaff.jpg) | ![Laporan](LaporanClosing.jpg) |

| Manajemen                           | Settings                  | Transaksi                              |
| ----------------------------------- | ------------------------- | -------------------------------------- |
| ![Manajemen](ManajemenPengguna.jpg) | ![Settings](Settings.jpg) | ![Transaksi](TransaksiCalonJamaah.jpg) |

| Update Status                      | Login Portal                       |   |
| ---------------------------------- | ---------------------------------- | - |
| ![Update Status](UpdateStatus.jpg) | ![Login Portal](loginportal.jpeg)  |   |


---

## 🛠️ Stack Teknologi

* **Frontend:** Blade (Laravel) + TailwindCSS
* **Backend:** PHP dengan Laravel Framework
* **Database:** MySQL
* **Deployment:** Railway

---

## ⚙️ Fitur Utama

* 🔐 Autentikasi Login (Admin & Staff)
* 👥 Manajemen Data Calon Jemaah (CRUD)
* 📞 Manajemen Follow Up
* 📊 Dashboard Statistik
* 📈 Laporan Closing & Conversion Rate
* 🔎 Pencarian dan Filter Data

---

## 👤 Role Pengguna

### Admin

* Mengelola data user
* Mengakses semua fitur
* Melihat laporan lengkap

### Staff

* Menginput data calon jemaah
* Melakukan follow up
* Melihat dashboard

---

## 🗂️ Struktur Sistem

* **User**
* **Calon Jemaah**
* **Follow Up**
* **Laporan**

Relasi:

* User → Follow Up
* Calon Jemaah → Follow Up

---

## 💻 Cara Instalasi (Local)

1. Clone repository:

```bash
git clone [url-repo]
```

2. Masuk ke folder project:

```bash
cd IMPAL1/laravel
```

3. Install dependency:

```bash
composer install
```

4. Copy file environment:

```bash
cp .env.example .env
```

5. Generate key:

```bash
php artisan key:generate
```

6. Atur database di `.env`:

```env
DB_DATABASE=impal1
DB_USERNAME=root
DB_PASSWORD=
```

7. Migrasi database:

```bash
php artisan migrate
```

8. Seed data:

```bash
php artisan db:seed
```

9. Jalankan server:

```bash
php artisan serve
```

10. Buka di browser:

```
http://127.0.0.1:8000
```

---

---
