# ============================================================
# PURCHASE CONFIRMATION MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: purchase-confirmation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED CONFIRMATION BLOCKS
# ============================================================

required_confirmation_blocks:
- selected_listing_summary
- seller_summary
- price_breakdown
- tax_breakdown
- license_summary
- access_summary
- restriction_confirmation
- refund_and_revocation_notice
- final_confirm_action
- cancel_action


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

purchase_confirmation_fields:
- listing_id
- buyer_id
- seller_id
- base_price
- platform_fee
- seller_fee
- nation_tax
- final_price
- license_type
- access_mode
- nation_context
- restriction_acknowledged
- refund_profile
- revocation_supported


# ============================================================
# 3. RESULT PATHS
# ============================================================

result_paths:
- purchase_success
- purchase_blocked_by_restriction
- purchase_blocked_by_permission
- purchase_cancelled
- purchase_failed_payment_or_system


# ============================================================
# 4. FINAL RULE
# ============================================================

Purchase confirmation must expose
final cost,
final access,
and final restrictions
before commitment.
