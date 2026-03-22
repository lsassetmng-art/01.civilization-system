# ============================================================
# MODEL
# ============================================================

model_id: 0301300003
model_name: simulation_event

domain: 0130.simulation
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents event occurring during simulation.


# ============================================================
# DESCRIPTION
# ============================================================

Simulation event represents an
interaction or occurrence inside
simulation environment.


# ============================================================
# RELATIONS
# ============================================================

simulation_event
 -> simulation
 -> scenario
