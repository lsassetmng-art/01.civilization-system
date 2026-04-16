# ============================================================
# P1 RELEASE FIX PLAN
# ============================================================

status: p1-workpack
owner: Boss
prepared_by: Zero
updated_at: 2026-04-15 23:01:10
base_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app

## 0. purpose

この文書は、
P1アプリの release readiness を固定するための計画である。

## 1. app-by-app release plan

| no | app_code | app_name_en | release_current | release_target | pricing_fix_required | release_owner | final_decider |
|---:|---|---|---|---|---|---|---|
| 1 | BAPP-003 | ExpenseSettlement | not-assessed | fix release gate and accounting publication gate | yes | Boss | Boss |
| 2 | BAPP-004 | InvoiceFlow | not-assessed | fix release gate and ERP reflection release condition | yes | Boss | Boss |
| 3 | BAPP-005 | Mbo | not-assessed | fix release gate and evaluation cycle release condition | yes | Boss | Boss |
| 4 | BAPP-007 | OrderFlow | not-assessed | fix release gate and order publication condition | yes | Boss | Boss |
| 5 | BAPP-009 | ProductPortfolioManager | not-assessed | fix release gate and product publication condition | yes | Boss | Boss |
| 6 | BAPP-012 | TalentGrowth | not-assessed | fix release gate and HR release condition | yes | Boss | Boss |

## 2. release gate rule

各アプリで最低限固定するもの:
- pricing fixed
- payload exactness fixed
- schema and write boundary fixed
- auth boundary fixed
- offline / sync / explicit send policy fixed
- review owner / DB review owner / release owner / final decider fixed

## 3. deliverables

各P1アプリで最終的に欲しい成果物:
- release readiness checklist
- go / stop decision conditions
- owner signoff block
