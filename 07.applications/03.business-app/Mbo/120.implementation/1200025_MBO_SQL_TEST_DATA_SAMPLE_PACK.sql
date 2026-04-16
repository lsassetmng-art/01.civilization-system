-- ============================================================
-- MBO SQL TEST DATA SAMPLE PACK
-- reviewer: Sato
-- ============================================================

create schema if not exists app_mbo;

-- ============================================================
-- 0. FIXED SAMPLE IDS
-- ============================================================

-- company_id (project standard sample)
-- 8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12

-- sample users
-- objective_owner      : 11111111-1111-1111-1111-111111111111
-- manager              : 22222222-2222-2222-2222-222222222222
-- evaluator            : 33333333-3333-3333-3333-333333333333
-- hr_operator          : 44444444-4444-4444-4444-444444444444
-- executive_viewer     : 55555555-5555-5555-5555-555555555555
-- department_admin     : 66666666-6666-6666-6666-666666666666

-- ============================================================
-- 1. PERIOD
-- ============================================================

insert into app_mbo.mbo_period (
  period_id,
  company_id,
  period_code,
  period_name,
  start_date,
  end_date,
  status,
  language_code,
  created_at,
  updated_at
) values (
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  '2026-H1',
  '2026 First Half',
  date '2026-01-01',
  date '2026-06-30',
  'open',
  'ja',
  now(),
  now()
)
on conflict (period_id) do nothing;

-- ============================================================
-- 2. TEMPLATES
-- ============================================================

insert into app_mbo.mbo_objective_template (
  objective_template_id,
  company_id,
  department_id,
  template_scope,
  template_name,
  objective_category,
  objective_type,
  default_quantitative_target,
  default_qualitative_target,
  default_success_criteria,
  default_priority,
  default_weight,
  language_code,
  active_flag,
  created_at,
  updated_at
) values (
  'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  '77777777-7777-7777-7777-777777777777',
  'department',
  'Throughput Improvement Template',
  'performance',
  'MBO',
  '120 cases per month',
  'Improve execution consistency',
  'Monthly throughput and quality thresholds achieved',
  'high',
  30.00,
  'ja',
  true,
  now(),
  now()
)
on conflict (objective_template_id) do nothing;

insert into app_mbo.mbo_manager_comment_template (
  manager_comment_template_id,
  company_id,
  department_id,
  template_name,
  template_body,
  language_code,
  active_flag,
  created_at,
  updated_at
) values (
  'cccccccc-cccc-cccc-cccc-cccccccccccc',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  '77777777-7777-7777-7777-777777777777',
  'Continue With Adjustment',
  'Progress is visible. Continue while tightening blocker handling.',
  'ja',
  true,
  now(),
  now()
)
on conflict (manager_comment_template_id) do nothing;

insert into app_mbo.mbo_review_cadence_preset (
  review_cadence_preset_id,
  company_id,
  preset_name,
  cadence_type,
  interval_rule,
  language_code,
  active_flag,
  created_at,
  updated_at
) values (
  'dddddddd-dddd-dddd-dddd-dddddddddddd',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'Monthly Review',
  'monthly',
  'FREQ=MONTHLY;INTERVAL=1',
  'ja',
  true,
  now(),
  now()
)
on conflict (review_cadence_preset_id) do nothing;

-- ============================================================
-- 3. OBJECTIVES
-- ============================================================

-- active objective
insert into app_mbo.mbo_objective (
  objective_id,
  company_id,
  period_id,
  owner_user_id,
  manager_user_id,
  title,
  objective_category,
  objective_type,
  quantitative_target,
  qualitative_target,
  success_criteria,
  priority,
  weight,
  progress_percent,
  status,
  start_date,
  due_date,
  final_lock_flag,
  final_locked_at,
  source_objective_id,
  source_template_id,
  language_code,
  currency_code,
  created_at,
  updated_at
) values (
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
  '11111111-1111-1111-1111-111111111111',
  '22222222-2222-2222-2222-222222222222',
  'Improve monthly team throughput',
  'performance',
  'MBO',
  '120 cases per month',
  'Improve execution consistency',
  'Monthly throughput and quality thresholds achieved',
  'high',
  30.00,
  45.00,
  'active',
  date '2026-01-01',
  date '2026-06-30',
  false,
  null,
  null,
  'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
  'ja',
  'JPY',
  now(),
  now()
)
on conflict (objective_id) do nothing;

