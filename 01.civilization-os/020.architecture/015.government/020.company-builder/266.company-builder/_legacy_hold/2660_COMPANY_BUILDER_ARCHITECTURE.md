# ============================================================
# COMPANY BUILDER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: company-builder
component: company-builder

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official architecture
for Company Builder.

Company Builder is the staged creation and establishment system
for companies operating inside Civilization nations.

It is not only a basic registration form.

It must support:

- company type selection
- nation regime compatibility
- initial company identity definition
- product scope initialization
- site planning
- property / tenant relation planning
- public profile initialization
- evaluation initialization
- listing readiness initialization


# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

Company Builder must follow these principles.

- company creation is nation-bound
- company core and company site must be separated
- site existence is first-class
- company product scope must be explicit
- evaluation starts at establishment
- listing readiness is tracked from early stage
- asset operation is allowed but intermediary-based
- fail-closed when critical compatibility is unresolved


# ============================================================
# 3. BUILDER ROLE
# ============================================================

Company Builder creates a company candidate
and turns it into an established company.

It must produce at least:

- company_core
- initial company_site set
- product scope baseline
- public profile baseline
- management baseline
- evaluation seed
- listing readiness baseline

Company Builder must also determine whether
a company may proceed to establishment
under current nation rules.


# ============================================================
# 4. STAGE MODEL
# ============================================================

Company Builder is a staged builder.

Official stages:

- company_draft
- validation
- approval_if_needed
- establish
- operate
- evaluation
- listing_readiness
- listing_application

## 4-1. company_draft
Draft state for incomplete company definition.

## 4-2. validation
Compatibility and structural checks.

## 4-3. approval_if_needed
Optional review stage for company types or flows
that require additional control.

## 4-4. establish
Company becomes officially established.

## 4-5. operate
Company may sell, manage sites, hold assets, and operate.

## 4-6. evaluation
Evaluation starts immediately at establishment.

## 4-7. listing_readiness
Company accumulates readiness data for possible listing.

## 4-8. listing_application
Company may apply if eligible under nation market rules.


# ============================================================
# 5. COMPANY TYPE MODEL
# ============================================================

Company Builder supports company type selection.

## 5-1. user-creatable company types
- architectural_design_company
- interior_company
- fashion_company
- retail_company
- investment_company
- education_company
- game_company
- software_company
- culture_arts_company
- religious_corporation

## 5-2. system-limited company types
- bank
- securities_firm
- construction_company
- real_estate_company
- transportation_logistics_company
- manufacturing_company
- public_interest_corporation
- insurance_company
- medical_company
- tourism_hospitality_company

Rule:
- user flow may create only user-creatable company types
- system-limited company types require system-admin flow


# ============================================================
# 6. MAIN SECTIONS
# ============================================================

Company Builder should be organized into these sections.

- company type selection
- basic identity
- nation binding
- legal / organizational profile
- product scope
- site plan
- property / tenant plan
- symbolic profile
- public profile
- management baseline
- asset operation profile
- evaluation seed
- listing readiness
- validation
- establish


# ============================================================
# 7. NATION BINDING
# ============================================================

Company Builder is never nation-neutral.

It must bind to a nation context and inherit:

- company_regime
- property_regime
- tax_regime
- zoning rules
- listing system style
- market tier eligibility logic
- securities regime if applicable

Company Builder must not invent these regimes.
Nation-side design is authoritative.


# ============================================================
# 8. PRODUCT SCOPE INITIALIZATION
# ============================================================

Product scope is initialized from company type
and then constrained by nation-side policy if needed.

Examples:

retail_company:
- sourced_portfolio_product

software_company:
- businessos_app_full_extension
- businessos_app_db_linked
- standalone_app_package

culture_arts_company:
- novel_content
- manga_content
- anime_content
- drama_content
- film_content
- digital_art_content
- exhibition_event
- screening_event

