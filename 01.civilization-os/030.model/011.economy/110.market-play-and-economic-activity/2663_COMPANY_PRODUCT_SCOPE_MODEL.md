# ============================================================
# COMPANY PRODUCT SCOPE MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-product-scope

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for company product scope.

company_product_scope defines what a company
is structurally allowed to sell, distribute,
publish, operate, or handle as rights-bearing output
inside Civilization.

It is initialized from company type
and then constrained by nation-side policy where needed.


# ============================================================
# 2. CORE RULE
# ============================================================

Product scope must be explicit.

A company must not operate with an undefined product scope.

Product scope must distinguish between:

- owned product creation
- sourced or third-party sale
- distribution capability
- event operation capability
- rights handling capability


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A company_product_scope should contain:

- company_id
- company_type
- scope_profile_code
- allowed_sellable_product_types
- disallowed_product_types
- creatable_product_types
- distribution_capabilities
- publishing_capabilities
- event_operation_capabilities
- rights_handling_capabilities
- scope_notes
- updated_at


# ============================================================
# 4. SCOPE DIMENSIONS
# ============================================================

allowed_sellable_product_types:
- product types the company may sell

disallowed_product_types:
- product types explicitly disallowed

creatable_product_types:
- product types the company may create as originator

distribution_capabilities:
- how the company may distribute owned or third-party products

publishing_capabilities:
- whether the company may publish into the marketplace

event_operation_capabilities:
- whether the company may run event-type offerings

rights_handling_capabilities:
- whether the company may hold, license, or distribute rights


# ============================================================
# 5. DISTRIBUTION AND RIGHTS MODEL
# ============================================================

The product scope model should support
structural separation between:

- rightsholder
- seller
- distribution_right

A company may:
- create and sell its own products
- distribute third-party products if permitted
- act as retailer, resale seller, or distribution agent if permitted

Recommended distribution_mode support:
- self_sale
- retail_resale
- retail_agency_sale
- exclusive_distribution
- multi_retail_distribution


# ============================================================
# 6. COMPANY TYPE INITIALIZATION
# ============================================================

The following are official baseline scope mappings.

## architectural_design_company
allowed_sellable_product_types:
- building_exterior_design

creatable_product_types:
- building_exterior_design

## interior_company
allowed_sellable_product_types:
- housing_interior_design
- housing_exterior_design

creatable_product_types:
- housing_interior_design
- housing_exterior_design

## fashion_company
allowed_sellable_product_types:
- persona_costume
- accessory

creatable_product_types:
- persona_costume
- accessory

## retail_company
allowed_sellable_product_types:
- sourced_portfolio_product

creatable_product_types:
- none by default

distribution_capabilities:
- retail_resale
- retail_agency_sale
- multi_retail_distribution

## investment_company
allowed_sellable_product_types:
- fund_product
- investment_offering
- capital_solicitation_product

creatable_product_types:
- fund_product
- investment_offering
- capital_solicitation_product

## education_company
allowed_sellable_product_types:
- text_material
- curriculum_package
- education_program
- child_education_offering

creatable_product_types:
- text_material
- curriculum_package
- education_program
- child_education_offering

event_operation_capabilities:
- education_program_operation

## game_company
allowed_sellable_product_types:
- game_connected
- game_standalone

creatable_product_types:
- game_connected
- game_standalone

## software_company
allowed_sellable_product_types:
- businessos_app_full_extension
- businessos_app_db_linked
- standalone_app_package

creatable_product_types:
- businessos_app_full_extension
- businessos_app_db_linked
- standalone_app_package

## culture_arts_company
allowed_sellable_product_types:
- novel_content
- manga_content
- anime_content
- drama_content
- film_content
- digital_art_content
- exhibition_event
- screening_event

creatable_product_types:
- novel_content
- manga_content
- anime_content
- drama_content
- film_content
- digital_art_content

event_operation_capabilities:
- exhibition_event
- screening_event

## religious_corporation
allowed_sellable_product_types:
- doctrine_text
- ritual_material
- recruitment_program
- donation_program
- religious_event_access

creatable_product_types:
- doctrine_text
- ritual_material
- recruitment_program
- donation_program
- religious_event_access

event_operation_capabilities:
- religious_event_operation


# ============================================================
# 7. CULTURE / ARTS SPECIAL RULE
# ============================================================

culture_arts_company may support:

- user-created novels
- user-created manga
- user-created anime
- user-created drama
- user-created film
- user-created digital art
- exhibition operation
- screening operation

It may also become the subject of:

- scout
- contact_offer
- official_adoption
- story_integration

Where relevant, a linked canon-level relation may exist.


# ============================================================
# 8. RELIGIOUS CORPORATION SPECIAL RULE
# ============================================================

religious_corporation is a special entity.

It should support:
- doctrine distribution
- ritual material handling
- recruitment support
- donation support
- religious facility-linked access

It is not modeled as a normal profit-maximizing company by default.


# ============================================================
# 9. NATION CONSTRAINT RULE
# ============================================================

Nation-side rules may narrow product scope.

Examples:
- a nation may restrict event operation
- a nation may restrict distribution mode
- a nation may restrict certain company types from certain product scopes

Company Builder must initialize from company type,
but Nation-side policy remains authoritative.


# ============================================================
# 10. VALIDATION CONNECTION
# ============================================================

Validation should include:
- company_type exists
- scope mapping resolved
- no unresolved allowed product list
- disallowed product types do not overlap incorrectly
- event capability is explicit where needed
- rights handling capability is explicit where needed


# ============================================================
# 11. FINAL RULE
# ============================================================

company_product_scope defines what the company
may actually bring into the economy.

It must be explicit,
type-derived,
and nation-compatible.
