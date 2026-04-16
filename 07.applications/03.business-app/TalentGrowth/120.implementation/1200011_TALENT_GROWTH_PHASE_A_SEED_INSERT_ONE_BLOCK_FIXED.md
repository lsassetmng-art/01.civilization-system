# TALENT GROWTH PHASE A SEED INSERT ONE-BLOCK FIXED

status: draft-phase-a-seed-insert-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の最低 seed / mock actor / mock flow を
一括投入する one-block を固定するための資料である。

# 1. target
- master minimum
- actor baseline
- evaluation baseline
- growth baseline
- notification baseline

# 2. one-block
~~~bash
psql "$DATABASE_URL" <<'SQL'
begin;

insert into tg_employee_profile (
  employee_id, company_id, employee_code, full_name, display_name, email, employment_type_code,
  organization_id, current_job_role_id, current_grade_id, manager_employee_id,
  preferred_language_code, reporting_currency_code, is_active, created_by, updated_by
) values
  ('emp_demo_01', 'comp_demo_01', 'E0001', '山田 太郎', '山田 太郎', 'yamada@example.com', 'FULL_TIME',
   'org_tohoku_sales', 'jrole_store_staff', 'grade_g2', 'emp_demo_mgr_01',
   'ja', 'JPY', true, 'seed', 'seed'),
  ('emp_demo_mgr_01', 'comp_demo_01', 'M0001', '佐藤 花子', '佐藤 花子', 'sato@example.com', 'FULL_TIME',
   'org_tohoku_sales', 'jrole_store_manager', 'grade_g3', null,
   'ja', 'JPY', true, 'seed', 'seed'),
  ('emp_demo_hr_01', 'comp_demo_01', 'H0001', '鈴木 健', '鈴木 健', 'suzuki@example.com', 'FULL_TIME',
   'org_hr', null, null, null,
   'ja', 'JPY', true, 'seed', 'seed')
on conflict do nothing;

insert into tg_employee_certification (
  employee_certification_id, company_id, employee_id, certification_id,
  certification_name_snapshot, issuer_name_snapshot, acquired_date, expiry_date,
  renewal_required, certification_status_code, created_by, updated_by
) values
  ('ecert_demo_01', 'comp_demo_01', 'emp_demo_01', 'cert_hygiene_manager',
   '第一種衛生管理者', '厚生労働省', '2023-05-01', '2026-05-15',
   true, 'EXPIRING_SOON', 'seed', 'seed')
on conflict do nothing;

insert into tg_employee_skill (
  employee_skill_id, company_id, employee_id, skill_id, proficiency_level,
  self_rating, manager_rating, evidence_count, employee_comment, created_by, updated_by
) values
  ('eskill_demo_01', 'comp_demo_01', 'emp_demo_01', 'skill_customer_response', 4,
   82, 80, 2, 'クレーム初動対応は単独で実施可能', 'seed', 'seed'),
  ('eskill_demo_03', 'comp_demo_01', 'emp_demo_01', 'skill_numeric_management', 2,
   55, 58, 0, '月次分析は弱い', 'seed', 'seed')
on conflict do nothing;

insert into tg_role_requirement (
  role_requirement_id, company_id, job_family_id, job_role_id, grade_id,
  requirement_version, effective_from, status_code,
  overall_weight_skill, overall_weight_certification, overall_weight_experience,
  overall_weight_performance, overall_weight_behavior, overall_weight_growth,
  created_by, updated_by
) values
  ('rr_demo_store_manager_2026h1', 'comp_demo_01', 'jfam_store', 'jrole_store_manager', 'grade_g3',
   '2026-H1', '2026-05-01', 'ACTIVE',
   30, 15, 10, 15, 10, 20,
   'seed', 'seed')
on conflict do nothing;

insert into tg_role_requirement_skill (
  role_requirement_skill_id, company_id, role_requirement_id, skill_id,
  required_level, preferred_level, weight_score, mandatory_flag,
  created_by, updated_by
) values
  ('rrs_demo_01', 'comp_demo_01', 'rr_demo_store_manager_2026h1', 'skill_store_operation',
   4, 5, 10, true, 'seed', 'seed'),
  ('rrs_demo_02', 'comp_demo_01', 'rr_demo_store_manager_2026h1', 'skill_numeric_management',
   4, 5, 10, true, 'seed', 'seed'),
  ('rrs_demo_03', 'comp_demo_01', 'rr_demo_store_manager_2026h1', 'skill_people_development',
   3, 4, 10, true, 'seed', 'seed')
on conflict do nothing;

insert into tg_role_requirement_certification (
  role_requirement_certification_id, company_id, role_requirement_id, certification_id,
  mandatory_flag, preferred_flag, weight_score, renewal_required,
  created_by, updated_by
) values
  ('rrc_demo_01', 'comp_demo_01', 'rr_demo_store_manager_2026h1', 'cert_hygiene_manager',
   true, false, 15, true, 'seed', 'seed')
on conflict do nothing;

