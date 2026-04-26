# ============================================================
# AICompanyManager Multi Handoff And Task Handoff Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase V
status: multi-handoff-task-handoff-canon-created

## 1. Canon

Handoff is not limited to company policy.

AICompanyManager must support multiple handoff packages.

Supported handoff types:
- company_policy
- task
- design_in_progress
- development_in_progress
- delivery_preparation
- issue_fix

## 2. Task Handoff

Task handoff includes:
- task title
- task owner role
- selected AIWorker
- current task state
- input materials
- output expectations
- next command
- safety status

## 3. Multiple Handoff Packages

The app can create several handoff packages for the same company.

Examples:
- one for company policy
- one for current task
- one for implementation continuation
- one for final delivery check

## 4. Oneblock Rule

Each handoff package must be pasteable into another chat.

It should be self-contained.
