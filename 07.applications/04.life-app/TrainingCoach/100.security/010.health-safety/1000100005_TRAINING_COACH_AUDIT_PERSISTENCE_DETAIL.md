# ============================================================
# TRAINING COACH AUDIT PERSISTENCE DETAIL
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 100.security
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

purpose:
  - audit overview を physical persistence 観点で補強する
  - security / troubleshooting / integration trace を両立する

proposed_table:
  - life.training_audit_event

persistence_policy:
  - health raw content は audit に全面保存しない
  - business action と result、reason code、correlation id を主に保存する
  - user-facing history と audit storage は分離する

fields:
  - training_audit_event_id
  - audit_event_code
  - occurred_at
  - actor_type
  - actor_id
  - target_entity_type
  - target_entity_id
  - result
  - reason_code
  - correlation_id
  - causation_id
  - request_source
  - payload_major_version
  - payload_minor_version

index_intent:
  - occurred_at desc
  - target_entity_type + target_entity_id
  - correlation_id
  - audit_event_code

retention_notes:
  - 厳密保持期間は後段で固定
  - ただし troubleshooting を考え、短すぎる保持は避ける
