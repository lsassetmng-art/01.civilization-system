# ============================================================
# MARKETPLACE ADMIN UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: marketplace-admin-ui
component: marketplace-admin-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for Marketplace review and operations admin
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- marketplace_admin_dashboard_screen
- listing_review_queue_screen
- listing_review_detail_screen
- seller_supervision_screen
- order_supervision_screen
- dispute_and_refund_screen
- payout_hold_release_screen
- marketplace_admin_history_screen


# ============================================================
# 3. LISTING REVIEW QUEUE SCREEN
# ============================================================

screen_id: listing_review_queue_screen
route_key: admin/marketplace/listing-review

visible_sections:
- review_queue_summary_section
- listing_review_list_section
- filter_section

supported_filters:
- review_state
- product_class
- event_scope
- physical_goods_flag
- seller_context

actions:
- open_listing_review_detail
- approve_listing
- reject_listing
- set_review_hold


# ============================================================
# 4. LISTING REVIEW DETAIL SCREEN
# ============================================================

screen_id: listing_review_detail_screen
route_key: admin/marketplace/listing-review-detail

visible_sections:
- listing_identity_section
- seller_context_section
- review_requirement_section
- event_linked_sale_section
- physical_goods_review_section
- admin_decision_section

actions:
- approve_listing
- reject_listing
- request_more_review
- suspend_listing
- add_admin_note


# ============================================================
# 5. ORDER SUPERVISION SCREEN
# ============================================================

screen_id: order_supervision_screen
route_key: admin/marketplace/orders

visible_sections:
- order_filter_section
- order_state_list_section
- payment_state_section
- receipt_state_section
- settlement_state_section
- self_trade_signal_section

actions:
- open_dispute_and_refund
- hold_order
- release_order_hold
- open_payout_hold_release


# ============================================================
# 6. FINAL RULE
# ============================================================

Marketplace admin UI must remain:

- listing-review-aware
- seller-supervisory
- order-supervisory
- dispute-aware
- payout-aware
- traceable
