# ============================================================
# CIVILIZATION REAL ESTATE AUCTION AND ENFORCEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official auction and enforcement architecture
for real estate inside CivilizationOS.

This architecture covers:
- seizure
- tax enforcement
- mortgage enforcement
- judicial enforcement
- auction
- post-auction distribution
- registry update after auction

All enforcement behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Auction and enforcement are common procedural structures.

The following must vary by nation through DB policy:
- what triggers enforcement
- who may seize
- who may bid
- minimum bid rules
- notice rules
- distribution order
- protection exemptions
- whether residence protection exists


# ============================================================
# 2. ENFORCEMENT TRIGGERS
# ============================================================

Minimum triggers:
- tax_default
- mortgage_default
- court_order
- liquidation_case
- state_seizure where lawful
- unresolved major rent default where lawful

Each trigger must resolve against nation DB rules.


# ============================================================
# 3. FINAL ARCHITECTURAL RULE
# ============================================================

Auction and enforcement in CivilizationOS must be:
- explicit
- nation-governed
- DB-controlled
- registry-finalized only after lawful completion
