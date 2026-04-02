# ============================================================
# CIVILIZATION REAL ESTATE TAX ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official tax architecture for real-estate domains
inside CivilizationOS.

This architecture covers:
- holding tax
- acquisition tax
- transfer tax
- inheritance tax
- rent-related tax
- tax default and enforcement linkage

All tax behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Real-estate tax must be modeled as a common system structure
with nation-specific DB-controlled tax rules.

The system must define:
- tax object classes
- tax event classes
- assessment flow
- payment flow
- default flow

Nation-specific rates, exemptions, timing, and eligibility
must not be hardcoded.


# ============================================================
# 2. TAX EVENT CLASSES
# ============================================================

Minimum tax event classes:
- holding_tax
- land_holding_tax
- building_holding_tax
- acquisition_tax
- registration_tax
- transfer_tax
- inheritance_tax
- gift_transfer_tax
- rent_income_tax
- vacancy_or_idle_property_tax
- luxury_property_tax

Each nation may enable, disable, or modify these
through DB policy records.


# ============================================================
# 3. TAX CONTROL RULE
# ============================================================

The following must be DB-controlled per nation:
- tax enable/disable
- taxable object class
- taxable right class
- taxable event type
- tax rate
- tax base
- threshold
- exemption
- progressive tiers
- payment cycle
- penalty and default handling

Fail closed if required tax rule is missing
for a mandatory tax event.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Real-estate tax in CivilizationOS must be:
- common in structure
- nation-specific in behavior
- DB-controlled in operation
- linked to enforcement when unpaid
