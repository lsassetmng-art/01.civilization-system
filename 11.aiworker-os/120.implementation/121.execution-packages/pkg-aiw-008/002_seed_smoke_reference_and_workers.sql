begin;

with constants as (
  select
    '71000000-0000-0000-0000-000000000001'::uuid as developer_company_id,
    '71000000-0000-0000-0000-000000000101'::uuid as tenant_company_id,
    '71000000-0000-0000-0000-000000000201'::uuid as tenant_user_id,
    '71000000-0000-0000-0000-000000001001'::uuid as worker_ops_id,
    '71000000-0000-0000-0000-000000001002'::uuid as worker_priv_id
)
insert into aiworker.developer_company_master (
  developer_company_id,
  developer_company_code,
  developer_company_name,
  default_company_style_profile_code,
  active_flag,
  created_at,
  updated_at
)
select
  developer_company_id,
  'SMOKE_DEV_CO',
  'Smoke Developer Company',
  'BALANCED',
  true,
  now(),
  now()
from constants
on conflict (developer_company_id) do update
  set developer_company_code = excluded.developer_company_code,
      developer_company_name = excluded.developer_company_name,
      default_company_style_profile_code = excluded.default_company_style_profile_code,
      active_flag = true,
      updated_at = now();

with constants as (
  select '71000000-0000-0000-0000-000000000001'::uuid as developer_company_id
)
insert into aiworker.company_style_policy (
  company_style_policy_id,
  developer_company_id,
  company_style_profile_code,
  proposal_tendency_code,
  fallback_tendency_code,
  escalation_tendency_code,
  tone_policy_code,
  restricted_domain_policy_summary,
  active_flag,
  created_at,
  updated_at
)
select
  '71000000-0000-0000-0000-000000000301'::uuid,
  developer_company_id,
  'BALANCED',
  'MEDIUM',
  'MEDIUM',
  'MEDIUM',
  'NEUTRAL',
  'Smoke policy summary',
  true,
  now(),
  now()
from constants
on conflict (company_style_policy_id) do update
  set proposal_tendency_code = excluded.proposal_tendency_code,
      fallback_tendency_code = excluded.fallback_tendency_code,
      escalation_tendency_code = excluded.escalation_tendency_code,
      tone_policy_code = excluded.tone_policy_code,
      restricted_domain_policy_summary = excluded.restricted_domain_policy_summary,
      active_flag = true,
      updated_at = now();

update aiworker.company_ai_usage_tendency
   set effective_to = now(),
       updated_at = now()
 where tenant_company_id = '71000000-0000-0000-0000-000000000101'::uuid
   and effective_to is null
   and company_ai_usage_tendency_id <> '71000000-0000-0000-0000-000000000401'::uuid;

insert into aiworker.company_ai_usage_tendency (
  company_ai_usage_tendency_id,
  tenant_company_id,
  initiative_preference_code,
  explanation_depth_preference_code,
  approval_strictness_tendency_code,
  retry_tolerance_tendency_code,
  escalation_preference_code,
  automation_comfort_band_code,
  effective_from,
  effective_to,
  updated_at
)
values (
  '71000000-0000-0000-0000-000000000401'::uuid,
  '71000000-0000-0000-0000-000000000101'::uuid,
  'BALANCED',
  'STANDARD',
  'MEDIUM',
  'MEDIUM',
  'STANDARD',
  'MEDIUM',
  now(),
  null,
  now()
)
on conflict (company_ai_usage_tendency_id) do update
  set initiative_preference_code = excluded.initiative_preference_code,
      explanation_depth_preference_code = excluded.explanation_depth_preference_code,
      approval_strictness_tendency_code = excluded.approval_strictness_tendency_code,
      retry_tolerance_tendency_code = excluded.retry_tolerance_tendency_code,
      escalation_preference_code = excluded.escalation_preference_code,
      automation_comfort_band_code = excluded.automation_comfort_band_code,
      effective_from = excluded.effective_from,
      effective_to = null,
      updated_at = now();

update aiworker.user_ai_usage_tendency
   set effective_to = now(),
       updated_at = now()
 where tenant_user_id = '71000000-0000-0000-0000-000000000201'::uuid
   and effective_to is null
   and user_ai_usage_tendency_id <> '71000000-0000-0000-0000-000000000402'::uuid;

