# ============================================================
# CIVILIZATION COMPANY BUILDER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official company builder architecture
inside CivilizationOS.

This architecture covers:
- company draft creation
- company type selection
- company-type-specific setup
- validation
- approval
- publication
- activation

This builder must not mutate active company truth directly.
It must operate through staged company draft flow.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Company builder must distinguish:

- company draft
- company type template
- validation state
- approval state
- published company definition
- active company state

Core principle:

a company is drafted before it is validated
a company is validated before it is approved
a company is approved before it is published
a company is published before it becomes active


# ============================================================
# 2. COMPANY BUILDER SCOPE
# ============================================================

Company builder must support at minimum:
- company identity
- company type
- legal category
- nation/location relation
- premises linkage
- company-type-specific product/service profile
- company-type-specific upload/configuration surfaces
- contract / portfolio / publication setup where relevant


# ============================================================
# 3. USER-CREATABLE COMPANY TYPES
# ============================================================

The initial user-creatable company types should include:

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

These are the primary initial user-creatable templates.


# ============================================================
# 4. SYSTEM-LIMITED COMPANY TYPES
# ============================================================

The following should initially be system-limited:

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

These may exist in the world,
but are not initially user-creatable.


# ============================================================
# 5. COMPANY TYPE TEMPLATE PRINCIPLE
# ============================================================

Company builder should be template-driven.

A company type template should define:
- whether user creation is allowed
- legal category
- supported sellable product categories
- supported upload surfaces
- supported contract surfaces
- supported portfolio surfaces
- supported marketplace/direct-sale behavior
- supported special actions

Template is the baseline profile,
not the final operational record.


# ============================================================
# 6. TYPE-SPECIFIC FUNCTION PRINCIPLE
# ============================================================

Each company type may require specialized setup.

Examples:
- game_company -> game upload / release setup
- software_company -> app upload / integration setup
- retail_company -> supplier contract / portfolio setup
- culture_arts_company -> PDF/JPEG content intake / exhibition setup
- investment_company -> fund / portfolio / solicitation setup
- education_company -> text/program/age-band setup
- religious_corporation -> doctrine / recruitment / donation / facility setup


# ============================================================
# 7. SCOUT / OFFICIAL ADOPTION PRINCIPLE
# ============================================================

For culture/arts companies,
the system must support:

- content discovery
- scout record
- official contact
- proposal / negotiation
- adoption / recommendation / story integration

This path must remain explicit.

Discovery is not the same as adoption.


# ============================================================
# 8. FINAL ARCHITECTURAL RULE
# ============================================================

Company builder in CivilizationOS must be:
- staged
- template-driven
- type-aware
- UI-specialized by company type
- validation-aware
- approval-aware
- activation-safe
