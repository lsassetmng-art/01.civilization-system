# ============================================================
# STREAMING LIVE EVENT TICKETING POLICY MODEL
# ============================================================

status: canonical
layer: model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define ticketing policy options
for streaming live events.

ticketing_policies:
- free_entry
- paid_general_entry
- reserved_seat_entry
- vip_tiered_entry
- invite_only_entry
- student_discount_entry
- public_support_subsidized_entry
- controlled_capacity_entry

ticketing_fields:
- ticket_sales_open_at
- ticket_sales_close_at
- seat_type_profile
- pricing_tier_profile
- invitation_quota
- student_quota
- vip_quota
- resale_restriction_flag
- entry_limit_rule

final_rule:
Ticketing must be policy-driven and event-type aware.
