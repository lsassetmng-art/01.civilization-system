# ============================================================
# CIVILIZATION NATION BUILDER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for nation builder
inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Nation builder must not mutate active nation truth directly
without staged validation and publication.

This is mandatory.


# ============================================================
# 2. FAIL-CLOSED POLICY
# ============================================================

The system must fail closed if:
- draft structure is incomplete
- rule bundle is incomplete
- contradiction is unresolved
- approval chain is unresolved
- activation requirements are unresolved


# ============================================================
# 3. FINAL POLICY RULE
# ============================================================

Nation builder policy must be:
- staged
- auditable
- fail-closed
- activation-safe
