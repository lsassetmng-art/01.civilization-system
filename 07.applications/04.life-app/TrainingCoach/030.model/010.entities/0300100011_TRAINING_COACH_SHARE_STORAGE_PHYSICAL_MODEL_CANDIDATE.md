# ============================================================
# TRAINING COACH SHARE STORAGE PHYSICAL MODEL CANDIDATE
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

purpose:
  - family/share の物理保存候補を先に整理する
  - 実装はまだしないが、共有関係の保存責務を明確にする
  - summary-only share を前提に、raw health data の過共有を防ぐ

schema_binding:
  primary_schema: life

design_position:
  - 初期実装対象ではない
  - ただし physical candidate を先に置いておく
  - shared raw health table は作らず、relation と scope を保持する

candidate_tables:

life.training_share_invitation:
  purpose:
    - owner から viewer への共有招待
  primary_key:
    - training_share_invitation_id
  main_columns:
    - training_share_invitation_id
    - owner_user_id
    - viewer_user_id
    - share_relation_type
    - share_scope_code
    - invitation_status
    - invited_at
    - expires_at
    - accepted_at
    - revoked_at
    - created_at
    - updated_at
  statuses:
    - invited
    - accepted
    - expired
    - revoked

life.training_share_relation:
  purpose:
    - 有効な共有関係の正本
  primary_key:
    - training_share_relation_id
  main_columns:
    - training_share_relation_id
    - owner_user_id
    - viewer_user_id
    - share_relation_type
    - share_scope_code
    - relation_status
    - activated_at
    - revoked_at
    - created_at
    - updated_at
  statuses:
    - active
    - revoked
    - suspended

life.training_share_audit_event:
  purpose:
    - 招待、承認、scope変更、取消の監査
  primary_key:
    - training_share_audit_event_id
  main_columns:
    - training_share_audit_event_id
    - training_share_relation_id
    - audit_event_code
    - actor_user_id
    - target_user_id
    - occurred_at
    - result
    - reason_code
    - correlation_id
    - payload_major_version
    - payload_minor_version

storage_rules:
  - shared summary 自体を別テーブルへ恒久複製しない
  - 表示時は owner 側 summary から scope に応じて動的生成候補
  - raw fields は relation があっても取得対象にしない
  - invitation と relation を分離し、履歴を見やすくする

unique_candidates:
  training_share_relation:
    - active relation on (owner_user_id, viewer_user_id, share_relation_type) should be unique candidate
  training_share_invitation:
    - duplicate invited relation should be suppressed candidate

future_columns_candidate:
  - consent_version
  - viewer_locale
  - last_viewed_at
  - reminder_opt_in_flag

notes:
  - summary-first 原則を物理モデルでも維持する
  - raw health 共有のための広い permission table は作らない
