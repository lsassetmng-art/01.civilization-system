# ============================================================
# COST TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: household-economy-and-cost-burden-seed
component: cost-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- rent_burden_tendency influences delayed household independence
- ownership_housing_burden_tendency influences delayed housing purchase
- education_cost_burden_tendency influences school continuation pressure and branch limitation
- medical_cost_burden_tendency influences illness shock severity
- childcare_cost_burden_tendency influences childbirth delay and family stress
- eldercare_cost_burden_tendency influences multi-generational household strain
- disability_support_cost_burden_tendency influences household fragility after injury or disability
- household_savings_difficulty_tendency influences marriage and family formation delay
- debt_dependency_tendency influences bankruptcy and household break events
- family_formation_cost_pressure_tendency influences marriage and childbirth timing
- urban_cost_gap_tendency influences district-level life divergence


# ============================================================
# 2. FINAL RULE
# ============================================================

Cost burden indicators must be usable
as modifiers for family, work, and risk events.
