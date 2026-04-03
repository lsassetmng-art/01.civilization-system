# ============================================================
# COMPANY CORE MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-core

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for company_core.

company_core is the parent identity object
for a company inside Civilization.

It defines what the company is,
which nation it belongs to,
what type it is,
and whether it is structurally eligible
for operations such as listing and asset activity.


# ============================================================
# 2. CORE RULE
# ============================================================

company_core is the canonical parent record.

It must not be merged with:
- company_site
- product scope
- evaluation history
- listing readiness history
- asset holding records

Those are connected objects, not core identity itself.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A company_core should contain:

- company_id
- company_code
- company_type
- company_category
- founder_user_id
- home_nation_id
- home_nation_draft_ref
- establishment_state
- company_name
- company_short_name
- company_summary
- company_mission
- legal_structure_profile
- symbolic_identity_ref
- public_profile_ref
- is_system_limited
- is_user_creatable
- is_listing_eligible_base
- asset_operation_enabled
- equity_investment_enabled
- real_estate_investment_enabled
- created_at
- updated_at


# ============================================================
# 4. IDENTITY FIELDS
# ============================================================

company_id:
- unique parent company identifier

company_code:
- human-readable unique company code

company_name:
- formal public company name

company_short_name:
- shortened display name

company_summary:
- concise structural description

company_mission:
- mission-level directional statement


# ============================================================
# 5. TYPE AND CATEGORY
# ============================================================

company_type is the authoritative structural type.

Examples:
- retail_company
- software_company
- investment_company
- religious_corporation

company_category is a wider display / grouping category.

Examples:
- commerce
- software
- education
- culture
- religion
- finance


# ============================================================
# 6. NATION BINDING
# ============================================================

company_core must bind to nation context.

Fields:
- home_nation_id
- home_nation_draft_ref

At least one valid nation reference path
must exist before establishment.

home_nation_draft_ref is useful for pre-live or builder-linked cases.
home_nation_id is useful for established nation cases.


# ============================================================
# 7. ESTABLISHMENT STATE
# ============================================================

Recommended establishment_state values:
- draft
- validation_pending
- establishable
- established
- blocked
- archived

A company may not become established
while critical compatibility remains unresolved.


# ============================================================
# 8. CREATION ELIGIBILITY FLAGS
# ============================================================

is_system_limited:
- true if the company type requires system flow

is_user_creatable:
- true if ordinary user flow may establish the type

These flags must not contradict company_type policy.


# ============================================================
# 9. LISTING BASE ELIGIBILITY
# ============================================================

is_listing_eligible_base indicates
whether the company type is structurally listable at all.

Examples:
- retail_company -> true
- software_company -> true
- culture_arts_company -> true
- religious_corporation -> false
- public_interest_corporation -> false
- system company -> false

This is only base eligibility.
Actual readiness depends on nation market rules and company condition.


# ============================================================
# 10. ASSET OPERATION FLAGS
# ============================================================

asset_operation_enabled:
- whether the company may operate asset strategy

equity_investment_enabled:
- whether the company may hold and operate equity assets

real_estate_investment_enabled:
- whether the company may hold and operate real estate assets

These flags allow asset strategy.
They do not imply direct execution permission.

Official rule:
- equity execution routes through securities_firm
- real estate mediation routes through system real estate company


# ============================================================
# 11. LEGAL / ORGANIZATIONAL PROFILE
# ============================================================

legal_structure_profile should summarize
the organizational posture of the company.

Examples:
- standard_for_profit_company
- special_religious_entity
- investment_entity
- education_provider_entity

This field may later branch into deeper legal models,
but should exist from the core stage.


# ============================================================
# 12. SYMBOLIC / PUBLIC PROFILE REFS
# ============================================================

symbolic_identity_ref:
- reference to company symbolic identity bundle or profile

public_profile_ref:
- reference to public-facing company profile bundle or profile

These are references because the data should be modular.


# ============================================================
# 13. OFFICIAL TYPE NOTES
# ============================================================

## retail_company
- public-facing sales and portfolio distribution type

## software_company
- app and software package creation type

## investment_company
- investment and capital-operation type

## culture_arts_company
- creative production and event type

## religious_corporation
- doctrine, ritual, donation, and temple operation type
- base non-listable by default


# ============================================================
# 14. FINAL RULE
# ============================================================

company_core defines what the company is.

It must be:
- nation-bound
- type-explicit
- eligibility-explicit
- asset-operation-safe

It must not absorb site, holding, or evaluation detail.
