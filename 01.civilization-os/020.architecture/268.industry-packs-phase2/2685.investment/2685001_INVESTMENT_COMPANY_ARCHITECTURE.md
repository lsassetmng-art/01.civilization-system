# ============================================================
# INVESTMENT COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: investment-company

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for investment_company.

investment_company is a user-creatable finance-sensitive company type
that creates fund and capital solicitation offerings
under nation market and securities rules.


# ============================================================
# 2. CORE RESPONSIBILITIES
# ============================================================

- define investment products
- manage capital solicitation posture
- operate investment portfolio strategy
- maintain compliance-sensitive offering posture
- interact with securities intermediary structures


# ============================================================
# 3. SITE POSTURE
# ============================================================

Required:
- headquarters
- office

Optional:
- branch


# ============================================================
# 4. OUTPUT POSTURE
# ============================================================

Primary outputs:
- fund_product
- investment_offering
- capital_solicitation_product


# ============================================================
# 5. FINAL RULE
# ============================================================

investment_company is user-creatable but finance-sensitive,
and may require approval_if_needed.
