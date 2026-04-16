# ============================================================
# TRAINING COACH TEST CASE INVENTORY
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
  - 実装前の最低限テスト観点を固定する
  - payload / state / permission / fallback / safety の抜け漏れを防ぐ

test_groups:

group_1_core_screen_payload:
  - dashboard success
  - dashboard empty no session
  - today_plan success
  - today_plan empty no plan
  - plan_editor_save validation error
  - guide_viewer no guide content
  - premium_upgrade localized price fallback

group_2_state_transition:
  - scheduled -> in_progress success
  - scheduled -> skipped success
  - in_progress -> completed success
  - in_progress -> stopped success
  - completed -> start rejected
  - finalized completion_log direct update rejected

group_3_idempotency:
  - duplicate session_start same request returns already_applied
  - duplicate session_complete same request returns already_applied
  - inbound duplicate bodymetrics event ignored
  - outbound duplicate mealplanner event resend_safe

group_4_permission:
  - owner can create / update plan
  - coach_view cannot update plan
  - family_view cannot read raw fatigue_note
  - premium feature blocked for free plan

group_5_safety:
  - fatigue high returns light_mode_recommended or restriction
  - unsafe condition returns rest recommendation
  - safety message code visible in guide flow
  - session_start blocked on restricted condition

group_6_locale_currency:
  - locale exact hit
  - locale fallback to base language
  - locale fallback to default locale
  - currency fallback to account preference
  - currency fallback to JPY
  - unavailable rate message key returned

group_7_integration:
  - inbound BodyMetrics daily summary accepted
  - outbound MealPlanner summary exact payload shape
  - outbound LifePlanner goal progress exact payload shape
  - version mismatch handling

group_8_audit_correlation:
  - plan create emits audit event
  - session complete emits audit event
  - correlation_id roundtrip on screen request
  - causation_id propagated to outbound integration

minimum_exit_criteria:
  - 全 test_groups に少なくとも 1 successful execution path を持つ
  - group_2, group_3, group_4, group_5 は negative case も必須
