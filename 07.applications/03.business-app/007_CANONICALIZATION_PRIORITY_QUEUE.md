# ============================================================
# CANONICALIZATION PRIORITY QUEUE
# ============================================================

status: working-priority-queue
owner: Boss
prepared_by: Zero
updated_at: 2026-04-15 22:53:22
base_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app

## queue rule

- P1: 先に固定しないと正本化が進みにくい
- P2: 中位の欠損
- P3: 補強中心

## priority queue

| order | app_code | app_name_en | priority | readiness_score | gap_count | next_action | pricing_status | source_file_found |
|---:|---|---|---|---:|---:|---|---|---|
| 1 | BAPP-901 | ShiftManager | P1 | 25 | 9 | resolve-source-file | unknown | no |
| 2 | BAPP-005 | Mbo | P1 | 58 | 5 | fix-pricing | unknown | yes |
| 3 | BAPP-007 | OrderFlow | P1 | 58 | 5 | fix-pricing | unknown | yes |
| 4 | BAPP-012 | TalentGrowth | P1 | 66 | 4 | fix-pricing | unknown | yes |
| 5 | BAPP-003 | ExpenseSettlement | P1 | 66 | 4 | fix-pricing | unknown | yes |
| 6 | BAPP-009 | ProductPortfolioManager | P1 | 66 | 4 | fix-pricing | unknown | yes |
| 7 | BAPP-004 | InvoiceFlow | P1 | 75 | 3 | fix-pricing | unknown | yes |
| 8 | BAPP-010 | ProjectFlow | P3 | 75 | 3 | fix-api-payload-readiness | file-confirmed | yes |
| 9 | BAPP-011 | QuickForecast | P3 | 75 | 3 | fix-api-payload-readiness | user-confirmed-in-chat | yes |
| 10 | BAPP-002 | EstimateCreator | P3 | 75 | 3 | fix-api-payload-readiness | file-confirmed | yes |
| 11 | BAPP-006 | NameCardManager | P3 | 75 | 3 | fix-api-payload-readiness | file-confirmed | yes |
| 12 | BAPP-001 | AppDevelopmentStudio | P3 | 91 | 1 | fix-release-readiness | file-confirmed | yes |
| 13 | BAPP-008 | PocketSecretary | P3 | 91 | 1 | fix-release-readiness | user-confirmed-in-chat | yes |
