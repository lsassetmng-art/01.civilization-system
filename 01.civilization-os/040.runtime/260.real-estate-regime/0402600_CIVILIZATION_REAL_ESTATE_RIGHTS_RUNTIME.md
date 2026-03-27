# ============================================================
# CIVILIZATION REAL ESTATE RIGHTS RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official runtime for CivilizationOS
real-estate rights, registry, and transaction evaluation.

This runtime governs:
- property right evaluation
- nation regime resolution
- holder eligibility evaluation
- transfer eligibility evaluation
- registry update eligibility
- closing completion eligibility
- fail-closed handling for missing/invalid policy records


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The real-estate rights runtime is the policy-evaluation layer
for property rights and property transactions.

It must:
- resolve nation-specific property regime
- resolve allowed right types
- resolve holder eligibility
- resolve transferability
- resolve inheritance behavior
- resolve override / expropriation legality
- resolve foreign/company holding legality
- resolve registry acceptance
- resolve transaction completion readiness

It must not:
- assume fixed ideology behavior from regime_type alone
- finalize ambiguous transfers
- accept unresolved registry updates
- bypass fail-closed policy boundaries


# ============================================================
# 2. NATION REGIME RESOLUTION
# ============================================================

Every property action must begin by resolving:

1. nation_code
2. active nation_property_regime
3. relevant policy records for the target property class
4. relevant right_type and holder_type rules

The runtime must not treat regime_type label alone
as sufficient legal truth.

The actual decision must be resolved from DB policy records.


# ============================================================
# 3. RIGHT TYPE EVALUATION
# ============================================================

When evaluating a right request,
the runtime must verify:

- target property object exists
- right_type exists
- right_type is allowed for that nation and property class
- required approval status is satisfied
- right_type is registrable where registration is required

Possible outcomes:
- allowed
- allowed_with_approval
- restricted
- prohibited
- unresolved_policy

unresolved_policy must fail closed.


# ============================================================
# 4. HOLDER ELIGIBILITY EVALUATION
# ============================================================

When evaluating a holder,
the runtime must verify:

- holder exists
- holder_type is recognized
- holder origin is recognized
- holder_type is eligible for the target right_type
- holder_type is eligible for the target property_use_class
- foreign/external restrictions are satisfied
- company restrictions are satisfied

Possible outcomes:
- eligible
- eligible_with_approval
- restricted
- prohibited
- unresolved_policy

unresolved_policy must fail closed.


# ============================================================
# 5. TRANSFER EVALUATION
# ============================================================

When evaluating a transfer,
the runtime must verify:

- current right exists and is active
- offered right_type matches the transaction intent
- seller is legitimate current holder or authorized transfer actor
- buyer is eligible
- transfer mode is allowed
- approval requirements are satisfied
- encumbrances do not block transfer
- dispute/freeze status does not block transfer

Possible transfer outcomes:
- transferable
- transferable_with_approval
- non_transferable
- blocked_by_encumbrance
- blocked_by_dispute
- unresolved_policy

unresolved_policy must fail closed.


# ============================================================
# 6. REGISTRY ACCEPTANCE EVALUATION
# ============================================================

A registry update may proceed only if:

- property object exists
- right exists or right issuance is valid
- holder is valid
- right_type is registrable
- chain continuity is valid
- encumbrance state is coherent
- no unresolved dispute or freeze blocks registration
- nation policy resolution is complete

Possible outcomes:
- registrable
- registrable_with_review
- non_registrable
- blocked
- unresolved_policy

Registry acceptance must fail closed on unresolved policy.


# ============================================================
# 7. CLOSING COMPLETION EVALUATION
# ============================================================

A property closing may complete only if:

- contract is active and valid
- seller and buyer remain eligible
- settlement requirements are satisfied
- approval requirements are satisfied
- registry update is accepted or ready
- no freeze/dispute blocks finalization

Possible outcomes:
- closable
- closable_after_registry
- blocked
- unresolved_policy

A closing must never become final
before registry and settlement alignment is confirmed.


# ============================================================
# 8. FAIL-CLOSED RUNTIME RULE
# ============================================================

The runtime must reject the operation if any required policy record is:
- missing
- contradictory
- invalid
- unresolved for the property class/right/holder combination

No fallback permissive behavior is allowed.


# ============================================================
# 9. FINAL RUNTIME RULE
# ============================================================

CivilizationOS real-estate rights runtime
must be DB-policy-governed and fail-closed.

Core summary:

- nation property regimes are resolved from DB policy records
- right legality, holder eligibility, and transferability are evaluated explicitly
- registry acceptance and closing completion require explicit validation
- unresolved policy must reject the operation
