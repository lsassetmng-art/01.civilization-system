# ============================================================
# TRAINING COACH SHARE AUDIT PAYLOAD DETAIL
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
  - share 関連イベントの audit payload shape を固定する
  - 招待、承認、scope変更、取消の追跡をしやすくする
  - 共有の可視性と privacy guardrail を両立する

audit_payload_policy:
  - raw health summary values は audit payload に全面保存しない
  - relation / scope / actor / result を中心に記録する
  - audit は user-facing share history と同一ではない

audit_event_codes:
  - TC-SHARE-AUDIT-0001:invitation_created
  - TC-SHARE-AUDIT-0002:invitation_accepted
  - TC-SHARE-AUDIT-0003:invitation_expired
  - TC-SHARE-AUDIT-0004:scope_updated
  - TC-SHARE-AUDIT-0005:relation_revoked
  - TC-SHARE-AUDIT-0006:access_denied_by_scope
  - TC-SHARE-AUDIT-0007:duplicate_relation_suppressed

common_shape:
  fields:
    audit_event_code: string
    occurred_at: timestamp
    correlation_id: string
    causation_id: string|null
    actor_user_id: string|null
    owner_user_id: string
    viewer_user_id: string
    share_relation_id: uuid|null
    share_invitation_id: uuid|null
    share_relation_type: family_summary_view|friend_summary_view|coach_summary_view
    share_scope_code: string|null
    result: success|rejected|ignored
    reason_code: string|null
    payload_major_version: integer
    payload_minor_version: integer

event_examples:

invitation_created:
  required_fields:
    - audit_event_code
    - occurred_at
    - correlation_id
    - actor_user_id
    - owner_user_id
    - viewer_user_id
    - share_invitation_id
    - share_relation_type
    - share_scope_code
    - result

invitation_accepted:
  required_fields:
    - audit_event_code
    - occurred_at
    - correlation_id
    - actor_user_id
    - owner_user_id
    - viewer_user_id
    - share_invitation_id
    - share_relation_id
    - result

scope_updated:
  required_fields:
    - audit_event_code
    - occurred_at
    - correlation_id
    - actor_user_id
    - share_relation_id
    - owner_user_id
    - viewer_user_id
    - share_scope_code
    - result

relation_revoked:
  required_fields:
    - audit_event_code
    - occurred_at
    - correlation_id
    - actor_user_id
    - share_relation_id
    - owner_user_id
    - viewer_user_id
    - result
    - reason_code

privacy_notes:
  - no fatigue_level
  - no body_condition raw
  - no memo text
  - no detailed session values

integration_note:
  - future share service exists even if TrainingCoach remains owner of scope semantics