insert into aiworker.user_ai_usage_tendency (
  user_ai_usage_tendency_id,
  tenant_user_id,
  interaction_comfort_band_code,
  response_length_preference_code,
  summary_preference_code,
  support_style_preference_code,
  initiative_preference_code,
  review_frequency_preference_code,
  effective_from,
  effective_to,
  updated_at
)
values (
  '71000000-0000-0000-0000-000000000402'::uuid,
  '71000000-0000-0000-0000-000000000201'::uuid,
  'MEDIUM',
  'STANDARD',
  'STANDARD',
  'GUIDED',
  'BALANCED',
  'STANDARD',
  now(),
  null,
  now()
)
on conflict (user_ai_usage_tendency_id) do update
  set interaction_comfort_band_code = excluded.interaction_comfort_band_code,
      response_length_preference_code = excluded.response_length_preference_code,
      summary_preference_code = excluded.summary_preference_code,
      support_style_preference_code = excluded.support_style_preference_code,
      initiative_preference_code = excluded.initiative_preference_code,
      review_frequency_preference_code = excluded.review_frequency_preference_code,
      effective_from = excluded.effective_from,
      effective_to = null,
      updated_at = now();

insert into aiworker.worker_master (
  worker_id,
  worker_code,
  display_label,
  employee_type,
  rank_code,
  domain_code,
  role_code,
  lifecycle_status,
  provider_company_id,
  company_style_profile_code,
  repairable_flag,
  rebuildable_flag,
  active_flag,
  suspended_flag,
  retired_flag,
  created_at,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001001'::uuid,
  'AIW-SMOKE-OPS-001',
  'Smoke Ops Worker',
  'AI_ROBOT',
  'RANK_STANDARD',
  'operations',
  'operations_assistant',
  'ACTIVE',
  '71000000-0000-0000-0000-000000000001'::uuid,
  'BALANCED',
  true,
  true,
  true,
  false,
  false,
  now(),
  now()
),
(
  '71000000-0000-0000-0000-000000001002'::uuid,
  'AIW-SMOKE-PRIV-001',
  'Smoke Privileged Worker',
  'AI_ROBOT',
  'RANK_STANDARD',
  'operations',
  'privileged_support',
  'ACTIVE',
  '71000000-0000-0000-0000-000000000001'::uuid,
  'BALANCED',
  true,
  true,
  true,
  false,
  false,
  now(),
  now()
)
on conflict (worker_id) do update
  set worker_code = excluded.worker_code,
      display_label = excluded.display_label,
      employee_type = excluded.employee_type,
      rank_code = excluded.rank_code,
      domain_code = excluded.domain_code,
      role_code = excluded.role_code,
      lifecycle_status = excluded.lifecycle_status,
      provider_company_id = excluded.provider_company_id,
      company_style_profile_code = excluded.company_style_profile_code,
      repairable_flag = excluded.repairable_flag,
      rebuildable_flag = excluded.rebuildable_flag,
      active_flag = excluded.active_flag,
      suspended_flag = excluded.suspended_flag,
      retired_flag = excluded.retired_flag,
      updated_at = now();

insert into aiworker.worker_growth_profile (
  worker_growth_profile_id,
  worker_id,
  growth_level,
  stability_score,
  recovery_learning_score,
  suggestion_effectiveness_score,
  escalation_accuracy_score,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001101'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  1, 10, 5, 7, 6, now()
),
(
  '71000000-0000-0000-0000-000000001102'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  1, 10, 5, 7, 6, now()
)
on conflict (worker_growth_profile_id) do update
  set growth_level = excluded.growth_level,
      stability_score = excluded.stability_score,
      recovery_learning_score = excluded.recovery_learning_score,
      suggestion_effectiveness_score = excluded.suggestion_effectiveness_score,
      escalation_accuracy_score = excluded.escalation_accuracy_score,
      updated_at = now();

insert into aiworker.worker_capability_snapshot (
  worker_capability_snapshot_id,
  worker_id,
  snapshot_at,
  capability_band_code,
  specialization_summary_code,
  confidence_band_code,
  recorded_at
)
values
(
  '71000000-0000-0000-0000-000000001201'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  now(),
  'BAND_STANDARD',
  'OPS_ASSIST',
  'MEDIUM',
  now()
),
(
  '71000000-0000-0000-0000-000000001202'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  now(),
  'BAND_STANDARD',
  'PRIV_SUPPORT',
  'MEDIUM',
  now()
)
on conflict (worker_capability_snapshot_id) do update
  set snapshot_at = excluded.snapshot_at,
      capability_band_code = excluded.capability_band_code,
      specialization_summary_code = excluded.specialization_summary_code,
      confidence_band_code = excluded.confidence_band_code,
      recorded_at = now();

