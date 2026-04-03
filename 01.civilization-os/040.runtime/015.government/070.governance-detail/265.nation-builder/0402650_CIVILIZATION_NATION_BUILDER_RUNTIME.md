# ============================================================
# CIVILIZATION NATION BUILDER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for nation builder
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The nation builder runtime must evaluate:
- draft completeness
- identity validity
- territory validity
- population/currency validity
- rule bundle completeness
- contradiction across regimes
- approval readiness
- publication readiness
- activation readiness


# ============================================================
# 2. VALIDATION RULE
# ============================================================

Runtime must fail closed if:
- required identity is missing
- required territory baseline is missing
- currency baseline is missing
- rule bundle is incomplete
- contradiction across major regimes is unresolved


# ============================================================
# 3. ACTIVATION RULE
# ============================================================

A draft may only become active nation truth if:
- validation is passed
- approval is passed where required
- publication is complete
- activation check is passed


# ============================================================
# 4. FINAL RUNTIME RULE
# ============================================================

Nation builder runtime must be:
- draft-aware
- validation-aware
- contradiction-aware
- approval-aware
- activation-aware
- fail-closed
