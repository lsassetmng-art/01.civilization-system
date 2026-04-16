# ============================================================
# LIFE PLANNER FINAL DESIGN STATUS
# ============================================================

status: design-pre-implementation
system: LifePlanner
owner: Boss
prepared_by: Zero
schema: life

current_stage:
  - 実装前の設計パッケージ段階
  - persistence schema 前提は life
  - 実装・DDL・SQLはまだ開始しない
  - screen / payload / logical model / policy / runtime / operations まで設計済み

completed_design_areas:
  - constitution
  - architecture
  - logical model
  - screen inventory
  - screen transition
  - screen item exact
  - payload exact
  - access control
  - pricing and scope
  - state machine
  - validation
  - notification and review policy
  - dashboard and derived indicators
  - collaboration and conflict policy
  - archive / delete / restore policy
  - settings / checklist / risk / value work
  - AI assist policy
  - acceptance / traceability / edge cases
  - freeze / audit / glossary

intentionally_not_started:
  - physical ddl
  - implementation code
  - ui code
  - integration code
  - migration plan
  - test code

final_design_position:
  - このディレクトリは実装直前の設計正本候補として扱う
  - 次にやるべきは実装ではなく、必要なら最終監査と軽微修正である
