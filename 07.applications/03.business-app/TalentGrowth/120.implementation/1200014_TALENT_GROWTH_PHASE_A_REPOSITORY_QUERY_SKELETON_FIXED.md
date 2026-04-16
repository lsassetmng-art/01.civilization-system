# TALENT GROWTH PHASE A REPOSITORY QUERY SKELETON FIXED

status: draft-phase-a-repository-query-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の repository query skeleton を固定するための資料である。

# 1. repository split
phase A repositories:
- employeeProfileRepository
- certificationRepository
- skillRepository
- evaluationRepository
- roleRequirementRepository
- growthPlanRepository
- auditRepository
- outboxRepository
- notificationRepository

# 2. repository rule
- repository is DB-focused only
- no Response shaping
- no role decision hidden here
- service passes company scope explicitly
- update queries return changed ids / versions when needed

# 3. representative query skeletons

## 3-1. employee dashboard source query
~~~sql
select
  ep.employee_id,
  ep.full_name,
  ep.organization_id,
  es.current_role_fit_score,
  es.target_role_fit_score,
  es.growth_potential_score,
  es.current_state_rank
from tg_employee_profile ep
left join tg_evaluation_sheet es
  on es.employee_id = ep.employee_id
 and es.company_id = ep.company_id
where ep.company_id = $1
  and ep.employee_id = $2
  and ep.deleted_at is null;
~~~

## 3-2. certification list query
~~~sql
select
  ec.employee_certification_id,
  ec.employee_id,
  ec.certification_id,
  ec.certification_name_snapshot,
  ec.issuer_name_snapshot,
  ec.acquired_date,
  ec.expiry_date,
  ec.renewal_required,
  ec.certification_status_code
from tg_employee_certification ec
where ec.company_id = $1
  and ec.employee_id = $2
  and ec.deleted_at is null
order by ec.expiry_date nulls last, ec.created_at desc;
~~~

## 3-3. skill list query
~~~sql
select
  es.employee_skill_id,
  es.employee_id,
  es.skill_id,
  sm.label_ja as skill_label,
  es.proficiency_level,
  es.self_rating,
  es.manager_rating,
  es.evidence_count,
  es.employee_comment,
  es.manager_comment
from tg_employee_skill es
join tg_skill_master sm
  on sm.skill_id = es.skill_id
where es.company_id = $1
  and es.employee_id = $2
  and es.deleted_at is null
order by sm.sort_order, sm.label_ja;
~~~

## 3-4. evaluation sheet detail query
~~~sql
select
  es.evaluation_sheet_id,
  es.employee_id,
  ep.full_name as employee_name,
  es.manager_employee_id,
  ec.cycle_name,
  es.evaluation_status_code,
  es.current_state_rank,
  es.future_readiness_rank,
  es.total_evaluation_score,
  es.current_role_fit_score,
  es.target_role_fit_score,
  es.growth_potential_score,
  es.promotion_readiness_score,
  es.successor_readiness_score,
  es.lock_version
from tg_evaluation_sheet es
join tg_employee_profile ep
  on ep.employee_id = es.employee_id
join tg_evaluation_cycle ec
  on ec.evaluation_cycle_id = es.evaluation_cycle_id
where es.company_id = $1
  and es.evaluation_sheet_id = $2
  and es.deleted_at is null;
~~~

## 3-5. evaluation status update with lock_version
~~~sql
update tg_evaluation_sheet
set
  evaluation_status_code = $3,
  updated_at = now(),
  updated_by = $4,
  audit_trace_id = $5,
  lock_version = lock_version + 1,
  self_review_submitted_at = case
    when $3 = 'SELF_REVIEW_SUBMITTED' then now()
    else self_review_submitted_at
  end
where company_id = $1
  and evaluation_sheet_id = $2
  and lock_version = $6
returning evaluation_sheet_id, evaluation_status_code, lock_version;
~~~

## 3-6. manager review queue query
~~~sql
select
  es.evaluation_sheet_id,
  es.employee_id,
  ep.full_name as employee_name,
  ep.organization_id,
  es.current_state_rank,
  es.evaluation_status_code,
  es.self_review_submitted_at
from tg_evaluation_sheet es
join tg_employee_profile ep
  on ep.employee_id = es.employee_id
where es.company_id = $1
  and es.manager_employee_id = $2
  and es.evaluation_status_code in ('SELF_REVIEW_SUBMITTED', 'MANAGER_REVIEW_DRAFT')
  and es.deleted_at is null
order by es.self_review_submitted_at asc nulls last, ep.full_name;
~~~

## 3-7. role requirement insert skeleton
~~~sql
insert into tg_role_requirement (
  role_requirement_id,
  company_id,
  job_family_id,
  job_role_id,
  grade_id,
  requirement_version,
  effective_from,
  effective_to,
  status_code,
  overall_weight_skill,
  overall_weight_certification,
  overall_weight_experience,
  overall_weight_performance,
  overall_weight_behavior,
  overall_weight_growth,
  created_by,
  updated_by
) values (
  $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$16
)
returning role_requirement_id;
~~~

## 3-8. growth plan list query
~~~sql
select
  gp.growth_plan_id,
  gp.employee_id,
  gp.plan_title,
  gp.target_job_role_id,
  jr.label_ja as target_job_role_label,
  gp.plan_period_start,
  gp.plan_period_end,
  gp.growth_plan_status_code,
  gp.next_review_due_at
from tg_growth_plan gp
left join tg_job_role_master jr
  on jr.job_role_id = gp.target_job_role_id
where gp.company_id = $1
  and gp.employee_id = $2
  and gp.deleted_at is null
order by gp.plan_period_start desc, gp.created_at desc;
~~~

## 3-9. growth progress update skeleton
~~~sql
update tg_growth_action
set
  completion_percent = $4,
  action_status_code = $5,
  updated_at = now(),
  updated_by = $6,
  audit_trace_id = $7
where company_id = $1
  and growth_plan_id = $2
  and growth_action_id = $3
returning growth_action_id, completion_percent, action_status_code;
~~~

## 3-10. audit append skeleton
~~~sql
insert into tg_evaluation_change_audit (
  evaluation_change_audit_id,
  company_id,
  evaluation_sheet_id,
  changed_by_employee_id,
  changed_by_role_code,
  action_type,
  changed_field_name,
  old_value_text,
  new_value_text,
  change_reason_text,
  changed_at,
  audit_trace_id,
  created_by
) values (
  $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,now(),$11,$12
);
~~~

## 3-11. outbox append skeleton
~~~sql
insert into tg_outbox_event (
  outbox_event_id,
  company_id,
  event_name,
  event_domain,
  entity_type,
  entity_id,
  payload_json,
  status_code,
  occurred_at,
  audit_trace_id,
  created_by
) values (
  $1,$2,$3,$4,$5,$6,$7,'READY',now(),$8,$9
)
returning outbox_event_id;
~~~

# 4. repository return rule
repository should return:
- inserted / updated ids
- current lock_version if relevant
- minimal joined fields for caller
- no user-facing string shaping

# 5. repository guardrails
- always filter by company_id
- soft-delete respected where applicable
- lock_version update must return row count / returning data
- no hidden admin-scope omission
- no event payload shaping inside unrelated repositories

# 6. conclusion
phase A repository query skeleton は、
company scope strict / lock_version aware / audit-outbox compatible
の形で固定する。
