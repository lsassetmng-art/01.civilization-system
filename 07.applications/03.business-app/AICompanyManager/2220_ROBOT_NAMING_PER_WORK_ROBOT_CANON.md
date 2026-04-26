# ============================================================
# AICompanyManager Robot Naming Per Work Robot Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase X
status: robot-naming-per-work-robot-canon-created

## 1. Canon

Robot naming is not company-level.

Robot naming belongs to each work robot assignment.

Each organization unit has:
- robot_name
- ai_role
- aiworker_id

## 2. Display Rule

Work robot display format:

- robot_name@ai_role

Examples:
- アルファ社長@President
- 進行管理一号@Manager
- 制作リード一号@Leader
- 実制作一号@Worker

## 3. AIWorker Selection

AIWorker selection remains separate from robot naming.

AIWorker is the source/candidate worker selected from AIWorkerOS catalog.
robot_name is the display/name used inside the company organization.

## 4. Dashboard Rule

Dashboard and organization tree must display robot as:

- 名前@ロール

Do not display only role.
Do not display company-level robot naming rule as the main naming field.
