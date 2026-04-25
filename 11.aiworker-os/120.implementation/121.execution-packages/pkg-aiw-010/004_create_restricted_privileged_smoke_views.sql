begin;

create or replace view aiworker.v_restricted_privileged_smoke_latest as
select distinct on (rpsl.flow_code)
  rpsl.flow_code,
  rpsl.result_code,
  rpsl.note_text,
  rpsl.executed_at,
  rpsl.executed_by
from aiworker.restricted_privileged_smoke_log rpsl
order by rpsl.flow_code, rpsl.executed_at desc, rpsl.restricted_privileged_smoke_log_id desc;

commit;
