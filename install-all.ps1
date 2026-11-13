# Skrip Instalasi Otomatis Lingkungan Kerja
Write-Host "=== Memulai Instalasi Lingkungan Kerja ===" -ForegroundColor Cyan

# 1. Update pip
Write-Host "1. Mengupdate pip..." -ForegroundColor Yellow
python -m pip install --upgrade pip

# 2. Instalasi modul standar (Bagian A)
Write-Host "2. Menginstal Pustaka Standar (Bagian A)..." -ForegroundColor Yellow
python -m pip install -r requirements-standard.txt

# 3. Instalasi modul akademisi (Bagian B)
Write-Host "3. Menginstal Pustaka Peneliti & Reviewer (Bagian B)..." -ForegroundColor Yellow
python -m pip install -r requirements-academic.txt

# 4. Instalasi modul finansial & audit (Bagian C)
Write-Host "4. Menginstal Pustaka Finansial & Audit (Bagian C)..." -ForegroundColor Yellow
python -m pip install -r requirements-finance.txt

# 5. Instalasi modul teknik sipil & arsitek (Bagian D)
Write-Host "5. Menginstal Pustaka Teknik Sipil & Arsitektur (Bagian D)..." -ForegroundColor Yellow
python -m pip install -r requirements-civil.txt

# 6. Salin Skills jika direktori Antigravity ada
$geminiSkills = "$HOME\.gemini\config\skills"
if (Test-Path "$HOME\.gemini\config") {
    Write-Host "6. Menyalin Custom Skills ke $geminiSkills..." -ForegroundColor Yellow
    if (!(Test-Path $geminiSkills)) { New-Item -ItemType Directory -Path $geminiSkills -Force | Out-Null }
    Copy-Item -Path ".\skills\*" -Destination $geminiSkills -Recurse -Force
}

Write-Host "=== Semua Instalasi Selesai dengan Sukses! ===" -ForegroundColor Green
