# ============================================================
# AICompanyManager Phase Y Dashboard Integrated Handoff Files Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase Y
status: dashboard-integrated-handoff-files-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase X completed:
- company add screen
- company edit screen
- organization add screen
- organization edit screen
- robot naming per work robot
- display rule: robot_name@role

Phase Y reflects the next review.

## 2. Review Inputs

修正:
- 組織ツリー追加も欲しい
- 会社追加変更、組織追加変更は会社ダッシュボードに含める
- 引き継ぎは ChatGPT みたいに追加ファイルも可能としたい

## 3. Phase Y Scope

- integrate company add/edit inside company dashboard
- integrate organization tree add inside company dashboard
- integrate organization unit add/edit inside company dashboard
- keep dashboard as the main operation surface
- add handoff attachment UI
- allow multiple handoff attached files metadata
- include attachment list in handoff oneblock
- update test

## 4. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- server file upload
- real file storage
- billing
- deployment
- git push
