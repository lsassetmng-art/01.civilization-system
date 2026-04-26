# ============================================================
# AICompanyManager Company Organization Delete Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase Z
status: company-organization-delete-canon-created

## 1. Canon

AICompanyManager must support delete operations for:

- company
- organization tree
- organization unit

## 2. Company Delete

Company delete is displayed inside company dashboard.

Current local mock rule:
- selected company can be deleted
- if only one company remains, deletion is blocked
- after delete, another company becomes active
- no DB delete is executed

Future production rule:
- company delete must become soft delete or archive first
- hard delete requires separate design, audit, and confirmation

## 3. Organization Delete

Organization delete has two levels:

- organization tree delete
- organization unit delete

Current local mock rule:
- organization tree delete removes the selected tree from the selected company
- organization unit delete removes the selected unit
- child units of a deleted unit are moved to root in the current mock
- no DB delete is executed

## 4. Dashboard Placement

Company and organization delete operations belong inside company dashboard with add/change operations.

Top-level navigation remains:
- company dashboard
- handoff

## 5. Safety

Phase Z does not execute:
- DB WRITE
- RLS APPLY
- LIVE AIWORKEROS CALL
