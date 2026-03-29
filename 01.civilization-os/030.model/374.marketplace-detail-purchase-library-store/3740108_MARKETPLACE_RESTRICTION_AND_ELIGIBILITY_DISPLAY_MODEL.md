# ============================================================
# MARKETPLACE RESTRICTION AND ELIGIBILITY DISPLAY MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: marketplace-restriction-and-eligibility-display

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED DISPLAY ELEMENTS
# ============================================================

required_display_elements:
- available_in_current_nation
- restricted_in_current_nation
- religion_or_doctrine_restriction
- account_or_role_requirement
- event_only_use_notice
- institution_use_only_notice
- revocable_access_notice
- expiration_notice


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- restrictions must be visible on listing detail before purchase
- blocking restrictions must be visible on purchase confirmation
- usage restrictions must be visible in library detail
- nation-context restrictions must change with entry context
- seller context must not hide nation restrictions


# ============================================================
# 3. FINAL RULE
# ============================================================

Restriction visibility is part of the product truth,
not an optional warning.
