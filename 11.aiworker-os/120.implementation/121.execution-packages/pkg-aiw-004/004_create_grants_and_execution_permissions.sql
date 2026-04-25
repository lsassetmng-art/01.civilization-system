begin;

grant usage on schema aiworker to
  role_aiw_official_intake_writer,
  role_aiw_controlled_function_executor,
  role_aiw_audit_reader,
  role_aiw_operations_reviewer,
  role_aiw_event_delivery,
  role_aiw_restricted_reviewer,
  role_aiw_privileged_reviewer;

grant select on aiworker.worker_master to role_aiw_operations_reviewer;
grant select on aiworker.developer_company_master to role_aiw_operations_reviewer;
grant select on aiworker.company_style_policy to role_aiw_operations_reviewer;
grant select on aiworker.company_ai_usage_tendency to role_aiw_operations_reviewer;
grant select on aiworker.user_ai_usage_tendency to role_aiw_operations_reviewer;
grant select on aiworker.worker_growth_profile to role_aiw_operations_reviewer;
grant select on aiworker.worker_growth_event to role_aiw_operations_reviewer;
grant select on aiworker.worker_capability_snapshot to role_aiw_operations_reviewer;
grant select on aiworker.worker_domain_proficiency to role_aiw_operations_reviewer;
grant select on aiworker.worker_role_proficiency to role_aiw_operations_reviewer;
grant select on aiworker.worker_assignment_state to role_aiw_operations_reviewer;
grant select on aiworker.worker_dispatch_reservation to role_aiw_operations_reviewer;
grant select on aiworker.worker_availability_state to role_aiw_operations_reviewer;
grant select on aiworker.worker_queue_membership to role_aiw_operations_reviewer;
grant select on aiworker.worker_company_affinity to role_aiw_operations_reviewer;
grant select on aiworker.worker_user_affinity to role_aiw_operations_reviewer;
grant select on aiworker.worker_assignment_fit_profile to role_aiw_operations_reviewer;
grant select on aiworker.command_row to role_aiw_operations_reviewer;
grant select on aiworker.draft_row to role_aiw_operations_reviewer;
grant select on aiworker.staging_row to role_aiw_operations_reviewer;

grant select on aiworker.worker_state_change_log to role_aiw_audit_reader;
grant select on aiworker.worker_assignment_history to role_aiw_audit_reader;
grant select on aiworker.worker_repair_history to role_aiw_audit_reader;
grant select on aiworker.worker_rebuild_history to role_aiw_audit_reader;
grant select on aiworker.worker_growth_profile to role_aiw_audit_reader;
grant select on aiworker.worker_growth_event to role_aiw_audit_reader;
grant select on aiworker.worker_assignment_state to role_aiw_audit_reader;
grant select on aiworker.worker_availability_state to role_aiw_audit_reader;
grant select on aiworker.event_outbox to role_aiw_audit_reader;

grant select on aiworker.worker_restricted_handling_policy to role_aiw_restricted_reviewer;
grant select on aiworker.worker_exception_control_state to role_aiw_restricted_reviewer;
grant select on aiworker.worker_state_change_log to role_aiw_restricted_reviewer;
grant select on aiworker.worker_repair_history to role_aiw_restricted_reviewer;
grant select on aiworker.worker_rebuild_history to role_aiw_restricted_reviewer;

grant select on aiworker.worker_privileged_profile to role_aiw_privileged_reviewer;
grant select on aiworker.worker_exception_control_state to role_aiw_privileged_reviewer;
grant select on aiworker.worker_state_change_log to role_aiw_privileged_reviewer;

grant insert, select on aiworker.official_intake_request to role_aiw_official_intake_writer;

grant select on aiworker.official_intake_request to role_aiw_controlled_function_executor;
grant update (intake_status, applied_at) on aiworker.official_intake_request to role_aiw_controlled_function_executor;

grant select on aiworker.event_outbox to role_aiw_event_delivery;
grant update (delivered_at) on aiworker.event_outbox to role_aiw_event_delivery;

grant execute on function aiworker.fn_apply_worker_assignment_state(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

grant execute on function aiworker.fn_apply_worker_availability_state(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

grant execute on function aiworker.fn_apply_worker_repair_transition(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

grant execute on function aiworker.fn_apply_worker_rebuild_transition(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

grant execute on function aiworker.fn_apply_worker_growth_event(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

grant execute on function aiworker.fn_apply_worker_privileged_context_change(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

grant execute on function aiworker.fn_apply_worker_tendency_update(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

grant execute on function aiworker.fn_record_business_result_correlation(
  uuid, text, text, uuid, uuid, text, text, text, text, text, boolean, text, timestamptz
) to role_aiw_controlled_function_executor;

commit;
