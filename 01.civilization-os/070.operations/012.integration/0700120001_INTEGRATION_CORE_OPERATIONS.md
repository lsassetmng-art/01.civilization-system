# ============================================================
# INTEGRATION CORE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core operational handling for integration contracts.

scope:
Covers contract preparation, review,
activation, suspension, deprecation,
proposal-path intake, bounded sync,
rejection containment, and historical audit.

design_intent:
Integration changes can affect many boundaries.
Core integration operations must therefore preserve explicit authority,
clear projection rules, and strong audit trace.

canonical_rules:
- Contract activation must be reviewed or explicitly authorized.
- Proposal-only intake must remain separate from canonical-write path.
- Unauthorized overwrite attempts must be contained and preserved.
- Deprecated contracts must not be silently restored to active.
- Historical contract trace must remain intact.

required_behavior:
- Support contract review and activation.
- Support suspension and deprecation.
- Support proposal-path intake and bounded-sync review.
- Support rejection containment.
- Support historical contract audit.

state_model:
integration_operational_state:
- prepared
- under_review
- active
- suspended
- deprecated
- proposal_only
- contained
- audit_review
- archived

validation_rules:
- contract_ref is required.
- contract_type is required.
- source_scope and target_scope are required.
- authority-sensitive activation requires authority basis.
- contained overwrite incident requires evidence and trace.
- archived contract must not be silently reactivated.

transition_rules:
- prepared -> under_review
- under_review -> active
- active -> suspended
- suspended -> active
- active -> deprecated
- deprecated -> archived
- under_review -> proposal_only
- active -> contained
- contained -> audit_review

operation_sequence:
1. prepare or select contract
2. validate scope and authority basis
3. review projection and mutation implications
4. activate, suspend, deprecate, or route to proposal_only
5. contain unauthorized overwrite or trace failure incidents
6. preserve trace and audit path

failure_codes:
- INTEGRATION_OP_CONTRACT_REF_MISSING
- INTEGRATION_OP_TYPE_MISSING
- INTEGRATION_OP_SCOPE_MISSING
- INTEGRATION_OP_AUTHORITY_REQUIRED
- INTEGRATION_OP_OVERWRITE_INCIDENT
- INTEGRATION_OP_TRACE_MISSING
- INTEGRATION_OP_ARCHIVE_REACTIVATION_DENIED

example_scenarios:
- A new external export contract is activated after review.
- An unauthorized overwrite attempt is contained and moved into audit_review.