insert into aiworker.worker_domain_proficiency (
  worker_domain_proficiency_id,
  worker_id,
  domain_code,
  proficiency_score,
  score_band_code,
  measured_at,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001301'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  'operations',
  70,
  'STANDARD',
  now(),
  now()
),
(
  '71000000-0000-0000-0000-000000001302'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'operations',
  70,
  'STANDARD',
  now(),
  now()
)
on conflict (worker_domain_proficiency_id) do update
  set proficiency_score = excluded.proficiency_score,
      score_band_code = excluded.score_band_code,
      measured_at = excluded.measured_at,
      updated_at = now();

insert into aiworker.worker_role_proficiency (
  worker_role_proficiency_id,
  worker_id,
  role_code,
  proficiency_score,
  score_band_code,
  measured_at,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001401'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  'operations_assistant',
  75,
  'STANDARD',
  now(),
  now()
),
(
  '71000000-0000-0000-0000-000000001402'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'privileged_support',
  75,
  'STANDARD',
  now(),
  now()
)
on conflict (worker_role_proficiency_id) do update
  set proficiency_score = excluded.proficiency_score,
      score_band_code = excluded.score_band_code,
      measured_at = excluded.measured_at,
      updated_at = now();

update aiworker.worker_assignment_state
   set effective_to = now(),
       updated_at = now()
 where worker_id in (
   '71000000-0000-0000-0000-000000001001'::uuid,
   '71000000-0000-0000-0000-000000001002'::uuid
 )
   and effective_to is null
   and worker_assignment_state_id not in (
     '71000000-0000-0000-0000-000000001501'::uuid,
     '71000000-0000-0000-0000-000000001502'::uuid
   );

insert into aiworker.worker_assignment_state (
  worker_assignment_state_id,
  worker_id,
  tenant_company_id,
  tenant_user_id,
  assigned_app_scope_code,
  assigned_project_id,
  assignment_state_code,
  assignment_lane_scope_code,
  effective_from,
  effective_to,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001501'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  '71000000-0000-0000-0000-000000000101'::uuid,
  '71000000-0000-0000-0000-000000000201'::uuid,
  'aiworker_smoke_scope',
  null,
  'UNASSIGNED',
  'OFFICIAL_REQUEST',
  now(),
  null,
  now()
),
(
  '71000000-0000-0000-0000-000000001502'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  '71000000-0000-0000-0000-000000000101'::uuid,
  '71000000-0000-0000-0000-000000000201'::uuid,
  'aiworker_smoke_scope',
  null,
  'UNASSIGNED',
  'OFFICIAL_REQUEST',
  now(),
  null,
  now()
)
on conflict (worker_assignment_state_id) do update
  set tenant_company_id = excluded.tenant_company_id,
      tenant_user_id = excluded.tenant_user_id,
      assigned_app_scope_code = excluded.assigned_app_scope_code,
      assigned_project_id = excluded.assigned_project_id,
      assignment_state_code = excluded.assignment_state_code,
      assignment_lane_scope_code = excluded.assignment_lane_scope_code,
      effective_from = now(),
      effective_to = null,
      updated_at = now();

update aiworker.worker_availability_state
   set effective_to = now(),
       updated_at = now()
 where worker_id in (
   '71000000-0000-0000-0000-000000001001'::uuid,
   '71000000-0000-0000-0000-000000001002'::uuid
 )
   and effective_to is null
   and worker_availability_state_id not in (
     '71000000-0000-0000-0000-000000001601'::uuid,
     '71000000-0000-0000-0000-000000001602'::uuid
   );

insert into aiworker.worker_availability_state (
  worker_availability_state_id,
  worker_id,
  availability_state_code,
  concurrent_capacity,
  current_load_band_code,
  effective_from,
  effective_to,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001601'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  'AVAILABLE',
  1,
  'LOW',
  now(),
  null,
  now()
),
(
  '71000000-0000-0000-0000-000000001602'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'AVAILABLE',
  1,
  'LOW',
  now(),
  null,
  now()
)
on conflict (worker_availability_state_id) do update
  set availability_state_code = excluded.availability_state_code,
      concurrent_capacity = excluded.concurrent_capacity,
      current_load_band_code = excluded.current_load_band_code,
      effective_from = now(),
      effective_to = null,
      updated_at = now();

