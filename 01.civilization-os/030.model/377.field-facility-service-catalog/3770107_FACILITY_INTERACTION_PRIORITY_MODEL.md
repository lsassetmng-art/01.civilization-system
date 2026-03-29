# ============================================================
# FACILITY INTERACTION PRIORITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-service-catalog
component: facility-interaction-priority

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRIORITY ORDER
# ============================================================

interaction_priority_order:
- restriction_check
- inactive_check
- tenant_container_check
- direct_use_check
- overview_first_check
- management_shortcut_check


# ============================================================
# 2. PRIORITY RULES
# ============================================================

priority_rules:
- blocked facilities resolve before use routing
- inactive facilities resolve before normal use routing
- multi-tenant buildings resolve to tenant list before any service guess
- direct-use facilities resolve before overview-first fallback
- management shortcuts never replace ordinary tap use


# ============================================================
# 3. FINAL RULE
# ============================================================

Interaction priority must remain stable
so users can predict tap behavior.
