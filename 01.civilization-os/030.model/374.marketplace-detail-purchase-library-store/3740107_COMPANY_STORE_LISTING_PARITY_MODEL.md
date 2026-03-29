# ============================================================
# COMPANY STORE LISTING PARITY MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: company-store-listing-parity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PARITY RULE
# ============================================================

parity_rule:
- a listing opened from company direct store
  must use the same canonical listing detail UI
  as the same listing opened from marketplace list
- company store context may add brand header
  and seller emphasis
- company store context must not redefine
  core purchase, access, or library logic


# ============================================================
# 2. ALLOWED DIFFERENCES
# ============================================================

allowed_differences:
- store_banner
- seller_brand_theme
- company_campaign_notice
- company_bundle_shortcuts
- seller_follow_surface


# ============================================================
# 3. FORBIDDEN DIFFERENCES
# ============================================================

forbidden_differences:
- separate_purchase_schema_for_same_listing
- separate_library_schema_for_same_listing
- hidden_fee_change_without_confirmation
- hidden_restriction_change_without_notice


# ============================================================
# 4. FINAL RULE
# ============================================================

Store context changes presentation emphasis,
not commerce truth.
