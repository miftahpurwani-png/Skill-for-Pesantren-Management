# 🚀 Workstation & Research Environment Setup

Panduan instalasi terstandarisasi untuk lingkungan komputasi analitik, pengolahan dokumen, dan AI Assistant bagi:
* **Bagian A**: Aplikasi Standar Sistem (Pondasi Kerja)
* **Bagian B**: Khusus Peneliti Jurnal, Dosen & Reviewer Buku (Arab, Inggris, Indonesia)
* **Bagian C**: Khusus Analis Keuangan, Bisnis & Auditor
* **Bagian D**: Khusus Teknik Sipil & Arsitek

---

## ⚡ Opsi Cepat: Instalasi Otomatis (PowerShell)

Jika Anda menggunakan Windows PowerShell (Administrator), Anda bisa langsung menjalankan skrip otomatis yang sudah disediakan di repositori ini:

```powershell
# Jalankan skrip setup otomatis
.\install-all.ps1
```

---

## 🛠️ Instalasi Manual Step-by-Step

### 1. BAGIAN A: Aplikasi Standar Sistem (Wajib)
Buka **PowerShell (Run as Administrator)** dan jalankan:

```powershell
# Instalasi Software Dasar
winget install --id Git.Git -e --source winget
winget install --id Python.Python.3.12 -e --source winget
winget install --id TheDocumentFoundation.LibreOffice -e --source winget
winget install --id UB-Mannheim.TesseractOCR -e --source winget

# Pustaka Python Dasar (Data, Excel & Grafik)
python -m pip install -r requirements-standard.txt
```

> **Catatan OCR Bahasa Tambahan (Arab & Indonesia):**
> Unduh file data bahasa dan masukkan ke `C:\Program Files\Tesseract-OCR\tessdata\`:
> - [ara.traineddata (Bahasa Arab)](https://github.com/tesseract-ocr/tessdata_fast/raw/main/ara.traineddata)
> - [ind.traineddata (Bahasa Indonesia)](https://github.com/tesseract-ocr/tessdata_fast/raw/main/ind.traineddata)

---

### 2. BAGIAN B: Tambahan Peneliti Jurnal, Dosen & Reviewer
Kebutuhan: Ekstraksi PDF, OCR scan, sitasi ilmiah, statistik riset, dan analisis teks Arab.

```powershell
python -m pip install -r requirements-academic.txt
```

* **Plugin Tambahan**: Pasang plugin **Google Docs** di Antigravity IDE (`antigravity-plugins-official/plugin/gdocs`).
* **Custom Skill**: Salin folder `skills/academic-review-multilingual` ke folder Antigravity Anda di:
  `C:\Users\<Username>\.gemini\config\skills\`

---

### 3. BAGIAN C: Tambahan Analis Keuangan, Bisnis & Auditor
Kebutuhan: Kalkulasi finansial (DCF, IRR, NPV), rekonsiliasi GL/mutasi bank (fuzzy matching), deteksi fraud Benford's Law, dan kueri SQL transaksi jutaan baris.

```powershell
python -m pip install -r requirements-finance.txt
```

* **Plugin Tambahan**: Pasang plugin **Google Sheets** di Antigravity IDE (`antigravity-plugins-official/plugin/gsheets`).
* **Custom Skill**: Salin folder `skills/financial-audit-analyst` ke folder Antigravity Anda di:
  `C:\Users\<Username>\.gemini\config\skills\`

---

### 4. BAGIAN D: Tambahan Teknik Sipil & Arsitek
Kebutuhan: Pembacaan file AutoCAD (DXF), Building Information Modeling (BIM - IFC), analisis geospasial (GIS), dan mekanika struktur.

```powershell
# Software GIS Pemetaan Lahan / Kontur (Opsional)
winget install --id OSGeo.QGIS -e --source winget

# Pustaka Python Sipil & Arsitektur
python -m pip install -r requirements-civil.txt
```

---

## 📂 Struktur Repositori

```text
├── README.md                     # Panduan dokumentasi lengkap
├── install-all.ps1               # Skrip instalasi otomatis sekali klik
├── requirements-standard.txt     # Dependensi Bagian A
├── requirements-academic.txt     # Dependensi Bagian B
├── requirements-finance.txt      # Dependensi Bagian C
├── requirements-civil.txt        # Dependensi Bagian D
└── skills/                       # Folder Custom Skills untuk Antigravity
    ├── academic-review-multilingual/
    │   └── SKILL.md
    └── financial-audit-analyst/
        └── SKILL.md
```
