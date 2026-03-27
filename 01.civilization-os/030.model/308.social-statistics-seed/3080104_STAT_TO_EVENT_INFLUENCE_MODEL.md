# ============================================================
# STAT TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: social-statistics-seed
component: stat-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- fertility_rate_tendency influences childbirth frequency events
- marriage_rate_tendency influences marriage formation events
- divorce_rate_tendency influences household break events
- unemployment_rate_tendency influences job-loss and recovery events
- unstable_employment_rate_tendency influences precarious adulthood routes
- poverty_rate_tendency influences household fragility and housing instability
- disability_support_pressure_tendency influences care burden events
- eldercare_pressure_tendency influences late-life household strain events
- inequality_visibility_tendency influences class-gap event intensity
- social_mobility_tendency influences branch recovery and advancement outcomes


# ============================================================
# 2. FINAL RULE
# ============================================================

Statistics must be usable as event modifiers
for later runtime and simulation layers.
