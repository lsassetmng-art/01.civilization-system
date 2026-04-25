# ============================================================
# VISUAL RUNTIME HOST ADAPTER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the implementation pattern
for host adapters embedding Visual Runtime.


# ============================================================
# 2. HOST ADAPTER ROLE
# ============================================================

A host adapter translates:

host lifecycle
host container reference
host callback registration

into canonical runtime interface usage.

The host adapter must not reimplement
composition semantics.


# ============================================================
# 3. REQUIRED IMPLEMENTATION PARTS
# ============================================================

1. RuntimeBootstrapAdapter
2. RuntimeSessionAdapter
3. ContainerBindingAdapter
4. RuntimeEventBridge
5. DisposalAdapter


# ============================================================
# 4. IMPLEMENTATION RULES
# ============================================================

1. Adapter must be thin.
2. Adapter must be testable.
3. Adapter must be host-specific, runtime semantics must not be host-specific.
4. Adapter must centralize session disposal.


# ============================================================
# 5. ANDROID HOST GUIDANCE
# ============================================================

For Android hosts such as PocketSecretary:

Fragment / View lifecycle owns session creation and disposal
View container binding must be explicit
Runtime events should be bridged into host-safe observers
Background loading must not block initial persona visibility

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: visual

minimum_exact_contract:
- define authoritative operation names
- define request-side required identifiers
- define response-side success and reject families
- define validation gates
- define state transition or resolution boundaries
- define persistence touchpoints
- define retry and dead-letter behavior where applicable

minimum_error_families:
- invalid_request
- authority_blocked
- lifecycle_blocked
- conflict_or_duplicate where applicable
- internal_retryable where applicable
- internal_terminal

minimum_acceptance_targets:
- success path
- reject or blocked path
- audit persistence proof
- retry-safe path where applicable

implementation_ready_note:
This reinforcement does not replace the authored content above.
It marks the minimum exact-ready items that must be made explicit
before implementation is considered complete for this document.
