# ============================================================
# EXPENSE FIXED VS TUNABLE BOUNDARY NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Separates what is fixed from what remains tunable in the current
ExpenseSettlement design round.

fixed_by_default:
- BusinessOS-side lightweight but serious positioning
- ERP as accounting source of truth
- multilingual support requirement
- multi currency support requirement
- iphone / android / pc / tablet requirement
- initial release includes MUST + SHOULD
- state separation model
- authority separation model
- audit/history/exception model
- candidate/template/formal-object separation
- major policy-document structure
- restart/handoff/closure document structure

tunable_by_default:
- exact threshold numbers
- exact category rows by company scope
- exact localized label catalogs
- exact finance reason code catalogs
- exact evidence mismatch tolerance values
- exact export masking values
- exact settlement confirmation source catalog
- exact reminder cadence values
- exact file size/count values

boundary_rule:
Future work should tune tunable areas first.
Fixed-by-default areas should not be reopened casually.