-- finalized objective
insert into app_mbo.mbo_objective (
  objective_id,
  company_id,
  period_id,
  owner_user_id,
  manager_user_id,
  title,
  objective_category,
  objective_type,
  quantitative_target,
  qualitative_target,
  success_criteria,
  priority,
  weight,
  progress_percent,
  status,
  start_date,
  due_date,
  final_lock_flag,
  final_locked_at,
  source_objective_id,
  source_template_id,
  language_code,
  currency_code,
  created_at,
  updated_at
) values (
  'ffffffff-ffff-ffff-ffff-ffffffffffff',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
  '11111111-1111-1111-1111-111111111111',
  '22222222-2222-2222-2222-222222222222',
  'Reduce rework rate',
  'quality',
  'MBO',
  'Rework rate under 3%',
  'Improve process stability',
  'Sustained defect prevention and stable quality',
  'high',
  25.00,
  92.00,
  'finalized',
  date '2026-01-01',
  date '2026-06-30',
  true,
  now() - interval '5 days',
  null,
  null,
  'ja',
  'JPY',
  now(),
  now()
)
on conflict (objective_id) do nothing;

-- transferred objective
insert into app_mbo.mbo_objective (
  objective_id,
  company_id,
  period_id,
  owner_user_id,
  manager_user_id,
  title,
  objective_category,
  objective_type,
  quantitative_target,
  qualitative_target,
  success_criteria,
  priority,
  weight,
  progress_percent,
  status,
  start_date,
  due_date,
  final_lock_flag,
  final_locked_at,
  source_objective_id,
  source_template_id,
  language_code,
  currency_code,
  created_at,
  updated_at
) values (
  '12121212-1212-1212-1212-121212121212',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
  '11111111-1111-1111-1111-111111111111',
  '22222222-2222-2222-2222-222222222222',
  'Improve training completion',
  'people',
  'MBO',
  '95 percent completion',
  'Improve onboarding quality',
  'Completion and comprehension targets met',
  'medium',
  20.00,
  100.00,
  'transferred',
  date '2026-01-01',
  date '2026-06-30',
  true,
  now() - interval '20 days',
  null,
  null,
  'ja',
  'JPY',
  now(),
  now()
)
on conflict (objective_id) do nothing;

-- ============================================================
-- 4. ACTION PLANS
-- ============================================================

insert into app_mbo.mbo_action_plan (
  action_plan_id,
  objective_id,
  step_no,
  step_title,
  step_description,
  owner_user_id,
  planned_start_at,
  planned_end_at,
  completion_percent,
  status,
  created_at,
  updated_at
) values
(
  '13131313-1313-1313-1313-131313131313',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  1,
  'Review current throughput blockers',
  'Identify weekly bottlenecks and delay sources',
  '11111111-1111-1111-1111-111111111111',
  now() - interval '20 days',
  now() + interval '10 days',
  60.00,
  'active',
  now(),
  now()
),
(
  '14141414-1414-1414-1414-141414141414',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  2,
  'Standardize handoff checklist',
  'Introduce repeatable checklist in operations',
  '11111111-1111-1111-1111-111111111111',
  now() - interval '10 days',
  now() + interval '15 days',
  25.00,
  'active',
  now(),
  now()
)
on conflict (action_plan_id) do nothing;

-- ============================================================
-- 5. PROGRESS LOGS
-- ============================================================

insert into app_mbo.mbo_progress_log (
  progress_log_id,
  objective_id,
  logged_by_user_id,
  logged_at,
  progress_percent,
  progress_comment,
  blocker_note,
  next_action_note,
  language_code,
  created_at
) values
(
  '15151515-1515-1515-1515-151515151515',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  '11111111-1111-1111-1111-111111111111',
  now() - interval '12 days',
  30.00,
  'Initial improvement measures started.',
  'Cross-team waiting time still high.',
  'Align handoff rules with related team.',
  'ja',
  now() - interval '12 days'
),
(
  '16161616-1616-1616-1616-161616161616',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  '11111111-1111-1111-1111-111111111111',
  now() - interval '2 days',
  45.00,
  'Checklist trial reduced misses.',
  'Training coverage still uneven.',
  'Expand trial to second team.',
  'ja',
  now() - interval '2 days'
)
on conflict (progress_log_id) do nothing;

-- ============================================================
-- 6. REVIEW SCHEDULE / REVIEW LOG
-- ============================================================

insert into app_mbo.mbo_review_schedule (
  review_schedule_id,
  objective_id,
  review_type,
  planned_review_at,
  reviewer_user_id,
  status,
  created_at,
  updated_at
) values
(
  '17171717-1717-1717-1717-171717171717',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  'monthly',
  now() + interval '3 days',
  '22222222-2222-2222-2222-222222222222',
  'planned',
  now(),
  now()
),
(
  '18181818-1818-1818-1818-181818181818',
  'ffffffff-ffff-ffff-ffff-ffffffffffff',
  'midterm',
  now() - interval '30 days',
  '22222222-2222-2222-2222-222222222222',
  'completed',
  now() - interval '40 days',
  now() - interval '20 days'
)
on conflict (review_schedule_id) do nothing;

