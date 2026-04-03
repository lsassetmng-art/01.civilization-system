# ============================================================
# NATION LINKAGE VISIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-to-nation-linkage
component: nation-linkage-visibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY CLASSES
# ============================================================

visibility_classes:
- player_visible
- summary_visible
- admin_visible
- audit_only
- hidden_system_effect


# ============================================================
# 2. RULES
# ============================================================

rules:
- aggregate nation coverage improvements may be summary_visible
- district rollup internals may be hidden_system_effect
- outbox traces may be audit_only
- major anchor openings may be player_visible


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation linkage should expose
meaningful aggregate change
without flooding users
with every internal recalculation.
