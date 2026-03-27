# ============================================================
# CIVILIZATION RENT AND RENT CURRENCY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official architecture for rent, rent currency,
rent collection, and rent valuation in CivilizationOS.

This architecture explicitly assumes:
- rent exists only inside Civilization flows
- rent is not sent to ERP
- Civilization companies do not use ERP
- rent is collected in the currency of the nation
  where the property exists


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Rent must be modeled separately from:
- sale value
- ownership value
- assessed value
- contract closing value

Rent is an occupancy/use payment stream.

Core principle:

rent belongs to the property nation currency domain


# ============================================================
# 2. RENT CURRENCY RULE
# ============================================================

Rent currency must be determined by:
- property nation
- property legal location
- property regime

Default rule:
rent_currency_code = property_nation_currency_code

This is mandatory unless a future explicit exception policy is created.

No ERP currency handling is part of this architecture.


# ============================================================
# 3. RENT TYPES
# ============================================================

Rent-related payment types may include:
- residential_rent
- office_rent
- retail_rent
- industrial_rent
- agricultural_use_rent
- allocation_fee
- grant_use_fee
- service_charge
- maintenance_charge


# ============================================================
# 4. RENT VALUE BASIS
# ============================================================

Rent reference value should derive from:
- district rank
- residential/commercial/industrial/agricultural value
- infrastructure value
- safety value
- scarcity value
- prestige value
- occupancy utility
- building grade
- unit desirability
- nation marketability effect

Rent value is not ERP-facing and not ERP-dependent.


# ============================================================
# 5. COLLECTION RULE
# ============================================================

Rent collection must be handled inside Civilization.

Collection should support:
- billing cycle
- due date
- late fee rule
- grace policy
- default policy
- freeze/suspension policy
- eviction or occupancy enforcement policy where allowed

All collection is Civilization-internal.


# ============================================================
# 6. CROSS-BORDER OCCUPANT RULE
# ============================================================

If an occupant is from another nation,
the rent obligation is still denominated in the property nation currency.

Any internal exchange or payment conversion,
if later supported,
must remain a Civilization-internal mechanism.

This is not ERP-linked.


# ============================================================
# 7. COMPANY RENT RULE
# ============================================================

If a Civilization company rents premises:
- rent is still collected in the property nation currency
- the company remains a Civilization company
- the flow remains entirely within Civilization
- no ERP dependency exists


# ============================================================
# 8. FINAL ARCHITECTURAL RULE
# ============================================================

Civilization rent must remain a Civilization-internal payment stream.

Core summary:

- rent is separate from sale price
- rent is collected in property nation currency
- rent is not sent to ERP
- Civilization companies pay and receive rent inside Civilization only
