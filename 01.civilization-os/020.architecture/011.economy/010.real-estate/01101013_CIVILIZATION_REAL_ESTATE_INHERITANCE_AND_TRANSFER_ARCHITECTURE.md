# ============================================================
# CIVILIZATION REAL ESTATE INHERITANCE AND TRANSFER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official inheritance and transfer architecture
for real estate inside CivilizationOS.

This architecture covers:
- sale transfer
- gift transfer
- internal reassignment
- inheritance succession
- partition
- waiver
- dispute and freeze

All inheritance and transfer behavior must be nation-governed
and DB-controlled.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Transfer and inheritance must not be collapsed into one flow.

Distinct classes:
- sale transfer
- gift transfer
- lease transfer where allowed
- inheritance succession
- partition succession
- waiver / renunciation
- state reassignment where allowed

The system structure is common.
Legality and conditions are nation-specific.


# ============================================================
# 2. DB CONTROL RULE
# ============================================================

The following must be DB-controlled per nation:
- whether inheritance is allowed for a right_type
- who may inherit
- who may receive gifted property
- whether partition is allowed
- whether approval is required
- whether transfer to company is allowed
- whether foreign recipients are allowed
- whether rights are inheritable, transferable, both, or neither

Fail closed on missing inheritance/transfer rule.


# ============================================================
# 3. FINAL ARCHITECTURAL RULE
# ============================================================

Real-estate inheritance and transfer in CivilizationOS must be:
- common in structure
- nation-specific in legality
- DB-controlled in evaluation
- registry-linked in finality
