begin;

create or replace view aiworker.v_business_event_contract_registry_active as
select
  contract_code,
  direction_code,
  event_type,
  payload_schema_name,
  source_system,
  target_system,
  required_top_level_keys,
  active_flag,
  created_at,
  updated_at
from aiworker.business_event_contract_registry
where active_flag = true;

create or replace view aiworker.v_business_event_contract_latest_validation as
select distinct on (bel.contract_code)
  bel.contract_code,
  bel.direction_code,
  bel.event_type,
  bel.validation_result_code,
  bel.related_business_request_id,
  bel.payload_ref,
  bel.note_text,
  bel.validated_at,
  bel.validated_by
from aiworker.business_event_validation_log bel
order by bel.contract_code, bel.validated_at desc, bel.business_event_validation_log_id desc;

create or replace view aiworker.v_business_cross_boundary_smoke_latest as
select distinct on (bsl.flow_code)
  bsl.flow_code,
  bsl.result_code,
  bsl.note_text,
  bsl.executed_at,
  bsl.executed_by
from aiworker.business_cross_boundary_smoke_log bsl
order by bsl.flow_code, bsl.executed_at desc, bsl.business_cross_boundary_smoke_log_id desc;

commit;
