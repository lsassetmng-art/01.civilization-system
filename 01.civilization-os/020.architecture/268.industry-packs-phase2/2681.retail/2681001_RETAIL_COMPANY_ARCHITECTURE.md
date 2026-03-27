# ============================================================
# RETAIL COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: retail-company

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for retail_company.

retail_company is a user-creatable company type
specialized in sourced portfolio sales,
public-facing storefront operation,
and distribution-right based retail activity.


# ============================================================
# 2. CORE RESPONSIBILITIES
# ============================================================

- source third-party portfolio products
- manage seller/rightsholder/distribution separation
- operate public-facing stores
- run merchandising and pricing activity
- expand through store and branch structure


# ============================================================
# 3. SITE POSTURE
# ============================================================

Required:
- headquarters
- retail_store

Optional:
- branch
- office
- service_site


# ============================================================
# 4. OUTPUT POSTURE
# ============================================================

Primary output:
- sourced_portfolio_product

Retail may sell products it did not create,
but must operate through valid distribution rights.


# ============================================================
# 5. FINAL RULE
# ============================================================

retail_company is the canonical public-facing distribution company type.