insert into app_mbo.mbo_review_log (
  review_log_id,
  objective_id,
  review_type,
  reviewer_user_id,
  reviewed_at,
  review_comment,
  review_result,
  manager_comment_template_id,
  language_code,
  created_at
) values
(
  '19191919-1919-1919-1919-191919191919',
  'ffffffff-ffff-ffff-ffff-ffffffffffff',
  'midterm',
  '22222222-2222-2222-2222-222222222222',
  now() - interval '30 days',
  'Quality improvement is clearly visible.',
  'continue',
  'cccccccc-cccc-cccc-cccc-cccccccccccc',
  'ja',
  now() - interval '30 days'
)
on conflict (review_log_id) do nothing;

-- ============================================================
-- 7. EVALUATIONS
-- ============================================================

insert into app_mbo.mbo_evaluation (
  evaluation_id,
  objective_id,
  evaluator_user_id,
  evaluation_score,
  evaluation_comment,
  final_lock_flag,
  confirmed_at,
  erp_sent_at,
  erp_send_status,
  language_code,
  created_at,
  updated_at
) values
(
  '20202020-2020-2020-2020-202020202020',
  'ffffffff-ffff-ffff-ffff-ffffffffffff',
  '33333333-3333-3333-3333-333333333333',
  4.20,
  'Target substantially achieved with stable execution.',
  true,
  now() - interval '5 days',
  null,
  'ERP_failed',
  'ja',
  now() - interval '10 days',
  now()
),
(
  '21212121-2121-2121-2121-212121212121',
  '12121212-1212-1212-1212-121212121212',
  '33333333-3333-3333-3333-333333333333',
  4.60,
  'Target fully achieved and transferred.',
  true,
  now() - interval '20 days',
  now() - interval '19 days',
  'ERP_sent',
  'ja',
  now() - interval '25 days',
  now()
)
on conflict (evaluation_id) do nothing;

-- ============================================================
-- 8. INTERVIEW MEMO / EVIDENCE / LINKS
-- ============================================================

insert into app_mbo.mbo_interview_memo (
  interview_memo_id,
  objective_id,
  memo_type,
  memo_at,
  author_user_id,
  memo_body,
  language_code,
  created_at
) values
(
  '23232323-2323-2323-2323-232323232323',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  '1on1',
  now() - interval '4 days',
  '22222222-2222-2222-2222-222222222222',
  'Owner understands next action priorities.',
  'ja',
  now() - interval '4 days'
)
on conflict (interview_memo_id) do nothing;

insert into app_mbo.mbo_evidence_reference (
  evidence_reference_id,
  objective_id,
  progress_log_id,
  review_log_id,
  reference_type,
  reference_uri,
  reference_label,
  uploaded_at
) values
(
  '24242424-2424-2424-2424-242424242424',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  '16161616-1616-1616-1616-161616161616',
  null,
  'link',
  'https://example.internal/checklist-trial',
  'Checklist Trial Result',
  now() - interval '2 days'
)
on conflict (evidence_reference_id) do nothing;

insert into app_mbo.mbo_objective_task_link (
  objective_task_link_id,
  objective_id,
  linked_task_id,
  link_role,
  linked_at
) values
(
  '25252525-2525-2525-2525-252525252525',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  '26262626-2626-2626-2626-262626262626',
  'primary',
  now() - interval '6 days'
)
on conflict (objective_task_link_id) do nothing;

insert into app_mbo.mbo_objective_project_link (
  objective_project_link_id,
  objective_id,
  linked_project_id,
  link_role,
  linked_at
) values
(
  '27272727-2727-2727-2727-272727272727',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
  '28282828-2828-2828-2828-282828282828',
  'supporting',
  now() - interval '6 days'
)
on conflict (objective_project_link_id) do nothing;

-- ============================================================
-- 9. ERP HISTORY / RESEND
-- ============================================================

insert into app_mbo.mbo_erp_transmission_history (
  transmission_history_id,
  transmission_id,
  transmission_version,
  company_id,
  objective_id,
  evaluation_id,
  sender_user_id,
  erp_send_status,
  request_id,
  payload_snapshot_json,
  sent_at,
  failed_at,
  created_at
) values
(
  '29292929-2929-2929-2929-292929292929',
  'tx_failed_0001',
  1,
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'ffffffff-ffff-ffff-ffff-ffffffffffff',
  '20202020-2020-2020-2020-202020202020',
  '44444444-4444-4444-4444-444444444444',
  'ERP_failed',
  'req_mbo_failed_0001',
  '{"sample": true, "kind": "failed"}'::jsonb,
  now() - interval '4 days',
  now() - interval '4 days',
  now() - interval '4 days'
),
(
  '30303030-3030-3030-3030-303030303030',
  'tx_sent_0001',
  1,
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  '12121212-1212-1212-1212-121212121212',
  '21212121-2121-2121-2121-212121212121',
  '44444444-4444-4444-4444-444444444444',
  'ERP_sent',
  'req_mbo_sent_0001',
  '{"sample": true, "kind": "sent"}'::jsonb,
  now() - interval '19 days',
  null,
  now() - interval '19 days'
)
on conflict (transmission_history_id) do nothing;

