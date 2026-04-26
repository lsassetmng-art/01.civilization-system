# ============================================================
# AICompanyManager Department Task Ledger CSV Import Canon
# ============================================================

phase: Phase AF
status: department-task-ledger-csv-import-canon-created

## 1. Purpose

Department task ledger rows can be added one by one, but bulk CSV import is required.

This allows users to generate task ledger rows externally, for example with ChatGPT, then upload the CSV into the app.

## 2. Required CSV Columns

- deliverable_name
- task_name
- work_type
- responsible_role
- status

## 3. Optional CSV Columns

- priority
- due_date
- responsible_robot
- reference_files
- supplemental_materials
- applicable_rules
- note

## 4. Import Flow

1. Select CSV file
2. Parse CSV
3. Preview rows
4. Show invalid rows
5. Import valid rows
6. Append rows to selected department task ledger

## 5. Validation

Required validation:

- deliverable_name is not empty
- task_name is not empty
- work_type is in allowed values
- responsible_role is Manager / Leader / Worker
- status is in allowed values

## 6. File Fields

reference_files:
- semicolon or pipe separated list of files to read before/during work

supplemental_materials:
- semicolon or pipe separated list of supplemental materials
