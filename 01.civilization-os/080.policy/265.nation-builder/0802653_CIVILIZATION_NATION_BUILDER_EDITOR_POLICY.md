# ============================================================
# CIVILIZATION NATION BUILDER EDITOR POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for zoning editor and market tier editor
inside CivilizationOS nation builder.


# ============================================================
# 1. CORE POLICY
# ============================================================

Zoning editor and market tier editor
must operate on nation draft state only
until publication/activation.

This is mandatory.


# ============================================================
# 2. FAIL-CLOSED POLICY
# ============================================================

The system must fail closed if:
- zoning editor leaves unresolved rule chains
- market tier editor leaves unresolved threshold chains
- contradiction remains unresolved
- publish readiness cannot be established safely


# ============================================================
# 3. FINAL POLICY RULE
# ============================================================

Nation builder editor policy must be:
- draft-aware
- rule-aware
- contradiction-aware
- fail-closed
