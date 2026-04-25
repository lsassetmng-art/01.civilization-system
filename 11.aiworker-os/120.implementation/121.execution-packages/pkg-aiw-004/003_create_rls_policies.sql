begin;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'company_ai_usage_tendency'
       and policyname = 'pol_aiw_company_tendency_ops_tenant'
  ) then
    execute $sql$
      create policy pol_aiw_company_tendency_ops_tenant
      on aiworker.company_ai_usage_tendency
      for select
      to role_aiw_operations_reviewer
      using (tenant_company_id = aiworker.fn_current_tenant_company_id())
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'user_ai_usage_tendency'
       and policyname = 'pol_aiw_user_tendency_ops_tenant'
  ) then
    execute $sql$
      create policy pol_aiw_user_tendency_ops_tenant
      on aiworker.user_ai_usage_tendency
      for select
      to role_aiw_operations_reviewer
      using (tenant_user_id = aiworker.fn_current_tenant_user_id())
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_assignment_state'
       and policyname = 'pol_aiw_assignment_ops_tenant'
  ) then
    execute $sql$
      create policy pol_aiw_assignment_ops_tenant
      on aiworker.worker_assignment_state
      for select
      to role_aiw_operations_reviewer
      using (
        (tenant_company_id is null or tenant_company_id = aiworker.fn_current_tenant_company_id())
        and
        (tenant_user_id is null or tenant_user_id = aiworker.fn_current_tenant_user_id())
      )
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_company_affinity'
       and policyname = 'pol_aiw_company_affinity_ops_tenant'
  ) then
    execute $sql$
      create policy pol_aiw_company_affinity_ops_tenant
      on aiworker.worker_company_affinity
      for select
      to role_aiw_operations_reviewer
      using (tenant_company_id = aiworker.fn_current_tenant_company_id())
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_user_affinity'
       and policyname = 'pol_aiw_user_affinity_ops_tenant'
  ) then
    execute $sql$
      create policy pol_aiw_user_affinity_ops_tenant
      on aiworker.worker_user_affinity
      for select
      to role_aiw_operations_reviewer
      using (tenant_user_id = aiworker.fn_current_tenant_user_id())
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_state_change_log'
       and policyname = 'pol_aiw_state_change_audit_reader'
  ) then
    execute $sql$
      create policy pol_aiw_state_change_audit_reader
      on aiworker.worker_state_change_log
      for select
      to role_aiw_audit_reader
      using (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_assignment_history'
       and policyname = 'pol_aiw_assignment_history_audit_reader'
  ) then
    execute $sql$
      create policy pol_aiw_assignment_history_audit_reader
      on aiworker.worker_assignment_history
      for select
      to role_aiw_audit_reader
      using (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_repair_history'
       and policyname = 'pol_aiw_repair_history_audit_reader'
  ) then
    execute $sql$
      create policy pol_aiw_repair_history_audit_reader
      on aiworker.worker_repair_history
      for select
      to role_aiw_audit_reader
      using (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_rebuild_history'
       and policyname = 'pol_aiw_rebuild_history_audit_reader'
  ) then
    execute $sql$
      create policy pol_aiw_rebuild_history_audit_reader
      on aiworker.worker_rebuild_history
      for select
      to role_aiw_audit_reader
      using (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_privileged_profile'
       and policyname = 'pol_aiw_privileged_profile_privileged_reviewer'
  ) then
    execute $sql$
      create policy pol_aiw_privileged_profile_privileged_reviewer
      on aiworker.worker_privileged_profile
      for select
      to role_aiw_privileged_reviewer
      using (active_flag = true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_restricted_handling_policy'
       and policyname = 'pol_aiw_restricted_policy_restricted_reviewer'
  ) then
    execute $sql$
      create policy pol_aiw_restricted_policy_restricted_reviewer
      on aiworker.worker_restricted_handling_policy
      for select
      to role_aiw_restricted_reviewer
      using (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_exception_control_state'
       and policyname = 'pol_aiw_exception_control_restricted_reviewer'
  ) then
    execute $sql$
      create policy pol_aiw_exception_control_restricted_reviewer
      on aiworker.worker_exception_control_state
      for select
      to role_aiw_restricted_reviewer
      using (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_exception_control_state'
       and policyname = 'pol_aiw_exception_control_privileged_reviewer'
  ) then
    execute $sql$
      create policy pol_aiw_exception_control_privileged_reviewer
      on aiworker.worker_exception_control_state
      for select
      to role_aiw_privileged_reviewer
      using (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_state_change_log'
       and policyname = 'pol_aiw_state_change_privileged_subset'
  ) then
    execute $sql$
      create policy pol_aiw_state_change_privileged_subset
      on aiworker.worker_state_change_log
      for select
      to role_aiw_privileged_reviewer
      using (state_family_code = 'PRIVILEGED_CONTEXT')
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'worker_state_change_log'
       and policyname = 'pol_aiw_state_change_restricted_subset'
  ) then
    execute $sql$
      create policy pol_aiw_state_change_restricted_subset
      on aiworker.worker_state_change_log
      for select
      to role_aiw_restricted_reviewer
      using (state_family_code in ('REPAIR', 'REBUILD'))
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'official_intake_request'
       and policyname = 'pol_aiw_official_intake_writer_insert_self'
  ) then
    execute $sql$
      create policy pol_aiw_official_intake_writer_insert_self
      on aiworker.official_intake_request
      for insert
      to role_aiw_official_intake_writer
      with check (submitted_by = current_user)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'official_intake_request'
       and policyname = 'pol_aiw_official_intake_writer_select_self'
  ) then
    execute $sql$
      create policy pol_aiw_official_intake_writer_select_self
      on aiworker.official_intake_request
      for select
      to role_aiw_official_intake_writer
      using (submitted_by = current_user)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'official_intake_request'
       and policyname = 'pol_aiw_controlled_executor_rw_intake'
  ) then
    execute $sql$
      create policy pol_aiw_controlled_executor_rw_intake
      on aiworker.official_intake_request
      for all
      to role_aiw_controlled_function_executor
      using (true)
      with check (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'event_outbox'
       and policyname = 'pol_aiw_event_delivery_select_undelivered'
  ) then
    execute $sql$
      create policy pol_aiw_event_delivery_select_undelivered
      on aiworker.event_outbox
      for select
      to role_aiw_event_delivery
      using (delivered_at is null)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'event_outbox'
       and policyname = 'pol_aiw_event_delivery_update_undelivered'
  ) then
    execute $sql$
      create policy pol_aiw_event_delivery_update_undelivered
      on aiworker.event_outbox
      for update
      to role_aiw_event_delivery
      using (delivered_at is null)
      with check (true)
    $sql$;
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
      from pg_policies
     where schemaname = 'aiworker'
       and tablename = 'event_outbox'
       and policyname = 'pol_aiw_audit_reader_select_event_outbox'
  ) then
    execute $sql$
      create policy pol_aiw_audit_reader_select_event_outbox
      on aiworker.event_outbox
      for select
      to role_aiw_audit_reader
      using (true)
    $sql$;
  end if;
end
$$;

commit;
