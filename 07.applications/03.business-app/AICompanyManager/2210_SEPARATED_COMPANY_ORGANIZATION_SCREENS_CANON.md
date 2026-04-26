# ============================================================
# AICompanyManager Separated Company Organization Screens Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase X
status: separated-company-organization-screens-canon-created

## 1. Canon

The following operations must be separated into different screens:

- company add
- company edit
- organization add
- organization edit

## 2. Company Add Screen

Purpose:
- create a new company only

Fields:
- company name
- business domain
- company policy
- delivery policy

## 3. Company Edit Screen

Purpose:
- edit selected company only

Fields:
- company name
- business domain
- company policy
- delivery policy

## 4. Organization Add Screen

Purpose:
- add organization tree
- add organization unit to selected tree

Fields for unit:
- tree
- parent unit
- unit name
- purpose
- AI role
- AIWorker source
- robot name
- deliverable

## 5. Organization Edit Screen

Purpose:
- edit existing organization trees and units

Editable:
- tree name
- tree purpose
- unit parent
- unit name
- purpose
- AI role
- AIWorker source
- robot name
- deliverable
