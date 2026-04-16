# ============================================================
# TRAINING COACH FAMILY SHARE PAYLOAD AND PERMISSION DETAIL
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
  - family/share の詳細payload候補と権限粒度を固定する
  - summary-only share を中心に、安全な共有境界を明確にする
  - raw health data の過共有を防ぐ

design_position:
  - 初期実装対象ではない
  - ただし、意味境界と payload shape は先に固定する
  - Premium の将来価値に接続しうるが、v1 必須ではない

share_principles:
  - owner control first
  - summary first
  - revocable anytime
  - no raw fatigue by default
  - no memo sharing by default
  - no comparative ranking UX

share_relation_types:
  family_summary_view:
    description:
      - 家族向けの要約共有
  friend_summary_view:
    description:
      - 軽量な進捗共有
  coach_summary_view:
    description:
      - 将来の助言向け共有
      - raw health full access は前提にしない

share_scope_codes:
  - streak_only
  - weekly_progress_only
  - goal_progress_only
  - summary_bundle_basic
  - summary_bundle_extended

shareable_fields_by_scope:

streak_only:
  fields:
    - current_streak_days

weekly_progress_only:
  fields:
    - weekly_completion_rate
    - completed_training_minutes_bucket

goal_progress_only:
  fields:
    - active_goal_count
    - status_badge

summary_bundle_basic:
  fields:
    - current_streak_days
    - weekly_completion_rate
    - status_badge

summary_bundle_extended:
  fields:
    - current_streak_days
    - weekly_completion_rate
    - active_goal_count
    - consistency_badge
    - completed_training_minutes_bucket

never_share_default:
  fields:
    - fatigue_level
    - body_condition
    - fatigue_note.memo
    - training_session.note
    - exact session timeline
    - device_sync_state.last_error_code
    - bodymetrics_daily_summary_cache raw values

payloads:

share_invitation_create_request:
  fields:
    owner_user_id: string
    viewer_user_id: string
    share_relation_type: family_summary_view|friend_summary_view|coach_summary_view
    share_scope_code: streak_only|weekly_progress_only|goal_progress_only|summary_bundle_basic|summary_bundle_extended
    locale: string

share_invitation_create_response:
  fields:
    result: success
    invitation_id: uuid
    share_relation_status: invited
    share_scope_code: string

share_invitation_accept_request:
  fields:
    invitation_id: uuid
    viewer_user_id: string
    accepted_at: timestamp

share_invitation_accept_response:
  fields:
    result: success
    share_relation_id: uuid
    share_relation_status: active

share_scope_update_request:
  fields:
    share_relation_id: uuid
    owner_user_id: string
    new_share_scope_code: string
    updated_at: timestamp

share_scope_update_response:
  fields:
    result: success
    share_relation_id: uuid
    applied_scope_code: string

share_relation_revoke_request:
  fields:
    share_relation_id: uuid
    owner_user_id: string
    revoked_at: timestamp

share_relation_revoke_response:
  fields:
    result: success
    share_relation_id: uuid
    share_relation_status: revoked

shared_progress_summary_response:
  fields:
    owner_user_id: string
    viewer_user_id: string
    share_scope_code: string
    current_streak_days: integer|null
    weekly_completion_rate: integer|null
    active_goal_count: integer|null
    status_badge: on_track|needs_attention|rest_mode|null
    consistency_badge: strong|steady|starting|null
    completed_training_minutes_bucket: low|normal|high|null
    last_shared_at: timestamp

permission_rules:
  owner:
    can_invite: yes
    can_update_scope: yes
    can_revoke: yes
    can_view_share_audit: yes
  viewer:
    can_accept: yes
    can_view_only_granted_scope: yes
    can_expand_scope: no
    can_view_raw_health: no
  system:
    can_enforce_scope: yes
    can_hide_revoked_relation: yes

error_cases:
  - share_scope_not_allowed_for_role
  - revoked_relation_access_denied
  - invitation_expired
  - duplicate_active_relation
  - raw_field_access_denied

future_storage_candidates:
  - life.training_share_relation
  - life.training_share_invitation
  - life.training_share_audit_event
