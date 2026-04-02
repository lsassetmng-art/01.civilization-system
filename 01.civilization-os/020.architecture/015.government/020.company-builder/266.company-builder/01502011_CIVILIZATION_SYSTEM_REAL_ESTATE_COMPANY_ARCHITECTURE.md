# ============================================================
# CIVILIZATION SYSTEM REAL ESTATE COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official architecture for system real-estate-company mediation
inside CivilizationOS.

This architecture covers:
- property purchase processing
- leasing processing
- resale processing
- tenant occupancy processing
- listing mediation

This architecture explicitly assumes:
- any company type may buy property
- any company type may lease property
- any company type may resell property
- but transactions must pass through a system real-estate company


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Property ownership eligibility is broad,
but transaction execution is centralized.

Core principle:

ownership may belong to many company types  
but transaction processing must go through
the system real-estate company


# ============================================================
# 2. ALLOWED PROPERTY ACTIONS
# ============================================================

Supported actions:
- property purchase
- property lease
- property sub-lease where lawful
- property resale
- tenant unit lease
- tenant unit reassignment where lawful

These actions are open broadly to company types,
subject to property/right compatibility rules.


# ============================================================
# 3. SYSTEM REAL ESTATE COMPANY ROLE
# ============================================================

The system real-estate company should handle:
- property listing
- lease listing
- transaction mediation
- contract processing
- ownership transfer processing
- tenant occupancy processing
- resale processing
- opening-site compatibility linkage

This company acts as infrastructure mediator.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

System real-estate-company mediation in CivilizationOS must be:
- centralized in execution
- broad in eligible ownership/use
- compatibility-aware
- explicit in transaction processing
