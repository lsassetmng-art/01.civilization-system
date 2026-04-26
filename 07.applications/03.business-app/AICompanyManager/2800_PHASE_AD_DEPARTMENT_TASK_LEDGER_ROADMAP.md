# ============================================================
# AICompanyManager Phase AD Department Task Ledger Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AD
status: department-task-ledger-started
owner: Boss
prepared_by: Zero

## 1. Purpose

Replace the previous department design document ledger concept with a department task ledger.

The app must support software development, design companies, research work, office work, delivery work, and other business operations.

## 2. Canonical Change

Before:
- department design document ledger
- design_ledger

After:
- 部門別タスク台帳
- department_task_ledger

## 3. Canon

Design documents are not the ledger itself.

Design documents, specifications, reference images, logs, tests, handoff files, and delivery files are reference or attached files on department task ledger rows.

## 4. Workflow

President:
- issues policy

Manager:
- creates initial broad breakdown rows

Leader:
- expands rows into deliverable names and task rows

Worker:
- executes task rows and creates deliverables

## 5. Important Naming

The primary ledger key is:

- 成果物名

Task rows reference the deliverable name.

When work originates from President policy and no detailed breakdown exists yet:
- initial deliverable name and task name may be the same provisional name
- Manager and Leader later refine rows

## 6. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- server upload
- production storage
- git push
