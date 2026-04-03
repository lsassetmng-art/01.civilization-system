# ============================================================
# STORE INSPECTION SCORE MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: store-inspection-score

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCORE BANDS
# ============================================================

score_bands:
- pass: 90_to_100
- needs_improvement: 80_to_89
- fail: 0_to_79


# ============================================================
# 2. SCORING AXES
# ============================================================

scoring_axes:
- cleanliness
- hygiene
- waste_control
- equipment_condition
- product_storage
- staff_presentation
- record_keeping


# ============================================================
# 3. FINAL RULE
# ============================================================

Inspection pass threshold
must be 90 points or higher.
