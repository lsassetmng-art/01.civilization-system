# ============================================================
# AICompanyManager Push Command Memo
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase Q
status: push-command-memo-created

## 1. This Phase

Phase Q only checks repository status.

It does not execute:
- git add
- git commit
- git push

## 2. Manual Push Candidate

When Boss decides to push, inspect first:

- git status --short
- git diff --stat

## 3. Recommended Commit Scope

AICompanyManager design root:
- 01.civilization-system/07.applications/03.business-app/AICompanyManager

AICompanyManager implementation root:
- 03.civilization-development/03.business-os/AICompanyManager

## 4. Caution

Before push, confirm:
- RLS is still deferred
- live AIWorkerOS call is still deferred
- no client-side secrets exist
- current_role_code is used
- current_role is not reintroduced
