# ============================================================
# CIVILIZATION REAL ESTATE TRANSACTION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official real-estate transaction flow of CivilizationOS.

This flow covers:
- listing
- offer
- contract
- approval
- settlement
- registry update
- closing
- dispute / freeze
- inheritance / grant variants


# ============================================================
# 1. PRIMARY FLOW PRINCIPLE
# ============================================================

Real-estate transaction flow must be explicit.

A real-estate transaction reaches finality only when:
- legal eligibility is satisfied
- settlement is satisfied
- registry update is satisfied
- no active blocking dispute/freeze remains

Core principle:

listing
-> offer
-> contract
-> approval where required
-> settlement
-> registry update
-> closing finality


# ============================================================
# 2. STANDARD SALE / TRANSFER FLOW
# ============================================================

## STEP 1. PROPERTY LISTING
A legitimate holder or authorized actor creates PROPERTY_LISTING.

## STEP 2. PROPERTY OFFER
An eligible buyer submits PROPERTY_OFFER.

## STEP 3. CONTRACT FORMATION
Accepted offer becomes PROPERTY_CONTRACT.

## STEP 4. APPROVAL
If nation policy requires approval,
approval must be satisfied before closing.

## STEP 5. SETTLEMENT
Settlement terms are fulfilled.

## STEP 6. REGISTRY UPDATE
Registry update request is evaluated and applied.

## STEP 7. CLOSING FINALITY
Closing completes only after settlement and registry alignment.


# ============================================================
# 3. VARIANT FLOWS
# ============================================================

Lease flow:
- listing for lease_right or occupancy_right
- tenant/occupant eligibility evaluation
- contract formation
- approval if needed
- registry update if required
- occupancy / right activation

State allocation flow:
- state allocation decision
- applicant eligibility evaluation
- allocation contract or grant
- registry entry
- occupancy/use activation

Imperial grant flow:
- grant candidate identification
- sovereign approval
- grant decree/contract
- registry entry
- right activation

Inheritance flow:
- succession trigger
- heir eligibility evaluation
- inheritance rule evaluation
- registry update
- right chain update
- new holder activation


# ============================================================
# 4. DISPUTE / FREEZE FLOW
# ============================================================

If dispute arises:
- PROPERTY_DISPUTE is created
- freeze_effect is evaluated
- listing / contract / registry / closing may be paused
- review or authority decision occurs
- dispute resolved or escalated

No silent completion under dispute is allowed.


# ============================================================
# 5. FINAL FLOW RULE
# ============================================================

CivilizationOS real-estate transactions
must follow explicit staged flow.

Core summary:

- listing, offer, contract, approval, settlement,
  registry update, and closing are distinct
- lease, grant, allocation, and inheritance are variant flows
- disputes and encumbrances must be respected
- nation DB policy governs legality at each step
- unresolved policy or blocked registry state prevents finality
