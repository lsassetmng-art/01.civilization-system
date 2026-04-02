# ============================================================
# CIVILIZATION NATION BUILDER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official nation builder architecture
inside CivilizationOS.

This architecture covers:
- nation draft creation
- nation structure definition
- nation rule bundle setup
- validation
- approval
- publication
- activation

This builder must not bypass canonical nation truth directly.
It must build through staged nation draft flow.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Nation builder must distinguish:

- nation draft
- validation state
- approval state
- published nation definition
- active nation state

Core principle:

a nation is drafted before it is validated  
a nation is validated before it is approved  
a nation is approved before it is published  
a nation is published before it becomes active


# ============================================================
# 2. BUILDER SCOPE
# ============================================================

Nation builder must support at minimum:
- nation identity
- nation type
- continent / region placement
- capital definition
- territory scope
- population baseline
- currency baseline
- property regime baseline
- tax baseline
- banking/securities baseline
- company-law baseline
- education/military/welfare baseline


# ============================================================
# 3. NATION TYPE PRINCIPLE
# ============================================================

Nation builder must support nation-type-based initialization,
but final behavior must remain DB-controlled and editable.

Examples:
- democratic
- social
- military
- imperial
- federation
- hybrid

Nation type is a baseline profile,
not the full final rule set by itself.


# ============================================================
# 4. RULE BUNDLE PRINCIPLE
# ============================================================

Nation builder should construct a rule bundle,
not only a display profile.

Minimum rule bundle areas:
- property regime
- tax regime
- company regime
- banking regime
- securities regime
- welfare regime
- education regime
- military regime
- border / external regime


# ============================================================
# 5. VALIDATION PRINCIPLE
# ============================================================

Nation builder must validate:
- required identity fields
- territory consistency
- capital consistency
- population baseline consistency
- currency consistency
- rule bundle completeness
- contradiction across major regimes

Fail closed on unresolved required nation structure.


# ============================================================
# 6. APPROVAL PRINCIPLE
# ============================================================

Nation builder must support approval before publication.

Approval may be required for:
- new nation creation
- major rule-bundle revision
- territory changes
- currency changes
- major regime changes

Approval path must be explicit.


# ============================================================
# 7. ACTIVATION PRINCIPLE
# ============================================================

A nation may only become active if:
- draft is complete
- validation passed
- approval passed where required
- publication completed
- activation constraints are satisfied

Active nation truth must not be mutated
through unvalidated builder changes.


# ============================================================
# 8. FINAL ARCHITECTURAL RULE
# ============================================================

Nation builder in CivilizationOS must be:
- staged
- draft-aware
- validation-aware
- approval-aware
- publication-aware
- activation-aware
- fail-closed
