# ============================================================
# P1 SCHEMA FIX PLAN
# ============================================================

status: p1-workpack
owner: Boss
prepared_by: Zero
updated_at: 2026-04-15 23:01:10
base_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app

## 0. purpose

この文書は、
P1アプリの schema_name / DDL evidence / write boundary を固定するための計画である。

DBレビュー参加者:
- 佐藤（DB担当）

## 1. app-by-app schema plan

| no | app_code | app_name_en | schema_current | schema_target | source_file | db_review_owner | final_decider |
|---:|---|---|---|---|---|---|---|
| 1 | BAPP-003 | ExpenseSettlement | unknown | fix schema_name + DDL evidence + approval/write boundary | 00_EXPENSE_SETTLEMENT_REGENERATED_FULL_PACK.md | 佐藤（DB担当） | Boss |
| 2 | BAPP-004 | InvoiceFlow | unknown | fix schema_name + DDL evidence + invoice/payment reflection boundary | 00_INVOICE_FLOW_INTEGRATED.md | 佐藤（DB担当） | Boss |
| 3 | BAPP-005 | Mbo | unknown | fix schema_name + DDL evidence + evaluation authority boundary | pricing-source:00_MBO_FULL_INTEGRATED_CANONICAL.md | 佐藤（DB担当） | Boss |
| 4 | BAPP-007 | OrderFlow | unknown | fix schema_name + DDL evidence + order master/write boundary | 00_ORDER_FLOW_INTEGRATED.md | 佐藤（DB担当） | Boss |
| 5 | BAPP-009 | ProductPortfolioManager | unknown | fix schema_name + DDL evidence + product/portfolio boundary | 00_PRODUCT_PORTFOLIO_MANAGER_FULL_INTEGRATED_REGENERATED.md | 佐藤（DB担当） | Boss |
| 6 | BAPP-012 | TalentGrowth | unknown | fix schema_name + DDL evidence + HR authority boundary | 00_TALENT_GROWTH_INTEGRATED.md | 佐藤（DB担当） | Boss |

## 2. schema fixation rule

各アプリで最低限固定するもの:
- schema_name
- master table / transaction table / queue table
- external publication queue の有無
- approval state table と ERP reflection state table の分離
- read boundary / write boundary / sync boundary
- DDL evidence line

## 3. deliverables

各P1アプリで最終的に欲しい成果物:
- schema summary
- table candidate list
- write authority matrix
- DDL evidence memo
