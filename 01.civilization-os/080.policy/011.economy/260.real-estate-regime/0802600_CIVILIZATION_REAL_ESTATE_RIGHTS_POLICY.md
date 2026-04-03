# ============================================================
# CIVILIZATION REAL ESTATE RIGHTS POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official policy rules for CivilizationOS
real-estate rights, registry, and transaction domains.


# ============================================================
# 1. POLICY PRINCIPLE
# ============================================================

CivilizationOS real-estate policy must preserve:

- common property object truth
- nation-specific rights regime diversity
- DB-governed legal behavior
- registry-backed finality
- fail-closed safety

No real-estate right may become active
through ambiguous or incomplete policy resolution.


# ============================================================
# 2. DB-GOVERNED REGIME POLICY
# ============================================================

Nation-specific property regimes must be DB-governed.

The following legal behaviors
must be controlled by policy records:

- right_type allowance
- holder eligibility
- transferability
- inheritance
- expropriation
- override power
- foreign holder allowance
- company holder allowance
- strategic restriction

Hardcoded regime assumptions are prohibited
as the source of final legal behavior.


# ============================================================
# 3. RIGHT ACTIVATION POLICY
# ============================================================

A property right may become active only if:

- property object exists
- right_type exists
- holder exists
- active nation regime exists
- right_type is allowed or allowed_with_approval
- holder is eligible or eligible_with_approval
- required approvals are satisfied
- registry requirements are satisfied where required
- no blocking dispute/freeze exists

Otherwise, activation must be rejected.


# ============================================================
# 4. REGISTRY FINALITY POLICY
# ============================================================

Registry is the formal finality layer
for registrable real-estate rights.

No registrable right should be treated as final
until registry acceptance is completed.

If registry acceptance is incomplete,
closing or right finality must not be completed.


# ============================================================
# 5. FAIL-CLOSED POLICY
# ============================================================

The system must fail closed if any required policy element is:
- missing
- invalid
- contradictory
- unresolved

Permissive fallback is prohibited.


# ============================================================
# 6. FINAL POLICY RULE
# ============================================================

CivilizationOS real-estate policy must be:

- DB-governed
- registry-aware
- transfer-aware
- company-linkage-aware
- dispute-aware
- fail-closed

Core summary:

- nation-specific rights behavior is controlled by policy records
- registry-backed finality is mandatory
- ambiguous policy never grants real-estate finality
