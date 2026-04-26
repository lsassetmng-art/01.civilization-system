# ============================================================
# AICompanyManager Phase AF Three Routes CSV Template Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AF
status: three-routes-csv-template-started
owner: Boss
prepared_by: Zero

## 1. Purpose

Phase AF validates and adds support for three work routes and department task ledger CSV workflow.

## 2. Three Routes

1. President to Worker route
   - President policy
   - Manager broad breakdown
   - Leader deliverable/task breakdown
   - Worker deliverable creation

2. User to Manager route
   - user provides department task ledger or work packet to Manager
   - Manager distributes broad rows to Leaders
   - Leaders assign task rows to Workers

3. User to Leader route
   - user provides department task ledger or work packet to Leader
   - Leader assigns task rows to Workers

## 3. CSV Workflow

Department task ledger must support:

- one-by-one row addition
- CSV upload
- CSV preview
- CSV import
- error row display
- valid row bulk import

## 4. CSV Template UX

Do not show the ChatGPT CSV prompt at the top of the main ledger screen.

Provide a separate screen/tab:

- CSV作成テンプレ

It contains:
- required columns
- optional columns
- CSV header
- sample CSV
- ChatGPT prompt
- one-click copy button

## 5. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- server upload
- production storage
- git push
