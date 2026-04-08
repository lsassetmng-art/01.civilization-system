# ============================================================
# INTEGRATION CORE SECURITY
# ============================================================

status: canonical
layer: security
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core security rules for integration contracts.

scope:
Covers export authorization,
import authorization,
mutation-class enforcement,
proposal-only isolation,
bounded sync control,
canonical-write protection,
and trace requirements.

design_intent:
Integration security must stop unsafe boundary crossing
without blocking legitimate projected exchange.
It distinguishes read-only projection,
proposal-only intake,
bounded synchronization,
and canonical-write actions.

required_behavior:
- Enforce contract-class-specific authorization.
- Enforce projection-scope restrictions for export.
- Enforce mutation-class restrictions for import.
- Isolate proposal-only paths from canonical mutation.
- Require explicit authority for bounded sync and canonical-write actions.
- Require trace for sensitive export, import, block, and audit actions.

actor_matrix:
- public_external_consumer -> public projection only
- internal_consumer -> internal read/export as authorized
- restricted_integration_operator -> restricted projection and bounded sync as authorized
- high_trust_operator -> canonical-write actions where explicitly authorized
- auditor -> historical contracts and audit traces where authorized

decision_table:
- public_external_consumer + external_public projection -> allow if projection-safe
- public_external_consumer + restricted raw export -> block
- internal_consumer + internal read -> allow where authorized
- restricted_integration_operator + bounded_sync -> allow only with authority
- any actor + canonical_write without sufficient authority -> block
- any actor + proposal_only import -> accept only as isolated proposal
- auditor + historical trace -> allow only via audit/history authorization

validation_rules:
- contract_ref is required.
- requested integration action is required.
- mutation_class is required for mutating or proposal-bearing operations.
- authority-sensitive actions require explicit authority basis.
- historical/replay access must remain distinct from live/current access.
- trace must be emitted for sensitive allow, reject, and mutation decisions.

failure_codes:
- INTEGRATION_SEC_CONTRACT_REF_MISSING
- INTEGRATION_SEC_ACTION_MISSING
- INTEGRATION_SEC_MUTATION_CLASS_MISSING
- INTEGRATION_SEC_EXPORT_DENIED
- INTEGRATION_SEC_IMPORT_DENIED
- INTEGRATION_SEC_BOUNDED_SYNC_DENIED
- INTEGRATION_SEC_CANONICAL_WRITE_DENIED
- INTEGRATION_SEC_PROPOSAL_ISOLATION_REQUIRED
- INTEGRATION_SEC_HISTORY_ACCESS_DENIED
- INTEGRATION_SEC_TRACE_REQUIRED

example_scenarios:
- A proposal-only external payload is accepted into an isolated proposal lane.
- A canonical write request without explicit authority is blocked and traced.
- A public projection is allowed only after restricted fields are removed or masked.