insert into tg_evaluation_cycle (
  evaluation_cycle_id, company_id, cycle_code, cycle_name, target_scope_code,
  period_start, period_end, cycle_status_code, created_by, updated_by
) values
  ('ecycle_demo_2026h1', 'comp_demo_01', '2026-H1', '2026年上期評価', 'COMPANY',
   '2026-04-01', '2026-09-30', 'OPEN', 'seed', 'seed')
on conflict do nothing;

insert into tg_evaluation_sheet (
  evaluation_sheet_id, company_id, evaluation_cycle_id, employee_id, manager_employee_id, hr_owner_employee_id,
  current_job_role_id, current_grade_id, target_job_role_id, target_grade_id,
  evaluation_status_code, current_state_rank, future_readiness_rank,
  total_evaluation_score, current_role_fit_score, target_role_fit_score,
  growth_potential_score, promotion_readiness_score, successor_readiness_score,
  created_by, updated_by
) values
  ('esheet_demo_01', 'comp_demo_01', 'ecycle_demo_2026h1', 'emp_demo_01', 'emp_demo_mgr_01', 'emp_demo_hr_01',
   'jrole_store_staff', 'grade_g2', 'jrole_store_manager', 'grade_g3',
   'SELF_REVIEW_SUBMITTED', 'B', 'B',
   75.50, 79.00, 68.00,
   81.00, 64.00, 61.00,
   'seed', 'seed')
on conflict do nothing;

insert into tg_growth_plan (
  growth_plan_id, company_id, employee_id, evaluation_sheet_id, plan_title,
  target_job_role_id, plan_period_start, plan_period_end, growth_plan_status_code,
  owner_employee_id, manager_employee_id, next_review_due_at, created_by, updated_by
) values
  ('gplan_demo_01', 'comp_demo_01', 'emp_demo_01', 'esheet_demo_01', '2026年上期 成長計画',
   'jrole_store_manager', '2026-05-01', '2026-10-31', 'ACTIVE',
   'emp_demo_01', 'emp_demo_mgr_01', '2026-06-30', 'seed', 'seed')
on conflict do nothing;

insert into tg_growth_action (
  growth_action_id, company_id, growth_plan_id, employee_id, action_type_code,
  action_title, priority_code, action_status_code, completion_percent,
  created_by, updated_by
) values
  ('gact_demo_01', 'comp_demo_01', 'gplan_demo_01', 'emp_demo_01', 'TRAINING',
   '数値管理基礎研修', 'HIGH', 'IN_PROGRESS', 50,
   'seed', 'seed')
on conflict do nothing;

insert into tg_growth_recommendation (
  growth_recommendation_id, company_id, employee_id, evaluation_sheet_id,
  recommendation_type_code, recommendation_title, recommendation_reason,
  priority_code, accepted_flag, accepted_at, created_by, updated_by
) values
  ('grec_demo_01', 'comp_demo_01', 'emp_demo_01', 'esheet_demo_01',
   'TRAINING', '数値管理基礎研修', '店長候補として数値管理の補強が必要',
   'HIGH', true, now(), 'seed', 'seed')
on conflict do nothing;

insert into tg_outbox_event (
  outbox_event_id, company_id, event_name, event_domain, entity_type, entity_id,
  payload_json, status_code, occurred_at, created_by
) values
  ('outevt_demo_01', 'comp_demo_01', 'tg.evaluation.sheet.self_review_submitted', 'evaluation',
   'EVALUATION_SHEET', 'esheet_demo_01',
   '{"employee_id":"emp_demo_01","manager_employee_id":"emp_demo_mgr_01"}'::jsonb,
   'PUBLISHED', now(), 'seed')
on conflict do nothing;

insert into tg_notification (
  notification_id, company_id, source_event_id, notification_type_code,
  target_employee_id, title_key, body_key, body_params_json,
  deep_link_type, deep_link_target_id, priority_code, notification_status_code, created_by
) values
  ('notif_demo_01', 'comp_demo_01', 'outevt_demo_01', 'REVIEW_REQUEST',
   'emp_demo_mgr_01', 'tg.notify.review_request.title', 'tg.notify.review_request.body',
   '{"target_employee_name":"山田 太郎","cycle_name":"2026年上期評価"}'::jsonb,
   'EVALUATION_SHEET', 'esheet_demo_01', 'HIGH', 'ACTIVE', 'seed')
on conflict do nothing;

commit;
SQL
~~~

# 3. quick verification
~~~bash
psql "$DATABASE_URL" <<'SQL'
select 'employee_profile' as entity, count(*) as cnt from tg_employee_profile
union all
select 'employee_certification', count(*) from tg_employee_certification
union all
select 'employee_skill', count(*) from tg_employee_skill
union all
select 'evaluation_sheet', count(*) from tg_evaluation_sheet
union all
select 'growth_plan', count(*) from tg_growth_plan
union all
select 'notification', count(*) from tg_notification;
SQL
~~~

# 4. conclusion
phase A の demo baseline は、
この seed one-block を基準に投入する。
