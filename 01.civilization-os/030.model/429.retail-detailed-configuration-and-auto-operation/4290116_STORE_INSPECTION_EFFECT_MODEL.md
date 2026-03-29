# ============================================================
# STORE INSPECTION EFFECT MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: store-inspection-effect

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PASS EFFECTS
# ============================================================

pass_effects:
- reputation_up
- trust_up
- oversight_pressure_down
- customer_confidence_up


# ============================================================
# 2. NEEDS IMPROVEMENT EFFECTS
# ============================================================

needs_improvement_effects:
- warning_notice
- followup_pressure_up
- next_inspection_risk_up


# ============================================================
# 3. FAIL EFFECTS
# ============================================================

fail_effects:
- reputation_down
- oversight_pressure_up
- fine_risk
- restricted_sales_risk
- mandatory_reinspection
- temporary_operation_limit_risk


# ============================================================
# 4. FINAL RULE
# ============================================================

Inspection outcome
must produce operational effects.
