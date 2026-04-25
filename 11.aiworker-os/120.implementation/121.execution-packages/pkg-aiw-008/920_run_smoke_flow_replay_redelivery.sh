#!/data/data/com.termux/files/usr/bin/bash
set -eu
set -o pipefail

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
LOG_DIR="$PKG_DIR/.smoke-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/920_run_smoke_flow_replay_redelivery_$(date '+%Y%m%d_%H%M%S').log"

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

{
  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-008 SMOKE FLOW REPLAY REDELIVERY'
  printf '%s\n' '============================================================'

  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<'SQL'
with replay_decision as (
  select *
    from aiworker.fn_decide_replay_request(
      'smoke-request-hash-001',
      '71000000-0000-0000-0000-000000003001'::uuid,
      '71000000-0000-0000-0000-000000001001'::uuid,
      'aiworker.worker_assignment_state',
      'aiworker.fn_apply_worker_assignment_state',
      'ASSIGNED',
      '1.0',
      'SMOKE_INTAKE_ASSIGNMENT_V1',
      now(),
      'SYSTEM',
      'SMOKE_SYSTEM'
    )
),
redelivery as (
  select
    case
      when redelivery_allowed_flag then aiworker.fn_redeliver_result_for_request_hash('smoke-request-hash-001', 'SMOKE_SYSTEM')
      else null::uuid
    end as redelivered_event_id
  from replay_decision
),
smoke_log as (
  select aiworker.fn_log_smoke_flow_execution(
    'SMOKE_REPLAY_REDELIVERY',
    case
      when replay_decision_code in ('REDELIVER_RESULT_ONLY', 'NOOP_ALREADY_APPLIED') then 'PASS'
      else 'FAIL'
    end,
    replay_decision_code,
    'SMOKE_SYSTEM'
  )
  from replay_decision
)
select
  replay_decision.*,
  redelivery.redelivered_event_id
from replay_decision
cross join redelivery;
SQL

  printf '%s\n' '------------------------------------------------------------'
  printf '%s\n' 'LATEST EVENT_OUTBOX ROWS FOR SMOKE REQUEST'
  psql "$PERSONA_DATABASE_URL" -At <<'SQL'
select event_id || '|' || event_type || '|' || coalesce(summary_code,'') || '|' || emitted_at::text
from aiworker.event_outbox
where related_business_request_id = '71000000-0000-0000-0000-000000003001'::uuid
order by emitted_at desc
limit 5;
SQL

  printf '%s\n' '============================================================'
  printf '%s\n' 'PKG-AIW-008 SMOKE FLOW REPLAY REDELIVERY FINISHED'
  printf '%s\n' '============================================================'
} 2>&1 | tee "$LOG_FILE"
