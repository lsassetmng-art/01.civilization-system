# ============================================================
# COMMON CALCULATION OVERVIEW
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the concrete implementation contract for
shared calculation services used across CivilizationOS.

# 2. STORAGE

No direct source of truth table is required for the calculation logic itself.
Persistent records may reference calculation inputs and outputs from domain tables.

# 3. CONTRACTS

Input contract:
- calculation_type
- subject_type
- subject_id
- input_payload
- occurred_at
- actor_context

Output contract:
- result_payload
- result_version
- trace_id
- applied_rules
- warning_codes
- error_codes

# 4. EXECUTION

Execution order:
1. validate input
2. resolve calculation profile
3. load required references
4. execute deterministic calculation
5. emit result payload
6. optionally persist audit trace

# 5. AUTHORIZATION

Read of calculation profiles is system-internal.
Execution authority depends on caller domain.
Unauthorized or ambiguous caller context must fail closed.

# 6. AUDIT

Audit fields:
- trace_id
- calculation_type
- caller_domain
- subject_type
- subject_id
- result_version
- executed_at

# 7. FAILURE HANDLING

Fail closed when:
- input schema mismatch
- missing profile
- unsupported calculation type
- nondeterministic dependency detected
