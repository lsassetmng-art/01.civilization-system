# ============================================================
# MARKETPLACE CONTEXT RESOLUTION MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: marketplace-context-resolution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines how marketplace entry context
resolves active scope and filtering.


# ============================================================
# 2. RESOLUTION INPUTS
# ============================================================

resolution_inputs:
- entry_point_type
- source_nation_id
- source_seller_id
- source_tenant_id
- user_permission_context
- active_event_context
- active_facility_context


# ============================================================
# 3. RESOLUTION OUTPUTS
# ============================================================

resolution_outputs:
- active_scope
- nation_filter
- seller_filter
- tenant_banner
- default_sort
- ranking_profile
- visibility_policy
- tax_profile
- restriction_profile


# ============================================================
# 4. CONTEXT RULES
# ============================================================

context_rules:
- civilization_global entry has no forced seller filter
- nation entry applies selected nation restrictions by default
- company entry applies selected seller filter by default
- tenant entry inherits service context plus building banner
- search entry preserves search scope until explicitly reset


# ============================================================
# 5. FINAL RULE
# ============================================================

Context resolution must happen
before listing exposure,
not after purchase intent.