insert into aiworker.worker_queue_membership (
  worker_queue_membership_id,
  worker_id,
  queue_family_code,
  queue_priority_band_code,
  queue_position,
  last_assignment_at,
  current_load_band_code,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001701'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  'SMOKE_QUEUE',
  'STANDARD',
  1,
  null,
  'LOW',
  now()
),
(
  '71000000-0000-0000-0000-000000001702'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'SMOKE_QUEUE',
  'STANDARD',
  2,
  null,
  'LOW',
  now()
)
on conflict (worker_queue_membership_id) do update
  set queue_family_code = excluded.queue_family_code,
      queue_priority_band_code = excluded.queue_priority_band_code,
      queue_position = excluded.queue_position,
      current_load_band_code = excluded.current_load_band_code,
      updated_at = now();

insert into aiworker.worker_company_affinity (
  worker_company_affinity_id,
  worker_id,
  tenant_company_id,
  company_fit_score,
  trust_alignment_score,
  communication_fit_score,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001801'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  '71000000-0000-0000-0000-000000000101'::uuid,
  80,
  80,
  80,
  now()
),
(
  '71000000-0000-0000-0000-000000001802'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  '71000000-0000-0000-0000-000000000101'::uuid,
  80,
  80,
  80,
  now()
)
on conflict (worker_company_affinity_id) do update
  set company_fit_score = excluded.company_fit_score,
      trust_alignment_score = excluded.trust_alignment_score,
      communication_fit_score = excluded.communication_fit_score,
      updated_at = now();

insert into aiworker.worker_user_affinity (
  worker_user_affinity_id,
  worker_id,
  tenant_user_id,
  user_fit_score,
  trust_alignment_score,
  communication_fit_score,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000001901'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  '71000000-0000-0000-0000-000000000201'::uuid,
  80,
  80,
  80,
  now()
),
(
  '71000000-0000-0000-0000-000000001902'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  '71000000-0000-0000-0000-000000000201'::uuid,
  80,
  80,
  80,
  now()
)
on conflict (worker_user_affinity_id) do update
  set user_fit_score = excluded.user_fit_score,
      trust_alignment_score = excluded.trust_alignment_score,
      communication_fit_score = excluded.communication_fit_score,
      updated_at = now();

insert into aiworker.worker_assignment_fit_profile (
  worker_assignment_fit_profile_id,
  worker_id,
  app_scope_code,
  assignment_fit_score,
  fit_reason_summary_code,
  updated_at
)
values
(
  '71000000-0000-0000-0000-000000002001'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  'aiworker_smoke_scope',
  85,
  'SMOKE_GOOD_FIT',
  now()
),
(
  '71000000-0000-0000-0000-000000002002'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'aiworker_smoke_scope',
  85,
  'SMOKE_GOOD_FIT',
  now()
)
on conflict (worker_assignment_fit_profile_id) do update
  set assignment_fit_score = excluded.assignment_fit_score,
      fit_reason_summary_code = excluded.fit_reason_summary_code,
      updated_at = now();

insert into aiworker.worker_privileged_profile (
  worker_privileged_profile_id,
  worker_id,
  privileged_context_code,
  privileged_gate_code,
  active_flag,
  updated_at
)
values (
  '71000000-0000-0000-0000-000000002101'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'SMOKE_PRIV_CONTEXT',
  'GATE_PRIVILEGED',
  true,
  now()
)
on conflict (worker_privileged_profile_id) do update
  set privileged_context_code = excluded.privileged_context_code,
      privileged_gate_code = excluded.privileged_gate_code,
      active_flag = excluded.active_flag,
      updated_at = now();

insert into aiworker.worker_restricted_handling_policy (
  worker_restricted_handling_policy_id,
  worker_id,
  restricted_domain_code,
  handling_policy_code,
  escalation_required_flag,
  updated_at
)
values (
  '71000000-0000-0000-0000-000000002201'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'SMOKE_RESTRICTED_DOMAIN',
  'SMOKE_ESCALATE',
  true,
  now()
)
on conflict (worker_restricted_handling_policy_id) do update
  set restricted_domain_code = excluded.restricted_domain_code,
      handling_policy_code = excluded.handling_policy_code,
      escalation_required_flag = excluded.escalation_required_flag,
      updated_at = now();

insert into aiworker.smoke_seed_registry (
  smoke_seed_code,
  smoke_seed_status_code,
  note_text,
  applied_at,
  updated_at
)
values (
  'SMOKE_REFERENCE_AND_WORKERS_V1',
  'APPLIED',
  'Smoke reference and worker seeds are applied',
  now(),
  now()
)
on conflict (smoke_seed_code) do update
  set smoke_seed_status_code = excluded.smoke_seed_status_code,
      note_text = excluded.note_text,
      updated_at = now();

commit;
