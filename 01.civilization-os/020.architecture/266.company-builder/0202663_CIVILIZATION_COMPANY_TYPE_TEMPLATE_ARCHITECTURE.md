# ============================================================
# CIVILIZATION COMPANY TYPE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official company type template architecture
inside CivilizationOS.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Company type template must define:
- whether user creation is allowed
- whether system-only
- legal category
- supported sellable product categories
- supported upload/input types
- supported contract surfaces
- supported portfolio surfaces
- supported special actions

Templates are DB-controlled.


# ============================================================
# 2. INITIAL TEMPLATE SUMMARY
# ============================================================

architectural_design_company:
- sellable: building exterior design
- bonus-capable design product
- design upload / stat bonus configuration

interior_company:
- sellable: housing interior / housing exterior
- bonus-capable design product
- design upload / stat bonus configuration

fashion_company:
- sellable: persona costume / accessory
- bonus-capable persona product
- fashion catalog setup

retail_company:
- sellable: sourced portfolio goods
- contract and portfolio heavy
- distribution settings required

investment_company:
- sellable: fund / solicitation / investment offering
- fund setup required

education_company:
- sellable: text / curriculum / program
- child education support (ages 3-18)
- age-band setup required

game_company:
- sellable: game app
- GameOS-connected or standalone
- upload/release setup required

software_company:
- sellable: app/software
- BusinessOS-linked or standalone
- upload/runtime setup required

culture_arts_company:
- sellable: novel / manga / anime / drama / film / digital art
- exhibition / screening possible
- PDF / JPEG import required
- scout / official adoption path supported

religious_corporation:
- non-standard corporate form
- recruitment / donation / doctrine / ritual / facility operation
- not treated as ordinary commercial company


# ============================================================
# 3. FINAL ARCHITECTURAL RULE
# ============================================================

Company type templates in CivilizationOS must be:
- DB-controlled
- capability-explicit
- sellable-scope-explicit
- UI-surface-explicit
