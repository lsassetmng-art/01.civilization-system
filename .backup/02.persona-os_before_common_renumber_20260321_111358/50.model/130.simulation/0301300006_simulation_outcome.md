# ============================================================
# MODEL
# ============================================================

model_id: 0301300006
model_name: simulation_outcome

domain: 0130.simulation
system: 03.persona_os

# PURPOSE
Represents result of simulation.

# DESCRIPTION
Simulation outcome records results
produced by simulation execution.

# RELATIONS
simulation_outcome
 -> simulation
 -> simulation_event
