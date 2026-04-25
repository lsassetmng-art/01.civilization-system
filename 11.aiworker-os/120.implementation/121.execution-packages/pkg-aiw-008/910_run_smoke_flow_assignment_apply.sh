#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
LOG_DIR="$PKG_DIR/.smoke-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/910_run_smoke_flow_assignment_apply_$(date '+%Y%m%d_%H%M%S').log"

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

{
  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-008 SMOKE FLOW ASSIGNMENT APPLY'
  printf '%s\n' '============================================================'

  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<'SQL'
select aiworker.fn_prepare_smoke_assignment_reset();

with exec_result as (
  select *
    from aiworker.fn_apply_worker_assignment_state(
      '71000000-0000-0000-0000-000000003104'::uuid,
      'SYSTEM',
      'SMOKE_SYSTEM',
      '71000000-0000-0000-0000-000000001001'::uuid,
      '71000000-0000-0000-0000-000000003001'::uuid,
      'GATE_STANDARD',
      'ASSIGNED',
      'aiworker.worker_assignment_state',
      'SMOKE_INTAKE_ASSIGNMENT_V1',
      null,
      true,
      'SMOKE_ASSIGNMENT',
      now()
    )
),
lineage_result as (
  select aiworker.fn_register_request_lineage(
    'smoke-request-hash-001',
    '71000000-0000-0000-0000-000000003001'::uuid,
    '71000000-0000-0000-0000-000000001001'::uuid,
    'aiworker.worker_assignment_state',
    'aiworker.fn_apply_worker_assignment_state',
    'ASSIGNED',
    '1.0',
    'SMOKE_INTAKE_ASSIGNMENT_V1',
    '71000000-0000-0000-0000-000000003104'::uuid,
    case when success_flag then 'OK_APPLIED' else result_code end,
    success_flag,
    event_id
  ) as lineage_key
  from exec_result
),
smoke_log as (
  select aiworker.fn_log_smoke_flow_execution(
    'SMOKE_ASSIGNMENT_APPLY',
    case when success_flag then 'PASS' else 'FAIL' end,
    result_code,
    'SMOKE_SYSTEM'
  ) as smoke_flow_execution_log_id
  from exec_result
)
select
  exec_result.*,
  lineage_result.lineage_key
from exec_result
cross join lineage_result;
SQL

  printf '%s\n' '------------------------------------------------------------'
  printf '%s\n' 'CURRENT ASSIGNMENT STATE FOR SMOKE WORKER'
  psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select worker_id || '|' || assignment_state_code || '|' || coalesce(assigned_app_scope_code,'')
from aiworker.worker_assignment_state
where worker_id = '71000000-0000-0000-0000-000000001001'::uuid
  and effective_to is null;
SQL

  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-008 SMOKE FLOW ASSIGNMENT APPLY FINISHED'
  printf '%s\n' '============================================================'
} 2>&1 | tee "$LOG_FILE"
