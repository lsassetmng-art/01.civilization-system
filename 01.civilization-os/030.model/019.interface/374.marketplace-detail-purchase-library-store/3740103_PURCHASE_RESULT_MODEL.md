# ============================================================
# PURCHASE RESULT MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: purchase-result

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESULT BLOCKS
# ============================================================

result_blocks:
- success_banner
- access_granted_summary
- library_write_notice
- usage_next_step
- seller_followup_link
- refund_profile_notice
- failure_explanation
- retry_or_return_actions


# ============================================================
# 2. SUCCESS ACTIONS
# ============================================================

success_actions:
- open_library
- use_now
- open_related_items
- open_seller_store
- return_to_previous_list


# ============================================================
# 3. FAILURE ACTIONS
# ============================================================

failure_actions:
- return_to_detail
- retry_purchase
- open_restriction_notice
- open_support_path


# ============================================================
# 4. FINAL RULE
# ============================================================

Purchase result must clearly show
whether access was granted,
where it was stored,
and what the next usable action is.
