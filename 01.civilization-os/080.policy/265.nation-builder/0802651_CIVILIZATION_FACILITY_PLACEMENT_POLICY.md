# ============================================================
# CIVILIZATION FACILITY PLACEMENT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for facility and infrastructure placement
inside CivilizationOS nation builder.


# ============================================================
# 1. CORE POLICY
# ============================================================

Facility function, facility design, and placement instance
must remain distinct.

This is mandatory.


# ============================================================
# 2. BASE STAT POLICY
# ============================================================

Facility and infrastructure base stats must be DB-controlled.

Hardcoded final stat values are prohibited
as the canonical source of truth.


# ============================================================
# 3. DESIGN BONUS POLICY
# ============================================================

Design bonus must:
- only affect allowed stat axes
- remain supplemental to facility function
- respect total ratio cap
- respect single-axis ratio cap

Recommended default:
max_total_bonus_ratio = 0.20


# ============================================================
# 4. FAIL-CLOSED POLICY
# ============================================================

The system must fail closed if:
- placement legality is unresolved
- base stat profile is unresolved
- design compatibility is unresolved
- bonus ratio rule is unresolved
- required infrastructure connection is unresolved


# ============================================================
# 5. FINAL POLICY RULE
# ============================================================

Facility placement policy must be:
- DB-controlled
- design-aware
- stat-aware
- fail-closed
