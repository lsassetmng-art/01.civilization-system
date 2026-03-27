# ============================================================
# CIVILIZATION COMPANY TYPE SELLABLE PRODUCT TABLE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official sellable product table
by company type inside CivilizationOS.


# ============================================================
# 1. ARCHITECTURAL DESIGN COMPANY
# ============================================================

company_type_code:
- architectural_design_company

sellable_categories:
- building_exterior_design

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale

upload_or_input_requirements:
- design upload
- preview image
- bonus-capable design metadata

special_rules:
- bonus-capable
- compatible facility types must be explicit


# ============================================================
# 2. INTERIOR COMPANY
# ============================================================

company_type_code:
- interior_company

sellable_categories:
- housing_interior_design
- housing_exterior_design

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale

upload_or_input_requirements:
- design upload
- preview image
- bonus-capable design metadata

special_rules:
- bonus-capable
- housing-target compatibility required


# ============================================================
# 3. FASHION COMPANY
# ============================================================

company_type_code:
- fashion_company

sellable_categories:
- persona_costume
- accessory

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale

upload_or_input_requirements:
- design upload
- preview image
- persona compatibility metadata

special_rules:
- bonus-capable
- persona compatibility required


# ============================================================
# 4. RETAIL COMPANY
# ============================================================

company_type_code:
- retail_company

sellable_categories:
- sourced_portfolio_product

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale

upload_or_input_requirements:
- no mandatory original content upload for sourced resale
- portfolio setup
- supplier/distribution contract setup

special_rules:
- self-created product not required
- valid distribution right required
- product portfolio required


# ============================================================
# 5. INVESTMENT COMPANY
# ============================================================

company_type_code:
- investment_company

sellable_categories:
- fund_product
- investment_offering
- capital_solicitation_product

channels:
- direct_company_sale
- marketplace_sale where lawful
- category_catalog_sale where lawful

upload_or_input_requirements:
- fund setup
- investment scope setup
- solicitation setup

special_rules:
- subject to finance/securities rule compatibility
- not treated as ordinary retail goods


# ============================================================
# 6. EDUCATION COMPANY
# ============================================================

company_type_code:
- education_company

sellable_categories:
- text_material
- curriculum_package
- education_program
- child_education_offering

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale

upload_or_input_requirements:
- text/program import
- age-band setup
- education metadata

special_rules:
- child education target range may include ages 3-18
- age-band compatibility required


# ============================================================
# 7. GAME COMPANY
# ============================================================

company_type_code:
- game_company

sellable_categories:
- game_connected
- game_standalone

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale

upload_or_input_requirements:
- game package upload
- release metadata
- origin/runtime config

special_rules:
- GameOS-connected or standalone distinction required


# ============================================================
# 8. SOFTWARE COMPANY
# ============================================================

company_type_code:
- software_company

sellable_categories:
- businessos_app_full_extension
- businessos_app_db_linked
- standalone_app_package

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale

upload_or_input_requirements:
- app package upload
- runtime/origin config
- BusinessOS linkage metadata where applicable

special_rules:
- BusinessOS-linked vs standalone distinction required


# ============================================================
# 9. CULTURE / ARTS COMPANY
# ============================================================

company_type_code:
- culture_arts_company

sellable_categories:
- novel_content
- manga_content
- anime_content
- drama_content
- film_content
- digital_art_content
- exhibition_event
- screening_event

channels:
- direct_company_sale
- marketplace_sale
- category_catalog_sale
- invitation_or_event_sale

upload_or_input_requirements:
- PDF import
- JPEG import
- content classification
- event/exhibition metadata where applicable

special_rules:
- supports scout / official contact / adoption path
- content and event categories are distinct


# ============================================================
# 10. RELIGIOUS CORPORATION
# ============================================================

company_type_code:
- religious_corporation

sellable_categories:
- doctrine_text
- ritual_material
- recruitment_program
- donation_program
- religious_event_access

channels:
- direct_company_sale
- category_catalog_sale where lawful
- invitation_or_event_sale

upload_or_input_requirements:
- doctrine/recruitment metadata
- donation/religious event setup

special_rules:
- special legal category
- not treated as ordinary commercial company
- recruitment and donation rules must remain explicit


# ============================================================
# 11. SYSTEM-LIMITED TYPES
# ============================================================

system_limited_company_types:
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

user_creation:
- not initially allowed


# ============================================================
# 12. FINAL TABLE RULE
# ============================================================

This table is the official initial sellable product scope
by company type for CivilizationOS.

Core summary:

- company type determines sellable scope
- channels are explicit
- upload/input requirements are explicit
- retail and investment have contract/portfolio behavior
- culture/arts supports content + event products
