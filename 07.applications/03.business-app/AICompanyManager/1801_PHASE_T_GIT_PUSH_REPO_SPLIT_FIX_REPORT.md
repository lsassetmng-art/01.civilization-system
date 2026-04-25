# ============================================================
# AICompanyManager Phase T Git Push Repo Split Fix Report
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase T
status: repo-split-git-push-fix-started
generated_at: 20260425_190030

## 1. Cause

Previous push failed because the guarded push script was executed through bash correctly, but the script attempted to add both design and implementation paths in one repository context.

Design path:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager

Implementation path:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager

These may belong to different git repositories, or the implementation path may be outside the detected design repository.

## 2. Fix

This run detects git repositories separately and only stages paths inside each detected repository.

## 3. Safety

- unrelated apps are not intentionally staged
- repo-outside paths are skipped
- unrelated pre-staged files cause abort
- RLS apply is not executed
- live AIWorkerOS call is not executed
