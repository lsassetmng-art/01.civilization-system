# ============================================================
# DECISION FREEZE ROUND 1
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only
schema_name: life

frozen_decisions:
  - viewer is read-only
  - highly_sensitive can be owner-only
  - document and evidence stay separate in model
  - document and evidence can be unified in one screen
  - consultation creates suggestions, not automatic tasks/deadlines
  - advisor_contact belongs to owner scope
  - share pack stays app-specific in initial phase
  - tentative deadline remains future-ready, not fully expanded now
  - audio is deferred

intent:
  - security / share / model / screen の主要未決を先に閉じる
  - 実装前の揺れを減らす
  - 次段で共通部品や handoff 資料に進みやすくする

current_position:
  - major unresolved items mostly narrowed down
  - remaining items are lower priority or future-expansion oriented
