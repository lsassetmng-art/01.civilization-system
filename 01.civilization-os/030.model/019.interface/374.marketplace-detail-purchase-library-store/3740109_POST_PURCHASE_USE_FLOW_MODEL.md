# ============================================================
# POST PURCHASE USE FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: post-purchase-use-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. USE FLOW TYPES
# ============================================================

use_flow_types:
- immediate_use_flow
- library_first_flow
- event_binding_flow
- ui_theme_apply_flow
- institution_assign_flow
- deferred_use_flow


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

use_flow_fields:
- product_id
- category_id
- use_flow_type
- compatible_use_contexts
- apply_now_supported
- event_binding_supported
- institution_assignment_supported
- preview_after_purchase_supported
- failure_fallback_rule


# ============================================================
# 3. FINAL RULE
# ============================================================

Owning an item
and using an item
must remain distinct
but closely connected.
