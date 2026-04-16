# ============================================================
# P1 CANONICALIZATION WORKPACK
# ============================================================

status: p1-workpack
owner: Boss
prepared_by: Zero
updated_at: 2026-04-15 23:01:10
base_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app

## 0. work order

P1は次の順で固定する:
1. pricing
2. exact payload
3. schema
4. release gate

## 1. target apps

| no | app_code | app_name_en | source_file | p1_reason |
|---:|---|---|---|---|
| 1 | BAPP-003 | ExpenseSettlement | 00_EXPENSE_SETTLEMENT_REGENERATED_FULL_PACK.md | pricing_unknown_is_blocker |
| 2 | BAPP-004 | InvoiceFlow | 00_INVOICE_FLOW_INTEGRATED.md | pricing_unknown_is_blocker |
| 3 | BAPP-005 | Mbo | pricing-source:00_MBO_FULL_INTEGRATED_CANONICAL.md | pricing_unknown_is_blocker |
| 4 | BAPP-007 | OrderFlow | 00_ORDER_FLOW_INTEGRATED.md | pricing_unknown_is_blocker |
| 5 | BAPP-009 | ProductPortfolioManager | 00_PRODUCT_PORTFOLIO_MANAGER_FULL_INTEGRATED_REGENERATED.md | pricing_unknown_is_blocker |
| 6 | BAPP-012 | TalentGrowth | 00_TALENT_GROWTH_INTEGRATED.md | pricing_unknown_is_blocker |

## 2. per-app execution checklist

- pricing source line fixed
- exact request payload fixed
- exact response payload fixed
- schema name fixed
- DDL evidence fixed
- release readiness fixed
- Boss review
- 佐藤（DB担当） review
- Boss final decision

## 3. linked files

- 009_P1_EXACT_PAYLOAD_FIX_PLAN.md
- 010_P1_SCHEMA_FIX_PLAN.md
- 011_P1_RELEASE_FIX_PLAN.md
