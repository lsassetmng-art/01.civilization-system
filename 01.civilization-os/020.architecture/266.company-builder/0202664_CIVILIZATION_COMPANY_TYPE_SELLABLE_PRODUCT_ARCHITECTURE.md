# ============================================================
# CIVILIZATION COMPANY TYPE SELLABLE PRODUCT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official sellable product architecture
by company type inside CivilizationOS.

This architecture covers:
- allowed sellable categories by company type
- direct sale eligibility
- marketplace sale eligibility
- upload/import requirements
- contract/portfolio requirements
- bonus-capable product categories


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

A company type must not be allowed to sell anything arbitrarily.

Sellable scope must be defined by:
- company type template
- sellable product table
- upload/import surface eligibility
- contract or portfolio eligibility where needed

Core principle:

company type determines what may be sold  
sellable scope must be explicit and DB-controlled


# ============================================================
# 2. CHANNEL PRINCIPLE
# ============================================================

A sellable category may support one or more channels:

- direct_company_sale
- marketplace_sale
- category_catalog_sale
- invitation_or_event_sale

Channel support must be explicit.


# ============================================================
# 3. BONUS-CAPABLE PRODUCT PRINCIPLE
# ============================================================

Some product categories may carry stat or effect bonuses.

Examples:
- building exterior design
- housing interior
- housing exterior
- persona costume
- accessory

Bonus-capable categories must remain explicit
and follow their own stat-cap policy.


# ============================================================
# 4. CONTRACT / PORTFOLIO PRINCIPLE
# ============================================================

Some company types do not sell only self-created products.

Examples:
- retail_company
- investment_company

These require:
- contract surfaces
- sourced portfolio surfaces
- distribution rule surfaces

This must be explicit.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Sellable product scope in CivilizationOS must be:
- company-type-aware
- channel-aware
- upload-aware
- contract-aware where needed
- DB-controlled
