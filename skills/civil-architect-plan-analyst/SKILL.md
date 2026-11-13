---
name: civil-architect-plan-analyst
description: >-
  Expert engineering and architectural analysis toolkit for blueprints, construction drawings (CAD/DXF/PDF),
  and building development plans. Use when reviewing architectural layouts, zoning & compliance (KDB/KLB/GSB),
  structural engineering drawings, BIM models (IFC), material specifications (RKS), Quantity Take-Off (QTO),
  or Bill of Quantities / RAB calculation.
---

# Civil Engineering, Architecture & Blueprint Analysis Skill

This skill guides the agent in conducting structured, rigorous technical analyses of architectural blueprints, civil engineering construction plans, structural detailing, BIM models, and project cost estimates.

---

## 1. Blueprint & Architectural Plan Review

When analyzing architectural drawings (PDF, image, or CAD DXF):

### A. Zoning, Circulation & Regulatory Compliance
1. **Building & Urban Zoning Ratios**:
   - **KDB (Koefisien Dasar Bangunan / Ground Coverage Ratio)**: $\text{Luas Lantai Dasar} \div \text{Luas Lahan} \times 100\%$.
   - **KLB (Koefisien Lantai Bangunan / Floor Area Ratio)**: $\text{Total Luas Semua Lantai} \div \text{Luas Lahan}$.
   - **KDH (Koefisien Dasar Hijau / Green Open Space Ratio)**: Persentase area resapan terbuka hijau terhadap luas kavling.
   - **GSB (Garis Sempadan Bangunan / Setback Line)**: Jarak bebas antara as jalan / batas kepemilikan tanah dengan dinding terluar bangunan.
2. **Spatial Layout & Circulation**:
   - Hierarchy of spaces: Public $\rightarrow$ Semi-Public $\rightarrow$ Private $\rightarrow$ Service.
   - Ergonomics & Accessibility: Corridor widths (min. 1.2 m commercial / 0.9 m residential), door openings, ramp inclinations (max 1:12), and emergency egress paths.
   - Natural ventilation & daylighting: Window-to-floor area ratio (typically min. 10–15% for living spaces).

### B. CAD Data Extraction (`ezdxf` / Python)
- Layer analysis: Parse architectural layers (walls, doors, windows, annotations).
- Polyline boundary extraction: Compute net internal room areas ($m^2$) and perimeters ($m$) for finishing schedules (flooring, skirting, wall plastering).

---

## 2. Structural & Civil Engineering Review

When evaluating civil/structural drawings (foundation, framing, reinforcement detailing):

### A. Structural Load Path & Framing Continuity
1. **Vertical & Lateral Load Path**:
   - Slab $\rightarrow$ Secondary Beam $\rightarrow$ Primary Beam $\rightarrow$ Column $\rightarrow$ Foundation $\rightarrow$ Subsoil.
   - Column grid alignment: Check for cantilevered/floating columns (*kolom gantung*) or irregular stiffness distribution (soft-story hazards).
2. **Material Specifications**:
   - Concrete strength ($f'_c$ in MPa or K-kg/cm²): e.g., K-250/fc 20 MPa for standard structural frames, K-300+ for high-stress members.
   - Steel reinforcement yield strength ($f_y$): BJTP (plain) vs BJTS (deformed/ulir: e.g., BJTS 420B).
   - Concrete cover thickness (*selimut beton*): e.g., 40–50 mm in contact with ground/soil, 20–25 mm for indoor beams/slabs.

### B. Structural Code Conformity (SNI / ACI / Eurocode)
- Check detailing requirements: Hook angles (135° seismic hooks for stirrups/sengkang), lap splice lengths ($L_d$), and shear confinement zones near beam-column joints.

---

## 3. BIM & Clash Detection (IFC Models)

When working with 3D Building Information Models (`ifcopenshell`):

1. **Hierarchy & Entity Parsing**:
   - `IfcProject` $\rightarrow$ `IfcSite` $\rightarrow$ `IfcBuilding` $\rightarrow$ `IfcBuildingStorey`.
   - Structural vs Architectural entities: `IfcColumn`, `IfcBeam`, `IfcSlab`, `IfcWall`, `IfcFooting`.
2. **Clash Detection & Geometric Interference**:
   - Structural vs. Architectural: Columns protruding into clear door openings or window glazing.
   - Structural vs. MEP (Mechanical, Electrical, Plumbing): Large HVAC ducts or pipe penetrations clashing with reinforced concrete beams without sleeves.

---

## 4. Quantity Take-Off (QTO) & RAB (Bill of Quantities) Review

When reviewing construction budgets and volume calculations:

1. **Volume Verification (3-Way Verification)**:
   - Match **Gambar Kerja (Drawings)** $\leftrightarrow$ **RKS / Spek Teknis (Specifications)** $\leftrightarrow$ **Daftar Kuantitas / BoQ (RAB)**.
   - Soil works: Cut and fill balance, foundation excavation volume.
   - Reinforced concrete volume ($m^3$) and reinforcement ratio (kg besi / $m^3$ beton: typically 100–150 kg/m³ for standard commercial beams/columns).
   - Masonry & finishing: Wall area minus opening deductions ($m^2$).
2. **Unit Price Analysis (Analisis Harga Satuan Pekerjaan / AHSP)**:
   - Verify material, labor, and equipment components against realistic regional market rates.

---

## 5. Construction Review Report Format

When delivering technical blueprint/drawing reviews, structure the findings as follows:

```markdown
# CONSTRUCTION & BLUEPRINT TECHNICAL REVIEW REPORT

**Nama Proyek / Project**: [Nama Proyek Bangunan / Infrastruktur]
**Dokumen yang Direview**: [Gambar Arsitektur / Struktur / BoQ / File CAD / IFC]
**Disiplin yang Dikaji**: [Arsitektur / Struktur Sipil / MEP / Quantity Surveying]

---

### I. Ringkasan Eksekutif & Kesesuaian Regulasi
- Kesesuaian zoning tata ruang: KDB, KLB, KDH, GSB.
- Evaluasi kelayakan umum gambar kerja.

### II. Evaluasi Teknis Rinci (Section-by-Section)
1. **Aspek Arsitektur & Ergonomi Ruang**: Sirkulasi, pencahayaan/penghawaan, zonasi fungsi.
2. **Aspek Struktur & Ketahanan Sipil**: Sistem pembebanan, kontinuitas grid kolom, mutu bahan, dan detail pembesian.
3. **Pemeriksaan Tabrakan (Clash Detection / Discrepancies)**: Ketidakcocokan antara gambar arsitektur vs struktur vs MEP.

### III. Validasi Kuantitas & RAB (Quantity Take-Off)
- Tabel perbandingan volume gambar vs volume RAB (identifikasi over-budget atau under-volume).

### IV. Catatan RFI (Request for Information) & Rekomendasi Perbaikan
- Daftar ketidakjelasan detail yang harus diklarifikasi ke perencana arsitek/struktur sebelum pelaksanaan lapangan.
```
