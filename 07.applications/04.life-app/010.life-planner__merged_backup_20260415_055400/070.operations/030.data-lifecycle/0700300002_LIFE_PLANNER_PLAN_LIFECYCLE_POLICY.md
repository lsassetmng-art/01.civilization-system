# ============================================================
# LIFE PLANNER PLAN LIFECYCLE POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 030.data-lifecycle
owner: Boss
prepared_by: Zero
schema: life

plan_lifecycle_stages:
  - draft
  - active
  - archived
  - pending_delete_conceptual
  - deleted_conceptual

stage_meanings:
  draft:
    - 作成途中
    - 一部項目不足あり
    - ownerが整理中

  active:
    - 通常運用中
    - goal / event / review / share の中心対象

  archived:
    - 終了または保管対象
    - 通常編集は抑制
    - 参照中心

  pending_delete_conceptual:
    - 削除意思はあるが猶予期間中という設計概念
    - 実装前段階では概念定義のみ

  deleted_conceptual:
    - 完全削除後の概念状態
    - 現段階では挙動設計のみ

archive_recommended_cases:
  - 古い人生計画を保管したい
  - 新しい計画へ切り替えたい
  - 完了済みの長期計画を残したい

delete_recommended_cases:
  - 誤作成した空計画
  - テスト用計画
  - 明確に不要で保管価値がない計画

design_policy:
  - archive is reversible
  - delete is high-friction
  - active plan can become archived
  - archived plan can be restored to active by owner
