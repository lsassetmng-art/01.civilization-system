# ============================================================
# 0400400002 ENTITY DETAIL RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: detail
scope: 0400400002.entity.detail.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the runtime handling rule for 0400400002 ENTITY DETAIL RUNTIME
within the 040.detail domain.

## runtime_scope
This runtime covers current interpretation,
historical interpretation,
replay visibility,
projection output,
and masking behavior
for the named detail subject.

## current_state
Current detail represents the runtime-visible form
used by standard consumers.
It must remain distinguishable from reconstructed
or replay-derived states.

## historical_state
Historical detail represents preserved prior truth
or auditable prior representation.
Historical detail must never be silently collapsed
into current state.

## replay_state
Replay state is a controlled reconstruction path
used for inspection,
audit,
or replay tools.
Replay is visibility logic,
not truth-authoring logic.

## authority_boundary
Runtime may interpret and deliver detail,
but it must not seize truth authority from the source layer.

## projection_rules
Projected detail may be optimized for readers,
but projection must remain reversible in meaning
and must not disguise loss of authority.

## masking_rules
Masking must be explicit,
policy-driven,
and consistent with actor permissions.
Masked runtime output must not mutate the source truth.

## validation_rules
- subject identity must be resolvable
- source state must be known
- replay mode must be declared
- projection mode must be declared
- masking mode must be declared when applicable

## failure_modes
- unknown source state
- authority mismatch
- replay request without replay basis
- masking rule missing
- projection schema mismatch

## decision_matrix
- if state is current, deliver current runtime view
- if state is historical, preserve historical labeling
- if replay is requested, route through replay-visible path
- if masking is required, mask after authority check
- if validation fails, fail closed

## observability
Runtime must emit enough signals
to distinguish current,
historical,
replay,
projection,
and masking paths.

## review_checklist
- current/historical/replay separation is explicit
- projection is separated from truth origin
- masking is explicit
- failure handling is fail-closed
- observability is sufficient
