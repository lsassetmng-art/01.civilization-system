# ============================================================
# NATION ASSET PENDING FIELD MODEL
# ============================================================

status: canonical
layer: model
scope: placeholder-resolution
component: nation-asset-pending-field

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PENDING FIELDS
# ============================================================

pending_fields:
- flag_asset_ref_pending
- emblem_asset_ref_pending
- created_at_pending
- updated_at_pending


# ============================================================
# 2. RULE
# ============================================================

Pending nation asset fields
must not remain as raw legacy placeholder values.

They must be rewritten as explicit pending fields
or explicit draft metadata.


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation asset placeholders
must be isolated from structural legality rules.
