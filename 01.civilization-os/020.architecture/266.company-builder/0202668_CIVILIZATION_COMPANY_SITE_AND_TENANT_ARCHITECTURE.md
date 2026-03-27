# ============================================================
# CIVILIZATION COMPANY SITE AND TENANT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official company site and tenant occupancy architecture
inside CivilizationOS.

This architecture covers:
- property-based site location
- tenant occupancy
- tenant unit usage
- site compatibility checks

This architecture explicitly assumes:
- company sites may occupy whole properties or tenant units
- tenant occupancy is a first-class supported model


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Site and tenant occupancy must distinguish:

- property object
- tenant unit or sub-space
- occupancy basis
- company site
- company operational use

Core principle:

property is not the same as company site  
tenant unit is not the same as company core


# ============================================================
# 2. TENANT PRINCIPLE
# ============================================================

Tenant occupancy should support:
- commercial building tenant
- mall tenant
- office building tenant
- mixed-use facility tenant
- allocated room/unit tenant

A company may occupy only part of a building,
not necessarily the whole property.


# ============================================================
# 3. COMPATIBILITY PRINCIPLE
# ============================================================

A company site may only be created if:
- the property or unit exists
- the occupancy basis exists
- the unit is available
- the company type is compatible with the site type
- the target zone allows the intended opening/use where relevant

This is compatibility validation, not prior nation approval.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Company site and tenant architecture in CivilizationOS must be:
- property-aware
- tenant-aware
- compatibility-aware
- explicit in occupancy basis
