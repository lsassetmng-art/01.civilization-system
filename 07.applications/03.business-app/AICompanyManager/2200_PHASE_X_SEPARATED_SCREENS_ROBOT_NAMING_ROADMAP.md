# ============================================================
# AICompanyManager Phase X Separated Screens And Robot Naming Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase X
status: separated-screens-robot-naming-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase W completed:
- company creation
- multiple companies
- multiple organization trees per company
- organization unit creation
- parent unit tree structure
- AIWorker selection for organization units

Phase X reflects the next review.

## 2. Review Inputs

修正:
- 会社追加、組織追加を別画面にする
- 会社変更、組織変更を別画面にする
- ロボット命名は会社単位ではなく、各作業ロボット単位にする
- 表示は「名前@ロール」にする

## 3. Phase X Scope

- separate company add screen
- separate company edit screen
- separate organization add screen
- separate organization edit screen
- move robot naming from company-level to organization-unit-level
- display work robots as robot_name@role
- keep AIWorker selection as worker source selection
- update mock data
- update UI
- add Phase X test

## 4. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- billing
- deployment
- git push
