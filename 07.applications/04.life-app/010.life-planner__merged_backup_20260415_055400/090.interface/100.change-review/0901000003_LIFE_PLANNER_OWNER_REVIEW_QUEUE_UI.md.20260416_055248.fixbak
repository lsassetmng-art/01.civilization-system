# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER OWNER REVIEW QUEUE UI
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 100.change-review
owner: Boss
prepared_by: Zero
schema: life

owner_review_queue_purpose:
  - owner should see pending important decisions in one place

queue_items:
  - pending_reflection_candidates
  - major_shared_updates
  - scenario_decision_pending
  - proposal_like_changes if enabled later

item_fields:
  - item_type
  - source_role_or_app
  - related_plan
  - related_entity
  - summary
  - created_at
  - action_needed

default_order:
  - newest first
  - but high-sensitivity items may be pinned higher conceptually

ui_note:
  - queue is decision support, not alarm center
  - not every family edit should become queue item
