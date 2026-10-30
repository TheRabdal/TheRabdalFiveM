# TheRabdal FiveM Server - Panduan Step by Step

Server FiveM dibangun dengan framework **Qbox Project** untuk komunitas TheRabdal Roleplay.

---

## 📋 Daftar Isi
1. [Persyaratan Sistem](#1-persyaratan-sistem)
2. [Install Database](#2-install-database)
3. [Konfigurasi Server](#3-konfigurasi-server)
4. [Import SQL Resources](#4-import-sql-resources)
5. [Jalankan Server](#5-jalankan-server)
6. [Setup Admin](#6-setup-admin)
7. [Verifikasi Instalasi](#7-verifikasi-instalasi)
8. [Troubleshooting](#8-troubleshooting)

---

## 1. Persyaratan Sistem

### Software yang Dibutuhkan
| Software | Versi Minimum | Link Download |
|----------|---------------|---------------|
| **Windows** | Windows 10/11 64-bit | - |
| **MySQL/MariaDB** | 8.0 / 10.6+ | https://dev.mysql.com/downloads/ |
| **Visual C++ Redistributable** | Latest (x64) | https://aka.ms/vs/17/release/vc_redist.x64.exe |
| **FiveM Client** | Latest | https://fivem.net/ |

### Cek Prasyarat
```cmd
# Cek MySQL service berjalan
net start mysql

# Atau jika pakai MariaDB
net start mariadb
```

---

## 2. Install Database

### 2.1 Buat Database Baru
Buka **MySQL Command Line Client** atau **MySQL Workbench**, jalankan:

```sql
-- Buat database dengan charset utf8mb4
CREATE DATABASE Qbox_AE9FFF 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;

-- Verifikasi database terbuat
SHOW DATABASES;
```

### 2.2 Import Schema Utama (qbox_ae9fff.sql)
```cmd
# Masuk ke folder project
cd C:\Users\kauts\Downloads\TheRabdalFiveM

# Import schema utama
mysql -u root -p Qbox_AE9FFF < qbox_ae9fff.sql
```
> **Catatan:** Akan meminta password MySQL root. Tekan Enter jika tidak ada password.

### 2.3 Verifikasi Import Berhasil
```sql
USE Qbox_AE9FFF;
SHOW TABLES;
```
Harus muncul tabel seperti: `players`, `jobs`, `gangs`, `vehicles`, `items`, dll.

---

## 3. Konfigurasi Server

### 3.1 Edit File `server.cfg`
Buka file: `txData/Qbox_AE9FFF.base/server.cfg`

**WAJIB DIUBAH:**

```cfg
# Baris 9: Ganti license key FiveM (dapatkan di https://keymaster.fivem.net)
sv_licenseKey "cfxk_YOUR_LICENSE_KEY_HERE"

# Baris 16: Sesuaikan koneksi database
# Format: mysql://USER:PASSWORD@HOST/DATABASE?charset=utf8mb4
set mysql_connection_string "mysql://root:YOUR_PASSWORD@localhost/Qbox_AE9FFF?charset=utf8mb4"

# Baris 5: Opsional - Steam Web API Key (untuk login Steam)
# Dapatkan di https://steamcommunity.com/dev/apikey
set steam_webApiKey "YOUR_STEAM_API_KEY"
```

**OPSIONAL (Sesuaikan Kebutuhan):**
```cfg
# Baris 10: Nama server di browser FiveM
sv_hostname "TheRabdal Roleplay - Your Server Name"

# Baris 4: Max players (default 48)
sv_maxclients 48

# Baris 15: Build GTA wajib (jangan diubah kecuali tahu apa yang dilakukan)
set sv_enforceGameBuild 3258
```

### 3.2 Edit File `config.json` (txAdmin)
Buka file: `txData/default/config.json`

```json
{
  "version": 2,
  "general": {
    "serverName": "TheRabdal Roleplay"
  },
  "server": {
    "dataPath": "C:/Users/kauts/Downloads/TheRabdalFiveM/txData/Qbox_AE9FFF.base/"
  }
}
```
> **Penting:** Pastikan `dataPath` menunjuk ke folder `Qbox_AE9FFF.base` yang benar.

### 3.3 Konfigurasi Voice (Opsional)
Buka file: `txData/Qbox_AE9FFF.base/voice.cfg`

Default sudah optimal. Jika pakai **external Mumble server**, uncomment dan isi:
```cfg
setr voice_externalAddress "IP_MUMBLE_SERVER"
setr voice_externalPort 64738
```

---

## 4. Import SQL Resources Tambahan

Jalankan **satu per satu** di MySQL:

### 4.1 qbx_weed (Job Weed)
```cmd
mysql -u root -p Qbox_AE9FFF < txData/Qbox_AE9FFF.base/resources/[qbx]/qbx_weed/sql/qbx_weed.sql
```

### 4.2 NPWD (Phone System)
```cmd
mysql -u root -p Qbox_AE9FFF < txData/Qbox_AE9FFF.base/resources/[npwd]/npwd/import.sql
```

### 4.3 Verifikasi Semua Table
```sql
USE Qbox_AE9FFF;
SHOW TABLES LIKE '%weed%';
SHOW TABLES LIKE '%npwd%';
SHOW TABLES LIKE '%phone%';
```

---

## 5. Jalankan Server

### 5.1 Metode Manual (CMD)
```cmd
# 1. Masuk ke folder server
cd C:\Users\kauts\Downloads\TheRabdalFiveM\server

# 2. Jalankan server
FXServer.exe +exec server.cfg
```

### 5.2 Metode dengan txAdmin (Web Panel)
```cmd
cd C:\Users\kauts\Downloads\TheRabdalFiveM\server
FXServer.exe +set sv_configFile server.cfg +set txAdminPort 40120
```
Akses panel: **http://localhost:40120**

### 5.3 Buat Shortcut/Bat File (Recommended)
Buat file `start_server.bat` di folder root:
```bat
@echo off
title TheRabdal FiveM Server
cd /d "C:\Users\kauts\Downloads\TheRabdalFiveM\server"
FXServer.exe +exec server.cfg
pause
```

### 5.4 Jalankan sebagai Administrator
> **Wajib:** Klik kanan CMD/bat file → **Run as Administrator**

---

## 6. Setup Admin

### 6.1 Dapatkan FiveM Identifier
1. Buka: https://forum.fivem.net/t/what-is-my-forum-fivem-identifier/85308
2. Atau join server → tekan F8 → ketik `status` → copy `fivem:xxxxxxxx`

### 6.2 Tambahkan ke `server.cfg`
Buka `txData/Qbox_AE9FFF.base/server.cfg`, tambah di baris 88-89:

```cfg
## Permissions ##
add_principal identifier.fivem:15056680 group.admin  # Ganti dengan identifier ANDA
add_principal identifier.fivem:YOUR_ID_HERE group.admin  # Tambah baris ini
exec permissions.cfg
```

### 6.3 Restart Server
Setelah edit `server.cfg`, **restart server** agar berlaku.

### 6.4 Test Admin In-Game
- Join server
- Tekan F8 → ketik: `/admin`
- Harus muncul menu admin (jika resource admin terpasang)

---

## 7. Verifikasi Instalasi

### 7.1 Cek Console Server
Tunggu hingga muncul:
```
[qbx_core] Framework initialized
[ox_inventory] Inventory started
[pma-voice] Voice server started
[npwd] Phone system ready
Server is ready to accept connections
```

### 7.2 Test Koneksi
1. Buka FiveM Client
2. Direct Connect: `localhost:30120` atau `127.0.0.1:30120`
3. Atau cari di server browser: "TheRabdal Roleplay"

### 7.3 Cek Resource Status
Di console server ketik:
```
ensure qbx_core
ensure ox_inventory
ensure pma-voice
ensure npwd
ensure qbx_npwd
```
Semua harus muncul **[STARTED]**

### 7.4 API Endpoints Test
```cmd
# Info server
curl http://localhost:30120/info.json

# Daftar pemain
curl http://localhost:30120/players.json

# Resource list
curl http://localhost:30120/resources.json
```

---

## 8. Troubleshooting

### ❌ Error: "Failed to connect to MySQL"
**Penyebab:** MySQL tidak jalan / salah password / salah host
**Solusi:**
```cmd
# Cek service MySQL
services.msc → cari MySQL → Start

# Test koneksi manual
mysql -u root -p -h localhost
```

### ❌ Error: "Invalid license key"
**Penyebab:** `sv_licenseKey` salah / expired / belum diverifikasi
**Solusi:**
- Generate key baru di https://keymaster.fivem.net
- Pastikan key dimulai dengan `cfxk_`
- Restart server setelah ganti key

### ❌ Error: "Resource qbx_core not found"
**Penyebab:** Folder resources tidak lengkap / path salah
**Solusi:**
```cmd
# Cek struktur folder
dir txData\Qbox_AE9FFF.base\resources\[qbx]\qbx_core
```
Harus ada `fxmanifest.lua` di dalamnya.

### ❌ Voice tidak jalan / tidak keluar suara
**Ceklist:**
- [ ] `voice_useNativeAudio true` di `voice.cfg`
- [ ] Windows Firewall: Allow `FXServer.exe` UDP 30120
- [ ] Di FiveM settings → Voice → Input/Output device benar
- [ ] Test: Tekan **GRAVE key (`)** untuk ganti proximity

### ❌ Phone (NPWD) tidak buka
**Ceklist:**
- [ ] `npwd` dan `qbx_npwd` started
- [ ] `import.sql` sudah di-import ke database
- [ ] Keybind default: **F1** atau **K** (cek `ox.cfg` baris 76)

### ❌ Server crash / close tiba-tiba
**Cek log:**
```cmd
type txData\default\logs\server.log
type txData\default\logs\fxserver.log
```
Cari error merah (ERROR/FATAL), googling kode errornya.

### ❌ "sv_maxclients" error
Jika error maxclients > 48, ubah di `server.cfg`:
```cfg
sv_maxclients 48  # Max 48 untuk Onesync Infinity
```

---

## 📁 Struktur File Penting

```
TheRabdalFiveM/
├── qbox_ae9fff.sql                    ← Schema database UTAMA (import pertama)
├── start_server.bat                   ← Buat sendiri untuk mudah jalankan
├── server/
│   ├── FXServer.exe                   ← Binary server (run as Admin)
│   └── *.dll                          ← Jangan dihapus!
└── txData/
    ├── Qbox_AE9FFF.base/              ← FOLDER UTAMA SERVER
    │   ├── server.cfg                 ← KONFIGURASI UTAMA (EDIT INI)
    │   ├── voice.cfg                  ← Setting voice
    │   ├── ox.cfg                     ← Setting ox_lib/inventory/target
    │   ├── permissions.cfg            ← ACE permissions admin
    │   ├── misc.cfg                   ← Misc server settings
    │   └── resources/                 ← Semua resource di sini
    │       ├── [qbx]/                 ← Jobs Qbox (mechanic, weed, dll)
    │       ├── [ox]/                  ← Ox resources
    │       ├── [npwd]/                ← Phone system
    │       ├── [standalone]/          ← xt-prison, dll
    │       ├── [assets]/              ← MLO (pillbox hospital)
    │       └── [voice]/               ← pma-voice, mm_radio
    └── default/
        ├── config.json                ← txAdmin config
        └── logs/                      ← Log error di sini
```

---

## 🔧 Perintah Berguna (Server Console)

| Perintah | Fungsi |
|----------|--------|
| `refresh` | Reload resource list |
| `ensure [nama]` | Start resource (contoh: `ensure qbx_core`) |
| `restart [nama]` | Restart resource |
| `stop [nama]` | Stop resource |
| `status` | Info server & players |
| `clientkick [id] [alasan]` | Kick player |
| `add_principal identifier.fivem:xxx group.admin` | Tambah admin live (tanpa restart) |

---

## 🌐 Port yang Harus Dibuka (Firewall/Router)

| Port | Protokol | Fungsi | Wajib? |
|------|----------|--------|--------|
| **30120** | **TCP + UDP** | Game traffic | ✅ Ya |
| **30120** | **TCP** | Server list/heartbeat | ✅ Ya |
| 40120 | TCP | txAdmin web panel | Jika pakai txAdmin |

**Windows Firewall:**
```powershell
# Run as Admin PowerShell
New-NetFirewallRule -DisplayName "FiveM Server" -Direction Inbound -LocalPort 30120 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "FiveM Server UDP" -Direction Inbound -LocalPort 30120 -Protocol UDP -Action Allow
```

**Router (Port Forwarding):**
- Forward **30120 TCP+UDP** ke IP local server

---

## 📞 Support & Link Berguna

| Link | Deskripsi |
|------|-----------|
| [Qbox Docs](https://docs.qbox.re/) | Dokumentasi framework utama |
| [FiveM Server Manual](https://docs.fivem.net/docs/server-manual/) | Manual server official |
| [Ox Resources](https://overextended.dev/) | ox_lib, ox_inventory, ox_target |
| [NPWD Docs](https://projecterror.dev/docs/npwd/) | Phone system documentation |
| [Keymaster](https://keymaster.fivem.net/) | Dapatkan license key |
| [FiveM Forum](https://forum.fivem.net/) | Tanya jawab komunitas |

---

## ⚠️ Catatan Penting

1. **JANGAN** share `sv_licenseKey` ke publik
2. **JANGAN** commit file `.cfg` dengan password asli ke GitHub
3. **SELALU** backup database sebelum update resource besar
4. **GUNAKAN** `screen` / `pm2` / NSSM untuk production (auto-restart)
5. **MONITOR** `txData/default/logs/` secara berkala

---

## 📝 Changelog Setup

| Tanggal | Perubahan |
|---------|-----------|
| 2026-10-31 | Dokumentasi step-by-step dibuat |

---

**Selamat! Server TheRabdal FiveM siap dijalankan! 🎮**

> Butuh bantuan? Cek log di `txData/default/logs/server.log` atau tanya di Discord komunitas.