# ============================================================
# AICompanyManager Phase AC Work Packet Department Ledger Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AC
status: work-packet-department-ledger-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase AC adds the canonical operating model:

- company-wide rules are held at company level
- design document ledgers are held by departments / organization units
- President issues policy
- Manager creates the initial broad breakdown table
- Leader expands Manager rows into deliverable units and task rows
- Worker executes task rows and creates concrete deliverables

## 2. Scope

Phase AC adds:

- company unified rules model
- department design document ledger
- structured work packet with minimal free text
- department bulk delivery
- department inbox
- Manager broad breakdown table
- Leader task breakdown rows
- Worker deliverable records
- context binding by explicit scope, not name guessing

## 3. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- server upload
- production storage
- git push
