# ============================================================
# FACTION LOCK AND VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: faction-interest-group-and-lobby-builder
component: faction-lock-and-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LOCK RULE
# ============================================================

lock_rule:
- faction category base is structure-layer locked after nation creation
- interest-group category base is structure-layer locked after nation creation
- legality ceiling for influence channels is structure-layer locked after nation creation
- corruption support ceiling is structure-layer locked after nation creation

editable_scope_examples:
- influence_strength
- transparency_level
- scandal_risk
- enforcement_risk
- hidden_selector_weight
- coalition_stability
- conflict_intensity
- public_resentment_risk
- normalization_level


# ============================================================
# 2. VALIDATION RULES
# ============================================================

validation_rules:
- every dominant faction must define at least one influence channel
- illegal channels must define enforcement_risk
- coercive_threat_channel requires force-capable actor
- doctrine_channel requires doctrine-linked institution
- military_channel requires military-linked institution
- corruption pattern must define target institution
- coalition members must exist as factions or groups
- conflict actors must exist as factions or groups


# ============================================================
# 3. FINAL RULE
# ============================================================

The builder must reject
any hidden-power model
that cannot explain
how pressure actually reaches institutions.
