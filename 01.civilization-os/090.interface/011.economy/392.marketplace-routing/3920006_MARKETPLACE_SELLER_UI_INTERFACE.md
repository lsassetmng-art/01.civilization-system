# ============================================================
# MARKETPLACE SELLER UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: marketplace-seller-ui-interface
component: marketplace-seller-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the seller-side UI interface
for Civilization Marketplace.

This document must align with:

- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_LISTING_AND_SELLER_OPERATION_ARCHITECTURE
- MARKETPLACE_PHYSICAL_GOODS_AND_FULFILLMENT_ARCHITECTURE
- MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE
- MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_ARCHITECTURE

This document defines:

- seller entry screens
- listing creation and edit screens
- listing lifecycle screens
- sale-window and event-linked sale screens
- order and fulfillment visibility
- settlement and payout visibility
- seller warning and hold visibility


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical seller screens:

- marketplace_seller_home_screen
- marketplace_listing_list_screen
- marketplace_listing_detail_screen
- marketplace_listing_create_screen
- marketplace_listing_edit_screen
- marketplace_listing_publish_review_screen
- marketplace_listing_lifecycle_screen
- marketplace_inventory_and_quantity_screen
- marketplace_event_linked_sale_screen
- marketplace_physical_goods_review_screen
- marketplace_order_management_screen
- marketplace_fulfillment_management_screen
- marketplace_receipt_and_settlement_screen
- marketplace_seller_warning_screen


# ============================================================
# 3. SELLER HOME SCREEN
# ============================================================

screen_id: marketplace_seller_home_screen
route_key: marketplace/seller/home

visible_sections:
- seller_identity_summary_section
- seller_context_summary_section
- listing_status_summary_section
- order_status_summary_section
- payout_status_summary_section
- warning_summary_section

actions:
- open_listing_list
- open_create_listing
- open_order_management
- open_receipt_and_settlement
- open_warning_detail


# ============================================================
# 4. LISTING LIST SCREEN
# ============================================================

screen_id: marketplace_listing_list_screen
route_key: marketplace/seller/listings

visible_sections:
- listing_filter_section
- listing_state_summary_section
- listing_list_section

supported_filters:
- seller_context
- listing_state
- event_scope
- product_class
- review_state
- fulfillment_type

actions:
- open_listing_detail
- open_create_listing
- apply_filter
- clear_filter


# ============================================================
# 5. LISTING DETAIL SCREEN
# ============================================================

screen_id: marketplace_listing_detail_screen
route_key: marketplace/seller/listing-detail

visible_sections:
- listing_identity_section
- listing_context_section
- listing_state_section
- sale_window_section
- quantity_section
- review_posture_section
- fulfillment_posture_section
- warning_section

actions:
- open_edit_listing
- open_publish_review
- suspend_listing
- cancel_listing
- relist_listing where allowed
- open_inventory_and_quantity
- open_event_linked_sale
- open_physical_goods_review where applicable


# ============================================================
# 6. LISTING CREATE SCREEN
# ============================================================

screen_id: marketplace_listing_create_screen
route_key: marketplace/seller/create

visible_sections:
- seller_context_section
- product_class_section
- listing_identity_input_section
- category_input_section
- visibility_input_section
- digital_or_physical_input_section
- sale_window_input_section
- quantity_input_section
- event_linkage_input_section where applicable

actions:
- save_as_draft
- continue_to_edit
- cancel_create


# ============================================================
# 7. LISTING EDIT SCREEN
# ============================================================

screen_id: marketplace_listing_edit_screen
route_key: marketplace/seller/edit

visible_sections:
- editable_listing_identity_section
- editable_description_section
- editable_asset_section
- editable_category_section
- editable_sale_window_section
- editable_quantity_section
- editable_event_linkage_section
- editable_fulfillment_section
- validation_warning_section

actions:
- save_listing
- cancel_edit
- submit_for_review where required
- open_publish_review


# ============================================================
# 8. LISTING PUBLISH REVIEW SCREEN
# ============================================================

screen_id: marketplace_listing_publish_review_screen
route_key: marketplace/seller/publish-review

visible_sections:
- listing_publish_summary_section
- blocking_error_section
- warning_section
- review_requirement_section
- publication_action_section

