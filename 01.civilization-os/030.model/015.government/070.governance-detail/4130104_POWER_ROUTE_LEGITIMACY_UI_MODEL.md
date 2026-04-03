# ============================================================
# POWER ROUTE LEGITIMACY UI MODEL
# ============================================================

status: canonical
layer: model
scope: power-route-ui-and-political-binding
component: power-route-legitimacy-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LEGITIMACY THEMES
# ============================================================

legitimacy_themes:
- electoral_legitimacy
- dynastic_legitimacy
- military_legitimacy
- party_legitimacy
- technocratic_legitimacy
- religious_legitimacy
- coercive_legitimacy
- revolutionary_legitimacy


# ============================================================
# 2. UI RULES
# ============================================================

ui_rules:
- dominant legitimacy source must be visible for each primary route
- weak legitimacy after accession must appear as instability risk
- extra-legal legitimacy may be shown separately from lawful legitimacy
- legitimacy display must update after crisis or succession transition


# ============================================================
# 3. FINAL RULE
# ============================================================

Legitimacy UI
must explain not only how power is gained,
but how stable that power is.
