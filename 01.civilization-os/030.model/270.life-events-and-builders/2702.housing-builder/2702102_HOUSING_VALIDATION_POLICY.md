# ============================================================
# HOUSING VALIDATION POLICY
# ============================================================

status: canonical
layer: model
scope: housing-builder
component: housing-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED VALIDATION
# ============================================================

Must validate:
- buildable zone compatibility
- housing type compatibility
- land right validity
- construction path validity
- cost sufficiency
- household fit if required
- move-in readiness


# ============================================================
# 2. FINAL RULE
# ============================================================

Housing may not proceed if zone or construction path is invalid.
