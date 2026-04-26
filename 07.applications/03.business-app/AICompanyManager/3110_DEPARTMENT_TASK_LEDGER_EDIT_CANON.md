# ============================================================
# AICompanyManager Department Task Ledger Edit Canon
# ============================================================

phase: Phase AG
status: department-task-ledger-edit-canon-created

## 1. Canon

部門別タスク台帳 must support editing existing rows.

The ledger is not append-only at the UI level.

## 2. Edit Flow

1. Select department
2. Select existing ledger row
3. Load row into edit form
4. Change fields
5. Save update
6. Keep row id stable
7. Keep work packet and inbox bindings valid

## 3. Delete Flow

Delete is allowed in mock UI.

Production should later treat deletion as archive / inactive first.

## 4. Binding Rule

When a row is edited:

- ledger_row_id must not change
- bound_task_ledger_row_ids remain valid
- work packet bindings still point to the same row
- inbox records remain valid

## 5. UI Rule

The main department task ledger screen should show:

- row add form
- CSV upload
- CSV preview/import
- row edit form
- row list