religious_corporation:
- doctrine_text
- ritual_material
- recruitment_program
- donation_program
- religious_event_access


# ============================================================
# 9. SITE ARCHITECTURE
# ============================================================

Company site is first-class.

A company is not an abstract shell.
It has actual site presence inside a nation.

Company Builder must support:

- headquarters
- branch
- retail_store
- office
- studio
- school_site
- temple_site
- gallery_site
- workshop
- service_site

Branch support is mandatory.

A company may have:

- headquarters only
- headquarters plus one branch
- headquarters plus multiple branches
- mixed site families


# ============================================================
# 10. PROPERTY / TENANT RELATION
# ============================================================

Company Builder must support site occupancy planning.

Company site relation is structured as:

property
-> tenant_unit
-> company_site

occupancy_mode examples:
- owned
- leased
- tenant
- shared_space
- allocated_use

Property execution principles:
- companies may own real estate
- companies may lease real estate
- companies may resell real estate
- but mediation and transfer must go through system real estate company


# ============================================================
# 11. OPENING FLOW
# ============================================================

Site opening flow is as follows.

- site plan is prepared
- zone compatibility is checked
- property or tenant relation is bound
- opening is established
- nation receives post-opening notification

Rule:
- pre-approval is not required by default
- compatibility pass is required
- post-opening nation notification is required


# ============================================================
# 12. ASSET OPERATION CONNECTION
# ============================================================

Company Builder must support asset operation posture.

A company may perform:

- equity investment
- real estate investment

However:
- equity execution must go through securities_firm
- real estate transfer mediation must go through system real estate company

Builder creates:
- asset operation profile
- securities linkage posture
- real estate operation posture

Builder must not grant direct exchange access.


# ============================================================
# 13. PUBLIC PROFILE CONNECTION
# ============================================================

Company Builder should initialize:

- icon_asset_ref
- emblem_asset_ref
- brand_colors
- public_tagline
- public_description
- featured_categories
- public_visibility_state

This supports:
- company list
- public profile page
- category discovery
- search result presentation


# ============================================================
# 14. MANAGEMENT BASELINE
# ============================================================

Company Builder should initialize management posture.

Recommended dimensions:
- finance_tracking_enabled
- site_management_enabled
- product_management_enabled
- analytics_enabled
- evaluation_tracking_enabled
- listing_readiness_tracking_enabled
- asset_operation_tracking_enabled


# ============================================================
# 15. EVALUATION CONNECTION
# ============================================================

Evaluation begins immediately upon establishment.

Builder must initialize:
- initial evaluation
- current evaluation
- evaluation profile

Typical evaluation dimensions:
- legitimacy_score
- activity_score
- product_quality_score
- compliance_score
- visibility_score
- growth_score
- reputation_score
- site_operation_score


# ============================================================
# 16. LISTING READINESS CONNECTION
# ============================================================

Builder must initialize listing readiness posture.

This includes:
- base_listing_eligibility
- blocked_listing_reason
- target_market_candidates
- readiness_snapshot
- missing_requirements

Base non-listable examples:
- religious_corporation
- public_interest_corporation
- system company


# ============================================================
# 17. VALIDATION CONNECTION
# ============================================================

Company Builder validation must cover:

- company type validity
- nation binding existence
- product scope resolution
- site compatibility
- property / tenant consistency
- asset operation intermediary rule
- listing readiness initialization
- system-limited flow restriction

Critical unresolved issues must block establishment.


# ============================================================
# 18. OFFICIAL OUTPUTS
# ============================================================

Company Builder must output at least:

- company_core
- company_site set
- product scope baseline
- public profile baseline
- management baseline
- asset operation profile
- evaluation seed
- listing readiness baseline


# ============================================================
# 19. FINAL RULE
# ============================================================

Company Builder is the official path
from company concept to established company.

A company must be nation-bound,
site-aware,
product-explicit,
evaluation-ready,
and intermediary-safe before establishment.
