# ============================================================
# CIVILIZATION COMPANY CORE MODEL ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official core company model architecture
inside CivilizationOS.

This architecture covers:
- company core identity
- nation relation
- premises relation
- company site structure
- company operational presence

This architecture explicitly assumes:
- a company is not only an abstract legal entity
- a company should have real operational presence
  inside a nation through one or more sites


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Company model must distinguish:

- company core
- company site
- company site use
- tenant occupancy relation where applicable
- store opening relation where applicable

Core principle:

a company exists as a legal/organizational entity  
and also as one or more actual sites inside a nation


# ============================================================
# 2. COMPANY CORE PRINCIPLE
# ============================================================

Company core defines:
- company identity
- company type
- legal category
- nation affiliation
- publication/activation state
- high-level capability profile

Company core is not the same as site or store.


# ============================================================
# 3. COMPANY SITE PRINCIPLE
# ============================================================

A company site defines:
- where the company physically or operationally exists
- what type of site it is
- what property or unit it occupies
- what occupancy mode it uses

A company may have multiple sites.


# ============================================================
# 4. SITE TYPE PRINCIPLE
# ============================================================

Site types should include at minimum:
- headquarters
- branch
- retail_store
- office
- studio
- school_site
- temple_site
- gallery_site
- workshop
- service_site

Site type compatibility should remain explicit by company type.


# ============================================================
# 5. OCCUPANCY PRINCIPLE
# ============================================================

Occupancy modes should include:
- owned
- leased
- tenant
- shared_space
- allocated_use

Company site must not assume owned-only occupancy.


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Company core model in CivilizationOS must be:
- company-core-aware
- site-aware
- occupancy-aware
- multi-site-capable
- explicit in operational presence
