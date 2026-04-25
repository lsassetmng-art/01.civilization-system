begin;

create or replace function aiworker.fn_current_app_setting_text(
  p_setting_name text
)
returns text
language sql
stable
as $$
  select nullif(current_setting(p_setting_name, true), '')
$$;

create or replace function aiworker.fn_current_tenant_company_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.tenant_company_id', true), '')::uuid
$$;

create or replace function aiworker.fn_current_tenant_user_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.tenant_user_id', true), '')::uuid
$$;

alter table aiworker.company_ai_usage_tendency enable row level security;
alter table aiworker.user_ai_usage_tendency enable row level security;
alter table aiworker.worker_assignment_state enable row level security;
alter table aiworker.worker_company_affinity enable row level security;
alter table aiworker.worker_user_affinity enable row level security;
alter table aiworker.worker_privileged_profile enable row level security;
alter table aiworker.worker_restricted_handling_policy enable row level security;
alter table aiworker.worker_exception_control_state enable row level security;
alter table aiworker.worker_state_change_log enable row level security;
alter table aiworker.worker_assignment_history enable row level security;
alter table aiworker.worker_repair_history enable row level security;
alter table aiworker.worker_rebuild_history enable row level security;
alter table aiworker.official_intake_request enable row level security;
alter table aiworker.event_outbox enable row level security;

commit;
