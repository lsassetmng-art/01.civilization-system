# ============================================================
# CIVILIZATION RETAIL COMMERCE MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for retail commerce
inside CivilizationOS digital retail.


# ============================================================
# 1. SELLER / RIGHTSHOLDER / DISTRIBUTION MODELS
# ============================================================

## RETAIL_SELLER_PROFILE
core_fields:
- retail_seller_profile_id
- seller_type
- seller_ref
- seller_status
- storefront_name
- storefront_summary
- moderation_status
- created_at
- updated_at

seller_type examples:
- civilization_company
- other_lawful_seller

## PRODUCT_RIGHTSHOLDER_LINK
core_fields:
- product_rightsholder_link_id
- retail_digital_product_id
- rightsholder_type
- rightsholder_ref
- rightsholder_role
- revenue_share_ratio
- link_status
- created_at
- updated_at

rightsholder_role examples:
- primary_rightsholder
- co_rightsholder
- licensor
- package_rightsholder

## PRODUCT_DISTRIBUTION_RIGHT
core_fields:
- product_distribution_right_id
- retail_digital_product_id
- seller_profile_ref
- distribution_mode
- exclusivity_status
- right_status
- effective_from
- effective_to
- created_at
- updated_at

distribution_mode examples:
- self_sale
- retail_resale
- retail_agency_sale
- exclusive_distribution
- multi_retail_distribution

exclusivity_status examples:
- non_exclusive
- exclusive
- exclusive_limited


# ============================================================
# 2. LISTING MODELS
# ============================================================

## RETAIL_PRODUCT_LISTING
core_fields:
- retail_product_listing_id
- retail_digital_product_id
- seller_profile_ref
- distribution_right_ref
- listing_status
- publication_status
- storefront_title
- storefront_summary
- category_display_summary
- active_price_rule_ref
- created_at
- updated_at

listing_status examples:
- draft
- submitted
- approved
- published
- hidden
- suspended
- archived


# ============================================================
# 3. PRICE / PROMOTION MODELS
# ============================================================

## PRODUCT_PRICE_RULE
core_fields:
- product_price_rule_id
- retail_product_listing_id
- price_currency_code
- base_price
- price_status
- effective_from
- effective_to
- created_at
- updated_at

## SALE_CAMPAIGN
core_fields:
- sale_campaign_id
- campaign_type
- campaign_status
- discount_mode
- discount_value
- effective_from
- effective_to
- created_at
- updated_at

campaign_type examples:
- listing_sale
- seller_sale
- category_sale
- launch_sale
- limited_time_sale

discount_mode examples:
- percent_off
- fixed_off
- override_price

## COUPON_RULE
core_fields:
- coupon_rule_id
- coupon_code
- discount_mode
- discount_value
- usage_limit_summary
- coupon_status
- effective_from
- effective_to
- created_at
- updated_at

## PRODUCT_BUNDLE
core_fields:
- product_bundle_id
- bundle_status
- bundle_name
- bundle_price_rule_ref
- created_at
- updated_at

## PRODUCT_BUNDLE_ITEM
core_fields:
- product_bundle_item_id
- product_bundle_id
- retail_digital_product_id
- item_status
- created_at
- updated_at


# ============================================================
# 4. PURCHASE / ENTITLEMENT MODELS
# ============================================================

## RETAIL_PURCHASE_RECORD
core_fields:
- retail_purchase_record_id
- buyer_type
- buyer_ref
- retail_product_listing_id
- product_bundle_ref
- final_price_currency_code
- final_price_amount
- purchase_status
- purchased_at
- created_at
- updated_at

purchase_status examples:
- initiated
- paid
- completed
- cancelled
- refunded
- revoked
- reversed

## RETAIL_PURCHASE_ITEM
core_fields:
- retail_purchase_item_id
- retail_purchase_record_id
- retail_digital_product_id
- item_final_price_amount
- item_status
- created_at
- updated_at

## ENTITLEMENT_GRANT_RECORD
core_fields:
- entitlement_grant_record_id
- retail_purchase_record_id
- product_entitlement_ref
- grant_status
- granted_at
- revoked_at
- created_at
- updated_at


# ============================================================
# 5. REFUND / REVOKE MODELS
# ============================================================

## RETAIL_REFUND_REQUEST
core_fields:
- retail_refund_request_id
- retail_purchase_record_id
- request_reason
- refund_request_status
- requested_at
- created_at
- updated_at

## RETAIL_REFUND_RESULT
core_fields:
- retail_refund_result_id
- retail_refund_request_id
- refund_currency_code
- refund_amount
- refund_status
- processed_at
- created_at
- updated_at

## ENTITLEMENT_REVOKE_RECORD
core_fields:
- entitlement_revoke_record_id
- product_entitlement_ref
- revoke_reason
- revoke_status
- revoked_at
- created_at
- updated_at


# ============================================================
# 6. REVIEW / RATING MODELS
# ============================================================

## PRODUCT_REVIEW
core_fields:
- product_review_id
- retail_digital_product_id
- reviewer_ref
- purchase_ref
- rating_value
- review_text
- moderation_status
- review_status
- created_at
- updated_at

## PRODUCT_REVIEW_RESPONSE
core_fields:
- product_review_response_id
- product_review_id
- responder_ref
- response_text
- response_status
- created_at
- updated_at


# ============================================================
# 7. REVENUE / SETTLEMENT MODELS
# ============================================================

## RETAIL_REVENUE_ALLOCATION
core_fields:
- retail_revenue_allocation_id
- retail_purchase_record_id
- gross_amount
- currency_code
- platform_fee_amount
- seller_share_amount
- rightsholder_share_amount
- co_rightsholder_share_amount
- tax_or_public_levy_amount
- holdback_amount
- allocation_status
- created_at
- updated_at

## RETAIL_REVENUE_PARTY_ALLOCATION
core_fields:
- retail_revenue_party_allocation_id
- retail_revenue_allocation_id
- party_type
- party_ref
- allocation_role
- allocated_amount
- allocation_currency_code
- allocation_status
- created_at
- updated_at

allocation_role examples:
- platform
- seller
- primary_rightsholder
- co_rightsholder
- agency_fee_recipient
- distribution_fee_recipient

## SELLER_SETTLEMENT_RECORD
core_fields:
- seller_settlement_record_id
- seller_profile_ref
- settlement_currency_code
- settlement_amount
- settlement_status
- settlement_period_summary
- settled_at
- created_at
- updated_at


# ============================================================
# 8. MODERATION / ENFORCEMENT MODELS
# ============================================================

## RETAIL_MODERATION_RECORD
core_fields:
- retail_moderation_record_id
- target_type
- target_ref
- moderation_action
- moderation_reason
- moderation_status
- effective_from
- effective_to
- created_at
- updated_at

target_type examples:
- listing
- product
- seller
- distribution_right
- review
- campaign

moderation_action examples:
- hold
- suspend
- hide
- delist
- revoke
- freeze_campaign


# ============================================================
# 9. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for retail commerce inside CivilizationOS.

Core summary:

- rightsholder and seller are explicit
- distribution rights are explicit
- listing is explicit
- purchase and entitlement are explicit
- refund and revoke are explicit
- review and rating are explicit
- revenue allocation supports multi-party distribution
- moderation is explicit
