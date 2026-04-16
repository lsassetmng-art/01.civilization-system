# ============================================================
# TRAINING COACH IDEMPOTENCY POLICY
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
  - 再送・重複送信時の安全性を固定する
  - オフライン復帰後の duplicate 処理を明確化する
  - integration / screen action 双方に idempotency ルールを与える

idempotency_policy:
  - create 系でも business key または idempotency key を持つ場合は重複抑止する
  - complete 系は二重確定を禁止する
  - inbound / outbound integration は event 単位で重複検知する

idempotent_operations:
  session_start:
    idempotency_key:
      - session_id
      - action_type=start_session
    duplicate_behavior:
      - 既に in_progress なら success as already_applied
      - completed / skipped / stopped なら reject
  session_complete:
    idempotency_key:
      - session_id
      - action_type=complete_session
      - completed_at
    duplicate_behavior:
      - 同一 payload は success as already_applied
      - 異なる completed_at で finalized 済みなら reject
  skip_session:
    idempotency_key:
      - session_id
      - action_type=skip_session
    duplicate_behavior:
      - 既に skipped なら success as already_applied
  inbound_bodymetrics_daily_summary:
    idempotency_key:
      - user_id
      - target_date
      - synced_at
      - producer_system
    duplicate_behavior:
      - 同一 event は ignore_duplicate
      - 新しい synced_at のみ採用候補
  outbound_mealplanner_activity_summary:
    idempotency_key:
      - user_id
      - target_date
      - produced_at
      - payload_major_version
      - payload_minor_version
    duplicate_behavior:
      - 同一 event は resend_safe

response_behavior:
  already_applied_success_shape:
    result: success
    applied_status: already_applied
  duplicate_ignored_shape:
    result: success
    applied_status: duplicate_ignored

rejection_cases:
  - completed session への再 start
  - finalized completion_log の直接変更
  - version 不一致で consumer が受理不可

implementation_notes:
  - server 側保管期間は後続実装段で確定
  - mobile local queue は session_id を必須保持する
