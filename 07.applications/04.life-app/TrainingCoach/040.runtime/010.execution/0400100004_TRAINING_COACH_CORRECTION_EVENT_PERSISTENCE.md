# ============================================================
# TRAINING COACH CORRECTION EVENT PERSISTENCE
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 040.runtime
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

purpose:
  - finalized record の直接更新を避けるため correction event を定義する
  - completion_log や session 結果修正は上書きではなく追記型で扱う

correction_policy:
  - completion_log finalized 後の直接更新は禁止
  - training_session completed 後の内容修正も correction event 経由候補とする
  - user mistake と system reconciliation を区別する

proposed_table:
  - life.training_correction_event

fields:
  - training_correction_event_id
  - target_entity_type
  - target_entity_id
  - correction_type
  - requested_by_user_id
  - reason_code
  - reason_note
  - payload_before_json
  - payload_after_json
  - approval_state
  - created_at
  - applied_at

correction_types:
  - completion_result_fix
  - duration_fix
  - fatigue_fix
  - note_fix
  - duplicate_resolution

approval_state:
  - requested
  - applied
  - rejected

notes:
  - 初期段階では owner request のみ想定
  - 将来の運用高度化時に review workflow を追加可能
