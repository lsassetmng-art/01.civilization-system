# ============================================================
# CIVILIZATION FACILITY PLACEMENT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for facility and infrastructure placement
inside CivilizationOS nation builder.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- facility placement legality
- facility design compatibility
- base stat availability
- design bonus legality
- effective stat computation
- infrastructure connection validity
- placement validation readiness


# ============================================================
# 2. EFFECTIVE STAT RULE
# ============================================================

Effective facility stat must be computed as:

effective_value = base_value + design_bonus_value

However:
- only allowed stat axes may receive design bonus
- total design bonus must respect configured ratio limit
- single-axis bonus must respect configured ratio limit

Recommended default:
total design bonus <= 20% of base total

This ratio must be DB-controlled.


# ============================================================
# 3. FAIL-CLOSED RULE
# ============================================================

The runtime must fail closed if:
- facility type is unresolved
- base stat profile is unresolved
- design compatibility is unresolved
- bonus ratio rule is unresolved
- infrastructure connection rule is unresolved where required


# ============================================================
# 4. FINAL RUNTIME RULE
# ============================================================

Facility placement runtime must be:
- stat-aware
- design-aware
- connection-aware
- DB-controlled
- fail-closed
