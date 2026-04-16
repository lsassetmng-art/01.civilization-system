
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH AUDIT EVENT OVERVIEW
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 100.security
owner: Boss
prepared_by: Zero

audit_policy:
  - 重要な状態変更のみ監査対象にする
  - health related raw value は必要最小限の記録に留める
  - 監査イベントは user-facing history と分離する

audit_events:
  - audit_event_code: TC-AUDIT-0001
    name: plan_created
    trigger: plan_editor_save success on create
  - audit_event_code: TC-AUDIT-0002
    name: plan_updated
    trigger: plan_editor_save success on update
  - audit_event_code: TC-AUDIT-0003
    name: session_started
    trigger: session_start success
  - audit_event_code: TC-AUDIT-0004
    name: session_completed
    trigger: session_complete success
  - audit_event_code: TC-AUDIT-0005
    name: premium_access_attempt
    trigger: premium feature requested
  - audit_event_code: TC-AUDIT-0006
    name: outbound_mealplanner_summary_sent
    trigger: outbound payload sent
  - audit_event_code: TC-AUDIT-0007
    name: outbound_lifeplanner_progress_sent
    trigger: outbound payload sent
  - audit_event_code: TC-AUDIT-0008
    name: inbound_bodymetrics_summary_received
    trigger: inbound payload accepted
  - audit_event_code: TC-AUDIT-0009
    name: unsafe_condition_restriction_applied
    trigger: safety restriction response returned

event_shape:
  fields:
    audit_event_id: uuid
    audit_event_code: string
    occurred_at: timestamp
    actor_type: user|system|integration
    actor_id: string|null
    target_entity_type: string
    target_entity_id: string|null
    result: success|rejected|ignored
    reason_code: string|null

retention_policy:
  - 詳細保持期間は別途実装段階で確定
  - user-facing 表示への直接転用は禁止
