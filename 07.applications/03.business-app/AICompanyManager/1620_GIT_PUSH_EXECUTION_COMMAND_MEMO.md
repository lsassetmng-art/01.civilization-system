# ============================================================
# AICompanyManager Git Push Execution Command Memo
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase R
status: git-push-command-memo-created

## 1. Current Phase

This phase created the push script only.

It did not execute:
- git add
- git commit
- git push

## 2. Guarded Push Script

/data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tools/aicm_guarded_git_push.sh

## 3. Manual Execution After Boss PUSH OK

Use this only after explicit approval:

AICM_GIT_PUSH_GO=YES AICM_COMMIT_MESSAGE="Add AICompanyManager design and implementation package" sh "/data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tools/aicm_guarded_git_push.sh"

## 4. Caution

Before execution, confirm:
- RLS is still deferred
- live AIWorkerOS call is still deferred
- no client-side secrets exist
- current_role_code is used
- current_role is not reintroduced
