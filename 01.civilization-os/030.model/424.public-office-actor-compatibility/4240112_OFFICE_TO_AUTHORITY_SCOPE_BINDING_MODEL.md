# ============================================================
# OFFICE TO AUTHORITY SCOPE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: office-to-authority-scope-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- councillor -> district_scope
- legislator -> nation_scope
- mayor -> city_scope
- prefectural_governor -> prefectural_scope
- regional_governor -> regional_scope
- minister -> strategic_ministry_scope
- prime_minister -> nation_scope
- head_of_state -> nation_scope
- unit_commander -> district_scope
- base_commander -> city_scope
- regional_commander -> regional_scope
- supreme_commander -> nation_scope
- magistrate -> district_scope
- supreme_judge -> nation_scope


# ============================================================
# 2. FINAL RULE
# ============================================================

Office authority
must be bound to explicit scope,
not assumed informally.
