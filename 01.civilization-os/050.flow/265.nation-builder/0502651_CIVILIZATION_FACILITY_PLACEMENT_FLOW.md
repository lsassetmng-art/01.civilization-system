# ============================================================
# CIVILIZATION FACILITY PLACEMENT FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow of facility and infrastructure placement
inside CivilizationOS nation builder.


# ============================================================
# 1. FACILITY PLACEMENT FLOW
# ============================================================

select region/district
-> choose facility type
-> choose optional design package
-> place facility
-> validate placement
-> compute effective stats
-> save placement state


# ============================================================
# 2. INFRASTRUCTURE PLACEMENT FLOW
# ============================================================

select region/district
-> choose infrastructure type
-> place node/segment
-> define required connections
-> validate connectivity
-> save topology state


# ============================================================
# 3. REVISION FLOW
# ============================================================

open existing placement
-> move / rotate / replace design / remove
-> revalidate
-> recompute effective stats
-> update draft state


# ============================================================
# 4. FINAL FLOW RULE
# ============================================================

Facility placement flow must remain:
- staged
- design-aware
- stat-aware
- connectivity-aware
- validation-aware
