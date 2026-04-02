# ============================================================
# COMPANY TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: company-builder
component: company-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official architecture
for Company Template.

Company Template is a reusable preset used by Company Builder
to initialize company draft structure.

It is not the company itself.

It provides a structured baseline for:
- company type
- site plan posture
- product scope posture
- management baseline
- asset operation baseline
- evaluation seed tendency
- listing readiness baseline


# ============================================================
# 2. CORE RULE
# ============================================================

Every user-creatable company type should have
a corresponding company template.

Official template families:
- architectural_design_company_template
- interior_company_template
- fashion_company_template
- retail_company_template
- investment_company_template
- education_company_template
- game_company_template
- software_company_template
- culture_arts_company_template
- religious_corporation_template


# ============================================================
# 3. TEMPLATE ROLE
# ============================================================

Company Template provides:
- default company identity posture
- default required site posture
- default product scope posture
- default management posture
- default asset operation posture
- default evaluation seed tendency
- default listing readiness posture

Template is editable after application
unless specific future lock rules are introduced.


# ============================================================
# 4. TEMPLATE STRUCTURE
# ============================================================

A company template should contain:

- template_code
- template_name
- company_type
- template_summary
- company_category
- legal_structure_profile
- required_site_profile
- recommended_site_profile
- default_product_scope_profile
- default_management_profile
- default_asset_operation_profile
- default_evaluation_seed_profile
- default_listing_readiness_profile
- template_notes


# ============================================================
# 5. COMPANY TYPE TEMPLATE NOTES
# ============================================================

## architectural_design_company_template
Focus:
- design services
- building exterior design
- headquarters required
- office or studio recommended

## interior_company_template
Focus:
- interior and housing design
- headquarters required
- office or studio recommended

## fashion_company_template
Focus:
- costume and accessory production
- headquarters required
- studio recommended

## retail_company_template
Focus:
- sourced portfolio retail
- headquarters required
- retail_store required

## investment_company_template
Focus:
- fund and capital products
- headquarters required
- office required
- higher minimum capital

## education_company_template
Focus:
- text, curriculum, education programs
- headquarters required
- school_site required

## game_company_template
Focus:
- connected / standalone games
- headquarters required
- office or studio recommended

## software_company_template
Focus:
- BusinessOS apps and standalone packages
- headquarters required
- office recommended

## culture_arts_company_template
Focus:
- creative works and public events
- headquarters required
- studio or gallery_site required

## religious_corporation_template
Focus:
- doctrine, ritual, donation, religious events
- headquarters required
- temple_site required
- base non-listable


# ============================================================
# 6. TEMPLATE APPLICATION RULE
# ============================================================

When a template is applied:
- company_type is initialized
- required site expectations are initialized
- product scope baseline is initialized
- management baseline is initialized
- asset-operation baseline is initialized
- evaluation seed tendency is initialized
- listing readiness baseline is initialized

Template application does not bypass validation.


# ============================================================
# 7. FINAL RULE
# ============================================================

Company Template is the official preset architecture
for user-creatable company initialization.

All user-creatable company families
should be supported through a template.
