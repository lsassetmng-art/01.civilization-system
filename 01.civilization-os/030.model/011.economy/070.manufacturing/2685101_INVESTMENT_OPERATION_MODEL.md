# ============================================================
# INVESTMENT OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: investment-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- product_structure_defined
- solicitation_posture_defined
- compliance_gate_checked
- offering_opened
- capital_received
- portfolio_allocated
- performance_tracked


# ============================================================
# 2. KEY OBJECTS
# ============================================================

- fund_product
- investment_offering
- capital_solicitation_record
- allocation_record
- performance_record


# ============================================================
# 3. FINAL RULE
# ============================================================

Investment operation must remain compliance-heavy
and intermediary-aware.
