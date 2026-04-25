# ============================================================
# STATIC ART OS PERSONA REFERENCE RUNTIME OPERATIONS RUNBOOK
# ============================================================

status: active-runbook
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Provide the operational runbook for Persona reference behavior once
implementation begins.

runtime_scenarios:
  scenario_1_normal_reference_available:
    operator_expectation:
      - signed snapshot current row exists
      - projection exists
      - display renders normally

  scenario_2_projection_missing:
    operator_expectation:
      - reference may still exist
      - UI shows projection unavailable or stale-safe state
      - do not fabricate local truth
    check:
      - reflection logs
      - projection refresh result path

  scenario_3_reference_expired:
    operator_expectation:
      - display becomes expired/unavailable
      - history still visible internally if needed
    check:
      - expires_at
      - latest source_event_id
      - rights/refresh results

  scenario_4_duplicate_event_delivery:
    operator_expectation:
      - no duplicate current rows
      - no duplicate history rows for same source_event_id + surface
    check:
      - idempotency behavior
      - history uniqueness

  scenario_5_rights_result_missing_or_expired:
    operator_expectation:
      - display may be restricted or unavailable
      - no local assumption of allowed state
    check:
      - latest verification_result
      - expires_at

runtime_checks:
- source_event_id traceability
- result_code interpretation
- expiry/freshness status
- projection freshness
- no forbidden local Persona truth fallback

operator_do_not_do:
- do not patch local tables manually to imitate Persona truth
- do not bypass reflection path with ad hoc writes
- do not treat stale projection as fresh
- do not treat missing rights verification as implicit allowed

runbook_judgement:
- runtime operations are about safe reflection and safe absence handling
- runtime operations must preserve Persona boundary rules
