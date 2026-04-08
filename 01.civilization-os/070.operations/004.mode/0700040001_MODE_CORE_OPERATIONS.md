# ============================================================
# MODE CORE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core operational handling for mode records.

scope:
Covers preparation, review, activation,
switch operations, suspension, deprecation,
conflict containment, rollback-safe correction,
and historical audit for modes.

design_intent:
Mode changes can have wide operational impact.
Core mode operations must therefore ensure that
effective mode changes are deliberate, reviewed,
traceable, and reversible only through explicit paths.

canonical_rules:
- Mode activation must follow review or approved control path.
- Primary conflict must be contained before continued live use.
- Suspension and deprecation must preserve historical trace.
- Rollback must not destroy prior active-state evidence.
- Emergency or restricted mode changes must preserve authority trace.

required_behavior:
- Support mode preparation and review.
- Support controlled activation and switching.
- Support suspension and deprecation.
- Support conflict containment.
- Support rollback-safe correction.
- Support historical and audit inspection.

state_model:
mode_operational_state:
- prepared
- under_review
- active
- suspended
- deprecated
- archived
- contained
- audit_review

review_decision:
- approved
- rejected
- returned_for_revision
- escalated

containment_mode:
- block_switch
- freeze_current
- revert_to_previous
- audit_only

validation_rules:
- mode_code is required.
- mode_type is required.
- active switch requires target scope and authority basis where needed.
- contained mode must preserve incident reason and timestamp.
- rollback target must reference valid prior state.
- archived or deprecated mode must not be treated as active current mode.

transition_rules:
- prepared -> under_review
- under_review -> active
- under_review -> returned_for_revision
- active -> suspended
- suspended -> active
- active -> deprecated
- deprecated -> archived
- active -> contained
- contained -> audit_review

operation_sequence:
1. prepare or select candidate mode
2. validate scope and conflict state
3. review or authorized control decision
4. activate, suspend, deprecate, or contain
5. record trace and prior-state linkage
6. expose updated operational status

failure_codes:
- MODE_OP_CODE_MISSING
- MODE_OP_TYPE_MISSING
- MODE_OP_SCOPE_MISSING
- MODE_OP_AUTHORITY_REQUIRED
- MODE_OP_CONFLICT_CONTAINMENT_REQUIRED
- MODE_OP_ROLLBACK_TARGET_INVALID
- MODE_OP_ARCHIVE_REACTIVATION_DENIED

example_scenarios:
- A degraded operation mode is activated after review and traced with scope and authority.
- Two conflicting primaries are detected and the mode is moved into containment for audit review.
