# ============================================================
# P1 EXACT PAYLOAD FIX PLAN
# ============================================================

status: p1-workpack
owner: Boss
prepared_by: Zero
updated_at: 2026-04-15 23:01:10
base_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app

## 0. purpose

この文書は、
P1アプリについて exact payload 固定を進めるための作業計画である。

P1定義:
- pricing unknown など、正本化を止める欠損がある
- 次の固定順は pricing -> exact payload -> schema -> release gate

## 1. summary

| item | value |
|---|---:|
| p1_app_count | 6 |
| payload_fix_needed_count | 5 |

## 2. app-by-app payload plan

| no | app_code | app_name_en | payload_current | payload_target | source_file | review_owner | db_review_owner | final_decider |
|---:|---|---|---|---|---|---|---|---|
| 1 | BAPP-003 | ExpenseSettlement | not-assessed | expense_submit / expense_approve / expense_reject / expense_settle / erp_publish_result | 00_EXPENSE_SETTLEMENT_REGENERATED_FULL_PACK.md | Boss | 佐藤（DB担当） | Boss |
| 2 | BAPP-004 | InvoiceFlow | exact-payload-present | review exact request/response payload completeness + collection action payload | 00_INVOICE_FLOW_INTEGRATED.md | Boss | 佐藤（DB担当） | Boss |
| 3 | BAPP-005 | Mbo | not-assessed | goal_create / goal_update / evaluation_submit / evaluation_approve | pricing-source:00_MBO_FULL_INTEGRATED_CANONICAL.md | Boss | 佐藤（DB担当） | Boss |
| 4 | BAPP-007 | OrderFlow | not-assessed | order_create / order_review / order_approve / order_export | 00_ORDER_FLOW_INTEGRATED.md | Boss | 佐藤（DB担当） | Boss |
| 5 | BAPP-009 | ProductPortfolioManager | not-assessed | product_create / product_version / portfolio_publish / portfolio_compare | 00_PRODUCT_PORTFOLIO_MANAGER_FULL_INTEGRATED_REGENERATED.md | Boss | 佐藤（DB担当） | Boss |
| 6 | BAPP-012 | TalentGrowth | not-assessed | growth_plan_create / evaluation_submit / feedback_publish / talent_review | 00_TALENT_GROWTH_INTEGRATED.md | Boss | 佐藤（DB担当） | Boss |

## 3. payload fixation rule

各アプリで最低限固定するもの:
- request payload exact field list
- response payload exact field list
- success / validation_error / permission_error / conflict の返却差分
- ERP publication or external reflection payload boundary
- local draft state と external send state の分離

## 4. deliverables

各P1アプリで最終的に欲しい成果物:
- API request exact payload doc
- API response exact payload doc
- state transition and error matrix
- send / publish button exact action note
