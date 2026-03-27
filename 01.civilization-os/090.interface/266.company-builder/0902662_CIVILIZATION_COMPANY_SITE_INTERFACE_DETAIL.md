# ============================================================
# CIVILIZATION COMPANY SITE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for company site,
tenant occupancy, opening, and mediated real-estate handling
inside CivilizationOS.


# ============================================================
# 1. COMPANY SITE INTERFACE
# ============================================================

required_fields:
- company_ref
- site_type
- nation_code
- region_ref or district_ref
- correlation_id

optional_fields:
- property_object_ref
- tenant_unit_ref
- occupancy_mode


# ============================================================
# 2. TENANT OCCUPANCY INTERFACE
# ============================================================

required_fields:
- company_ref
- property_object_ref or tenant_unit_ref
- occupancy_basis_type
- correlation_id


# ============================================================
# 3. STORE OPENING INTERFACE
# ============================================================

required_fields:
- company_ref
- company_site_ref
- nation_store_zone_ref
- store_type
- correlation_id


# ============================================================
# 4. SYSTEM REAL ESTATE TRANSACTION INTERFACE
# ============================================================

required_fields:
- system_real_estate_company_ref
- transaction_type
- from_party_ref
- to_party_ref
- property_object_ref or tenant_unit_ref
- correlation_id

transaction_type examples:
- purchase
- lease
- resale
- tenant_lease
- reassignment


# ============================================================
# 5. NATION NOTIFICATION INTERFACE
# ============================================================

required_fields:
- nation_code
- store_opening_ref
- notification_type
- correlation_id


# ============================================================
# 6. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 7. FINAL INTERFACE RULE
# ============================================================

Company site interfaces in CivilizationOS must be:
- site-aware
- tenant-aware
- opening-aware
- notification-aware
- mediation-aware