insert into app_mbo.mbo_erp_resend_job (
  erp_resend_job_id,
  transmission_history_id,
  requested_by_user_id,
  resend_reason,
  resend_status,
  requested_at,
  completed_at
) values
(
  '31313131-3131-3131-3131-313131313131',
  '29292929-2929-2929-2929-292929292929',
  '44444444-4444-4444-4444-444444444444',
  'ERP rejected payload formatting',
  'queued',
  now() - interval '3 days',
  null
)
on conflict (erp_resend_job_id) do nothing;

-- ============================================================
-- 10. REOPEN GOVERNANCE
-- ============================================================

insert into app_mbo.mbo_reopen_request (
  reopen_request_id,
  objective_id,
  evaluation_id,
  requested_by_user_id,
  requested_at,
  reopen_reason_code,
  reopen_reason_detail,
  current_state,
  target_state,
  reopen_scope,
  reopen_status,
  approval_required_flag,
  created_at,
  updated_at
) values
(
  '32323232-3232-3232-3232-323232323232',
  '12121212-1212-1212-1212-121212121212',
  '21212121-2121-2121-2121-212121212121',
  '33333333-3333-3333-3333-333333333333',
  now() - interval '2 days',
  'ERP_rejection_requires_fix',
  'Need governed reopen because downstream correction is required.',
  'transferred',
  'evaluation_drafted',
  'evaluation_only',
  'approved',
  true,
  now() - interval '2 days',
  now()
)
on conflict (reopen_request_id) do nothing;

insert into app_mbo.mbo_reopen_approval_log (
  reopen_approval_log_id,
  reopen_request_id,
  approver_user_id,
  approval_action,
  approval_comment,
  approved_at,
  created_at
) values
(
  '33333333-3333-3333-3333-333333333334',
  '32323232-3232-3232-3232-323232323232',
  '44444444-4444-4444-4444-444444444444',
  'approved',
  'Governed reopen approved after ERP impact review.',
  now() - interval '1 day',
  now() - interval '1 day'
)
on conflict (reopen_approval_log_id) do nothing;

insert into app_mbo.mbo_erp_impact_note (
  erp_impact_note_id,
  reopen_request_id,
  reviewer_user_id,
  impact_note,
  reviewed_at,
  created_at
) values
(
  '34343434-3434-3434-3434-343434343434',
  '32323232-3232-3232-3232-323232323232',
  '44444444-4444-4444-4444-444444444444',
  'ERP downstream correction path confirmed.',
  now() - interval '1 day',
  now() - interval '1 day'
)
on conflict (erp_impact_note_id) do nothing;

-- ============================================================
-- 11. EXPORT / REMINDER / CALIBRATION
-- ============================================================

insert into app_mbo.mbo_aggregation_export_job (
  aggregation_export_job_id,
  requested_by_user_id,
  export_scope,
  export_format,
  job_status,
  requested_at,
  completed_at,
  output_uri
) values
(
  '35353535-3535-3535-3535-353535353535',
  '44444444-4444-4444-4444-444444444444',
  'period_summary',
  'csv',
  'completed',
  now() - interval '6 days',
  now() - interval '6 days' + interval '5 minutes',
  'https://example.internal/exports/mbo-period-summary.csv'
)
on conflict (aggregation_export_job_id) do nothing;

insert into app_mbo.mbo_reminder_batch_job (
  reminder_batch_job_id,
  requested_by_user_id,
  reminder_type,
  target_scope,
  job_status,
  requested_at,
  completed_at
) values
(
  '36363636-3636-3636-3636-363636363636',
  '44444444-4444-4444-4444-444444444444',
  'batch_progress_reminder',
  'current_period_team_scope',
  'completed',
  now() - interval '5 days',
  now() - interval '5 days' + interval '3 minutes'
)
on conflict (reminder_batch_job_id) do nothing;

insert into app_mbo.mbo_evaluation_calibration_record (
  evaluation_calibration_record_id,
  period_id,
  objective_id,
  evaluation_id,
  calibration_status,
  calibration_comment,
  calibrated_by_user_id,
  calibrated_at,
  created_at
) values
(
  '37373737-3737-3737-3737-373737373737',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
  'ffffffff-ffff-ffff-ffff-ffffffffffff',
  '20202020-2020-2020-2020-202020202020',
  'reviewed',
  'Calibration confirmed as appropriate.',
  '44444444-4444-4444-4444-444444444444',
  now() - interval '4 days',
  now() - interval '4 days'
)
on conflict (evaluation_calibration_record_id) do nothing;

