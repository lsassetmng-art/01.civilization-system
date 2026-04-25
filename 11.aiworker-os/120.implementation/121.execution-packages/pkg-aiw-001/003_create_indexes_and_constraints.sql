begin;

create unique index if not exists ux_worker_master_worker_code
  on aiworker.worker_master (worker_code);

create unique index if not exists ux_company_style_policy_active_pair
  on aiworker.company_style_policy (developer_company_id, company_style_profile_code);

create unique index if not exists ux_company_ai_usage_tendency_current
  on aiworker.company_ai_usage_tendency (tenant_company_id)
  where effective_to is null;

create unique index if not exists ux_user_ai_usage_tendency_current
  on aiworker.user_ai_usage_tendency (tenant_user_id)
  where effective_to is null;

create unique index if not exists ux_worker_assignment_state_current
  on aiworker.worker_assignment_state (worker_id)
  where effective_to is null;

create unique index if not exists ux_worker_availability_state_current
  on aiworker.worker_availability_state (worker_id)
  where effective_to is null;

create index if not exists ix_worker_dispatch_reservation_request
  on aiworker.worker_dispatch_reservation (business_request_id);

create index if not exists ix_worker_dispatch_reservation_worker
  on aiworker.worker_dispatch_reservation (worker_id);

create index if not exists ix_worker_growth_event_worker_occurred
  on aiworker.worker_growth_event (worker_id, occurred_at desc);

create index if not exists ix_worker_capability_snapshot_worker_snapshot
  on aiworker.worker_capability_snapshot (worker_id, snapshot_at desc);

create index if not exists ix_worker_state_change_log_worker_changed
  on aiworker.worker_state_change_log (worker_id, changed_at desc);

create index if not exists ix_worker_assignment_history_worker_started
  on aiworker.worker_assignment_history (worker_id, started_at desc);

create index if not exists ix_worker_repair_history_worker_opened
  on aiworker.worker_repair_history (worker_id, opened_at desc);

create index if not exists ix_worker_rebuild_history_worker_opened
  on aiworker.worker_rebuild_history (worker_id, opened_at desc);

create index if not exists ix_command_row_worker_requested
  on aiworker.command_row (target_worker_id, requested_at desc);

create index if not exists ix_command_row_tenant_company_requested
  on aiworker.command_row (tenant_company_id, requested_at desc);

create index if not exists ix_draft_row_command
  on aiworker.draft_row (command_id);

create index if not exists ix_staging_row_draft
  on aiworker.staging_row (draft_id);

create index if not exists ix_official_intake_request_staging
  on aiworker.official_intake_request (staging_id);

create index if not exists ix_event_outbox_business_request
  on aiworker.event_outbox (related_business_request_id);

create index if not exists ix_event_outbox_worker_emitted
  on aiworker.event_outbox (related_worker_id, emitted_at desc);

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_master_not_suspended_and_retired'
      and conrelid = 'aiworker.worker_master'::regclass
  ) then
    alter table aiworker.worker_master
      add constraint ck_worker_master_not_suspended_and_retired
      check (not (suspended_flag = true and retired_flag = true));
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_growth_profile_nonnegative_scores'
      and conrelid = 'aiworker.worker_growth_profile'::regclass
  ) then
    alter table aiworker.worker_growth_profile
      add constraint ck_worker_growth_profile_nonnegative_scores
      check (
        growth_level >= 0 and
        stability_score >= 0 and
        recovery_learning_score >= 0 and
        suggestion_effectiveness_score >= 0 and
        escalation_accuracy_score >= 0
      );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_domain_proficiency_nonnegative'
      and conrelid = 'aiworker.worker_domain_proficiency'::regclass
  ) then
    alter table aiworker.worker_domain_proficiency
      add constraint ck_worker_domain_proficiency_nonnegative
      check (proficiency_score >= 0);
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_role_proficiency_nonnegative'
      and conrelid = 'aiworker.worker_role_proficiency'::regclass
  ) then
    alter table aiworker.worker_role_proficiency
      add constraint ck_worker_role_proficiency_nonnegative
      check (proficiency_score >= 0);
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_availability_state_capacity_positive'
      and conrelid = 'aiworker.worker_availability_state'::regclass
  ) then
    alter table aiworker.worker_availability_state
      add constraint ck_worker_availability_state_capacity_positive
      check (concurrent_capacity >= 0);
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_queue_membership_position_nonnegative'
      and conrelid = 'aiworker.worker_queue_membership'::regclass
  ) then
    alter table aiworker.worker_queue_membership
      add constraint ck_worker_queue_membership_position_nonnegative
      check (queue_position is null or queue_position >= 0);
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_company_affinity_scores_nonnegative'
      and conrelid = 'aiworker.worker_company_affinity'::regclass
  ) then
    alter table aiworker.worker_company_affinity
      add constraint ck_worker_company_affinity_scores_nonnegative
      check (
        company_fit_score >= 0 and
        trust_alignment_score >= 0 and
        communication_fit_score >= 0
      );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_user_affinity_scores_nonnegative'
      and conrelid = 'aiworker.worker_user_affinity'::regclass
  ) then
    alter table aiworker.worker_user_affinity
      add constraint ck_worker_user_affinity_scores_nonnegative
      check (
        user_fit_score >= 0 and
        trust_alignment_score >= 0 and
        communication_fit_score >= 0
      );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1
    from pg_constraint
    where conname = 'ck_worker_assignment_fit_score_nonnegative'
      and conrelid = 'aiworker.worker_assignment_fit_profile'::regclass
  ) then
    alter table aiworker.worker_assignment_fit_profile
      add constraint ck_worker_assignment_fit_score_nonnegative
      check (assignment_fit_score >= 0);
  end if;
end
$$;

commit;
