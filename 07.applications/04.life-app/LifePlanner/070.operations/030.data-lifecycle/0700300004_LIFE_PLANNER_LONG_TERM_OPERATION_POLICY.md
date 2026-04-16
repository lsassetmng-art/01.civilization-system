# ============================================================
# LIFE PLANNER LONG TERM OPERATION POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 030.data-lifecycle
owner: Boss
prepared_by: Zero
schema: life

long_term_policy:
  - 計画は短期タスク管理より長寿命を前提に扱う
  - goal や event は完了後も履歴価値がある
  - review_log は長期変化の記録として重視する
  - archive により過去の設計意図を振り返れるようにする

recommended_housekeeping:
  - finished plans -> archive
  - obsolete candidates -> dismiss
  - outdated share settings -> review during semiannual or annual review
  - template-like test plans -> delete candidate

operational_warning:
  - over-deleting can destroy long-term context
  - owner should prefer archive for meaningful plans
