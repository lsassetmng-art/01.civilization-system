# ============================================================
# USER CREATABLE COMPANY RULE MATRIX
# ============================================================

status: canonical
layer: model
scope: company-builder
component: user-creatable-company-rule-matrix

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official rule matrix
for user-creatable company types.

It records:
- required site types
- optional site types
- minimum capital posture
- scope posture
- approval posture
- listing posture
- prohibited domains


# ============================================================
# 2. OFFICIAL MATRIX
# ============================================================

## architectural_design_company
required_sites:
- headquarters
optional_sites:
- office
- studio
minimum_capital_posture:
- low
approval_if_needed:
- false
base_listing_eligible:
- true
prohibited:
- fund_product
- doctrine_operation
notes:
- design-oriented company

## interior_company
required_sites:
- headquarters
optional_sites:
- office
- studio
minimum_capital_posture:
- low
approval_if_needed:
- false
base_listing_eligible:
- true
prohibited:
- fund_product
- doctrine_operation
notes:
- housing interior/exterior design

## fashion_company
required_sites:
- headquarters
optional_sites:
- studio
- retail_store
minimum_capital_posture:
- low_to_medium
approval_if_needed:
- false
base_listing_eligible:
- true
prohibited:
- fund_product
- temple_operation
notes:
- costume and accessory production

## retail_company
required_sites:
- headquarters
- retail_store
optional_sites:
- branch
minimum_capital_posture:
- medium
approval_if_needed:
- false
base_listing_eligible:
- true
prohibited:
- direct_financial_offering
- direct_construction_execution
notes:
- public-facing sourced portfolio retail

## investment_company
required_sites:
- headquarters
- office
optional_sites:
- branch
minimum_capital_posture:
- high
approval_if_needed:
- true
base_listing_eligible:
- true
prohibited:
- temple_operation
- doctrine_text
notes:
- finance-sensitive user-creatable company

## education_company
required_sites:
- headquarters
- school_site
optional_sites:
- branch
- office
minimum_capital_posture:
- medium
approval_if_needed:
- true
base_listing_eligible:
- true
prohibited:
- fund_product
- doctrine_style_religious_operation
notes:
- public-impact education operator

## game_company
required_sites:
- headquarters
optional_sites:
- office
- studio
- branch
minimum_capital_posture:
- medium
approval_if_needed:
- false
base_listing_eligible:
- true
prohibited:
- fund_product
- temple_operation
notes:
- game production company

## software_company
required_sites:
- headquarters
optional_sites:
- office
- branch
minimum_capital_posture:
- low_to_medium
approval_if_needed:
- false
base_listing_eligible:
- true
prohibited:
- temple_operation
- fund_product
notes:
- software and app production company

## culture_arts_company
required_sites:
- headquarters
- studio_or_gallery_site
optional_sites:
- branch
- gallery_site
- studio
minimum_capital_posture:
- low_to_medium
approval_if_needed:
- false
base_listing_eligible:
- true
prohibited:
- financial_offering
- temple_operation
notes:
- creative production and public culture company

## religious_corporation
required_sites:
- headquarters
- temple_site
optional_sites:
- branch
- service_site
minimum_capital_posture:
- medium
approval_if_needed:
- true
base_listing_eligible:
- false
prohibited:
- listing_application
- fund_product
- speculative_high_risk_operation
notes:
- special religious entity


# ============================================================
# 3. COMMON RULES
# ============================================================

Common rules for all user-creatable companies:

- headquarters is always required
- company type must be explicit
- nation binding is always required
- product scope bundle is always required
- management baseline is always required
- evaluation seed is always required

Additional common rules:
- branch support is allowed
- direct construction execution is prohibited
- direct equity execution is prohibited
- real-estate transfer mediation must go through system real estate company
- equity execution must go through securities_firm


# ============================================================
# 4. FINAL RULE
# ============================================================

This matrix is the official rule summary
for user-creatable company types.

Validation, templates, and draft initialization
should align with this matrix.