actions:
- publish_listing where allowed
- submit_for_review where required
- back_to_edit
- cancel_publication


# ============================================================
# 9. LISTING LIFECYCLE SCREEN
# ============================================================

screen_id: marketplace_listing_lifecycle_screen
route_key: marketplace/seller/lifecycle

visible_sections:
- lifecycle_state_section
- lifecycle_history_section
- review_transition_section
- publish_transition_section
- suspend_transition_section
- cancel_transition_section
- relist_transition_section where allowed

actions:
- publish_listing
- suspend_listing
- cancel_listing
- relist_listing
- back_to_listing_detail


# ============================================================
# 10. INVENTORY AND QUANTITY SCREEN
# ============================================================

screen_id: marketplace_inventory_and_quantity_screen
route_key: marketplace/seller/inventory

visible_sections:
- inventory_summary_section
- total_stock_section
- reservable_stock_section
- sold_out_posture_section
- quantity_limit_section
- per_user_limit_section

actions:
- update_inventory
- update_quantity_limit
- update_per_user_limit
- save_inventory
- back_to_listing_detail


# ============================================================
# 11. EVENT-LINKED SALE SCREEN
# ============================================================

screen_id: marketplace_event_linked_sale_screen
route_key: marketplace/seller/event-linked-sale

visible_sections:
- event_link_summary_section
- event_type_section
- event_scope_section
- sale_window_section
- participant_eligibility_section
- event_quantity_section
- digital_venue_note_section

actions:
- save_event_linkage
- remove_event_linkage
- back_to_listing_detail

note:
- live_event_limited_sale is a subtype of event-linked limited sale
- event venue may be digital-only while goods may be digital or physical


# ============================================================
# 12. PHYSICAL GOODS REVIEW SCREEN
# ============================================================

screen_id: marketplace_physical_goods_review_screen
route_key: marketplace/seller/physical-review

visible_sections:
- physical_goods_summary_section
- logistics_readiness_section
- inventory_plausibility_section
- review_requirement_section
- restricted_item_warning_section
- review_result_section

actions:
- submit_for_physical_review
- back_to_listing_detail


# ============================================================
# 13. ORDER MANAGEMENT SCREEN
# ============================================================

screen_id: marketplace_order_management_screen
route_key: marketplace/seller/orders

visible_sections:
- order_filter_section
- order_list_section
- payment_state_section
- fulfillment_state_section
- receipt_state_section
- dispute_state_section

actions:
- open_order_detail where supported
- open_fulfillment_management
- open_receipt_and_settlement
- apply_order_filter
- clear_order_filter


# ============================================================
# 14. FULFILLMENT MANAGEMENT SCREEN
# ============================================================

screen_id: marketplace_fulfillment_management_screen
route_key: marketplace/seller/fulfillment

visible_sections:
- fulfillment_filter_section
- preparing_state_section
- shipped_state_section
- delivered_state_section
- pickup_state_section where supported
- fulfillment_failure_section where supported

actions:
- mark_preparing where supported
- mark_shipped where supported
- update_fulfillment_posture
- back_to_order_management


# ============================================================
# 15. RECEIPT AND SETTLEMENT SCREEN
# ============================================================

screen_id: marketplace_receipt_and_settlement_screen
route_key: marketplace/seller/settlement

visible_sections:
- payout_pending_section
- payout_hold_section
- payout_released_section
- dispute_hold_section
- refund_section
- received_confirmed_section
- receipt_pending_section

actions:
- open_order_management
- open_warning_detail
- back_to_seller_home


# ============================================================
# 16. SELLER WARNING SCREEN
# ============================================================

screen_id: marketplace_seller_warning_screen
route_key: marketplace/seller/warnings

visible_sections:
- review_hold_warning_section
- listing_block_warning_section
- payout_hold_warning_section
- self_trade_warning_section
- duplicate_identity_warning_section
- compliance_warning_section

actions:
- open_related_listing
- open_related_order
- back_to_seller_home


# ============================================================
# 17. FINAL RULE
# ============================================================

Marketplace seller UI must remain:

- seller-operation-centered
- listing-lifecycle-aware
- event-compatible
- physical-goods-compatible
- settlement-visible
- warning-visible
- non-duplicative with Marketplace buyer UI
