# ============================================================
# CIVILIZATION FACILITY PLACEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official facility placement architecture
inside CivilizationOS nation builder.

This architecture covers:
- facility function definition
- facility placement instance
- facility design package linkage
- facility effective stat calculation


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Facility placement must distinguish:

- facility function
- facility placement instance
- facility design package
- effective facility stats

Core principle:

facility function defines what it is
placement defines where it is
design defines how it looks
effective stats define how strong it is


# ============================================================
# 2. FACILITY FUNCTION PRINCIPLE
# ============================================================

Facility function is the gameplay/governance truth.

Examples:
- palace
- imperial_residence
- parliament
- police_station
- residence_block
- central_bank_hq
- military_base
- court
- hospital
- school

Facility function defines:
- facility_type
- allowed stat axes
- base stat profile
- required placement constraints


# ============================================================
# 3. FACILITY DESIGN PRINCIPLE
# ============================================================

Facility design package is distinct from facility function.

A design package defines:
- visual identity
- provider
- compatibility
- optional stat bonus profile
- license state

Design providers may include:
- system_company
- user_company
- ai_company

Chargeable facility design packages are allowed.
Their creation/distribution design belongs to another system.


# ============================================================
# 4. DESIGN BONUS PRINCIPLE
# ============================================================

Facility design may grant stat bonuses.

However:
- design bonus must never replace facility function
- design bonus must respect facility-type allowed stat axes
- total design bonus must remain capped by ratio

Recommended cap:
total design bonus <= 20% of base facility stat total

This cap should be DB-controlled.


# ============================================================
# 5. PLACEMENT PRINCIPLE
# ============================================================

Facility placement must support:
- target region/district selection
- exact placement coordinates or cell position
- rotation where meaningful
- design package selection
- placement status
- validation state

Placement instance is distinct from facility type.


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Facility placement in CivilizationOS must be:
- function-distinct
- design-distinct
- placement-distinct
- stat-aware
- DB-controlled
