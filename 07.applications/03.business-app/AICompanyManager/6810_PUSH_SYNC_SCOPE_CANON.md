# AICompanyManager Push Sync Scope Canon

phase: Phase DM-DP
status: push-sync-scope-canon

## 1. push対象

Design repo:
- /data/data/com.termux/files/home/01.civilization-system
- scope: 07.applications/03.business-app/AICompanyManager

Implementation repo:
- /data/data/com.termux/files/home/03.civilization-development
- scope: 03.business-os/AICompanyManager

## 2. commit対象

AICompanyManager配下のみ。

## 3. push対象外

- DB apply
- RLS apply
- real API connection
- live AIWorkerOS call
- unrelated app folders
- unrelated OS folders

## 4. 安全方針

push前に final local pre-push check を実行する。

push後に upstream と ahead/behind を確認する。
