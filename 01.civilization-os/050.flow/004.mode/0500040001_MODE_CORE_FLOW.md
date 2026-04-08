# ============================================================
# MODE CORE FLOW
# ============================================================

status: canonical
layer: flow
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the core process flow for mode handling.

scope:
Covers mode request acceptance,
scope binding, active candidate resolution,
conflict detection, transition application,
effective mode delivery, and rejection handling.

flow_intent:
Mode affects downstream interpretation.
The core mode flow exists so the system always reaches
a single explicit effective result,
or explicitly blocks when that is not possible.

canonical_rules:
- Mode flow must start from canonical scope and mode type.
- Active mode candidates must be lifecycle-filtered before delivery.
- Conflict must be resolved before delivery.
- Historical mode access must require explicit history path.
- Implicit undeclared mode is prohibited.

required_behavior:
- Bind scope and mode type.
- Resolve candidates.
- Detect conflict.
- Select effective mode.
- Deliver current or historical mode.
- Emit blocked result when unresolved.

flow_state_model:
mode_flow_state:
- requested
- scope_bound
- candidates_resolved
- conflict_checked
- effective_mode_selected
- delivered
- blocked
- historical_delivered

current_mode_sequence:
1. receive mode request
2. bind canonical scope
3. resolve active mode candidates
4. filter by lifecycle
5. detect conflicts
6. select effective mode
7. apply visibility filter
8. deliver current effective mode

historical_mode_sequence:
1. receive historical mode request
2. bind canonical scope
3. resolve historical candidates
4. validate historical path
5. deliver historical mode output

rejection_sequence:
1. detect missing scope or mode type
2. detect unresolved conflict or invalid candidate
3. assign explicit failure code
4. block downstream delivery

decision_matrix:
- single valid active candidate -> deliver
- multiple conflicting primaries -> block until resolution
- suspended only + no fallback -> blocked
- historical request + valid historical chain -> historical_delivered
- current request + historical-only candidate -> blocked

failure_codes:
- MODE_FLOW_SCOPE_MISSING
- MODE_FLOW_TYPE_MISSING
- MODE_FLOW_CONFLICT_UNRESOLVED
- MODE_FLOW_HISTORY_PATH_INVALID
- MODE_FLOW_IMPLICIT_UNDECLARED

example_scenarios:
- A normal operation mode request resolves to a single active candidate and is delivered.
- Two same-scope primary modes collide and the flow blocks delivery.
