---
name: financial-audit-analyst
description: >-
  Comprehensive financial analysis, business analysis, and audit workflow toolkit.
  Use when conducting financial statement audits, analytical procedures (ISA 520), Benford's Law fraud tests,
  3-way reconciliation (PO, invoice, bank statements), financial ratio modeling (DuPont, Altman Z-Score),
  DCF valuation, capital budgeting (NPV, IRR), variance analysis, and Excel/SQL ledger auditing.
---

# Financial, Business & Audit Analysis Skill

This skill guides the agent in performing rigorous financial analytics, corporate business evaluations, and financial audit procedures following international auditing standards (ISA) and financial analysis best practices.

## 1. Financial Audit & Forensics Procedures

When evaluating accounting ledgers, journals, bank statements, or supporting documents:

### A. Analytical Procedures (ISA 520)
1. **Plausibility & Trend Comparison**:
   - Compare current year balances against prior year balances (Horizontal Analysis) and budget/forecasts.
   - Common-size statements (Vertical Analysis) to spot anomalies in expense-to-revenue ratios.
2. **Key Financial Auditing Ratios**:
   - Days Sales Outstanding (DSO) vs. Credit terms (flag aging debtors).
   - Inventory Turnover & Days Inventory Outstanding (DIO) (flag obsolete/slow-moving inventory).
   - Gross Margin & Operating Margin consistency across quarters.

### B. Forensic & Anomaly Detection Techniques
1. **Benford's Law Analysis**:
   - Test the distribution of first and first-two leading digits across transaction amounts (invoices, expense reimbursements, vendor payments). Significant deviations at digits 6, 7, 8, 9 often indicate manual fabrication or split transactions.
2. **Transaction Cleansing & Flagging**:
   - **Split Transactions / Structuring**: Multiple transactions just below approval thresholds (e.g., $9,900 or Rp49.500.000 where limit is $10k / Rp50jt).
   - **Timing Anomalies**: Transactions posted on weekends, national holidays, or unusual off-hours (midnight to 5 AM).
   - **Round-Sum Transactions**: Unusually frequent round numbers (e.g., exact 50.000.000, 100.000.000) in operational expenses.
   - **Duplicate Checks**: Identical amount, vendor, and date or within 48-hour windows.
   - **Sequence Gap Analysis**: Missing check numbers, invoice numbers, or journal voucher sequence gaps.

### C. Automated Reconciliation (3-Way Matching & Bank Recs)
- Compare Purchase Order (PO) vs. Goods Received Note (GRN) vs. Vendor Invoice.
- Match General Ledger Bank Account against Bank Statement records using fuzzy matching for narration/vendor variations (e.g., handling spelling nuances or abbreviated entities).
- Flag timing differences (outstanding checks, deposits in transit) vs. permanent errors.

---

## 2. Financial Modeling & Corporate Valuation

When evaluating business performance, investment viability, or valuation:

### A. Financial Health & Distress Modeling
1. **DuPont Analysis (3-Step & 5-Step)**:
   $$\text{ROE} = \left(\frac{\text{Net Income}}{\text{Revenue}}\right) \times \left(\frac{\text{Revenue}}{\text{Assets}}\right) \times \left(\frac{\text{Assets}}{\text{Equity}}\right)$$
   Break down whether ROE growth is driven by operating efficiency, asset productivity, or financial leverage.
2. **Altman Z-Score (Manufacturing & Non-Manufacturing)**:
   Assess credit risk and bankruptcy likelihood over a 2-year horizon ($Z > 2.99$ Safe, $1.81 \le Z \le 2.99$ Grey, $Z < 1.81$ Distress).

### B. Valuation & Capital Budgeting
1. **DCF (Discounted Cash Flow)**:
   - Free Cash Flow to Firm (FCFF) & Free Cash Flow to Equity (FCFE).
   - WACC estimation: Cost of Equity (CAPM) and after-tax Cost of Debt.
   - Terminal Value calculation (Gordon Growth Method vs. Exit Multiple Method).
2. **Investment Metrics**:
   - Net Present Value (NPV), Internal Rate of Return (IRR), Modified IRR (MIRR), Payback Period, and Profitability Index (PI).
   - Sensitivity Analysis: Matrix table analyzing variations in Revenue Growth vs. WACC.

---

## 3. Business Analysis & Variance Reporting

When conducting operational or managerial business reviews:

1. **Budget vs. Actual Variance Analysis**:
   - Volume Variance, Price Variance, and Cost Variance breakdown.
2. **Unit Economics & SaaS / Operational Metrics**:
   - Customer Acquisition Cost (CAC), Lifetime Value (LTV), LTV/CAC ratio, Churn Rate, Burn Rate, and Runway.
3. **Working Capital Management**:
   - Cash Conversion Cycle (CCC) = DIO + DSO - DPO.

---

## 4. Standard Audit & Financial Working Paper Format

When producing working papers (Kertas Kerja Audit / Analisis Keuangan), always document:

```markdown
# AUDIT & FINANCIAL WORKING PAPER / KERTAS KERJA

**Klien / Entitas / Periode**: [Nama Perusahaan / Periode Akuntansi]
**Area Audit / Analisis**: [Misal: Akun Piutang Usaha / Rekonsiliasi Bank / Valuasi DCF]
**Tujuan Prosedur (Objective)**: [Jelaskan apa yang diuji atau dihitung]

---

### 1. Data Sumber & Metodologi
- Deskripsi populasi data (jumlah baris transaksi, total nilai rupiah/USD).
- Teknik sampling yang digunakan (100% populasi, Monetary Unit Sampling, atau Judgmental).

### 2. Temuan / Hasil Analisis (Findings & Computation)
- Tabel komparasi / hasil rekonsiliasi / pengujian anomali.
- Identifikasi selisih (*variance*) atau temuan transaksi tidak lazim (*exceptions*).

### 3. Dampak & Analisis Risiko (Risk & Impact)
- Nilai eksposur atau dampak materialitas terhadap laporan keuangan.

### 4. Kesimpulan & Rekomendasi (Conclusion & Recommendations)
- Opini auditor / analis terkait kewajaran akun atau kelayakan finansial.
- Rekomendasi perbaikan kontrol internal atau penyesuaian jurnal (*proposed audit adjustment*).
```
