# ============================================================
# CIVILIZATION TIME AND AUTONOMOUS BEHAVIOR ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: civilization-time-and-autonomous-behavior
component: civilization-time-and-autonomous-behavior

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for time flow,
autonomous movement,
autonomous activity,
schedule behavior,
and life-cycle progression
inside Civilization.

This document covers the upper architecture for:

- time flow
- autonomous behavior
- schedule and activity
- world tick and simulation runtime
- user and Ai(Human) life-cycle posture

This document defines:

- temporal separation
- actor separation
- behavior responsibility
- simulation progression boundaries
- relation between direct control and autonomous action

This document does not define:

- final exact tick interval
- final exact real-time conversion
- final exact pathfinding algorithms
- final exact per-actor AI policy weights
- low-level UI contracts


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization must support
explicit time flow
and explicit autonomous actor behavior.

Users and Ai(Human)
may move and act autonomously
inside Civilization.

Autonomous behavior must be governed by:

- time
- schedule
- role
- location
- need posture
- world condition
- permitted authority and constraint posture

Time flow and behavior flow
must not remain implicit.


# ============================================================
# 3. PRIMARY ACTOR FAMILIES
# ============================================================

At minimum,
the architecture must distinguish:

- user
- Ai(Human)

Future extension may also support:

- Persona where behaviorally independent
- Ai(Robot)
- animal and pet classes where required later

This document currently fixes
user and Ai(Human)
as the primary mandatory actor families.


# ============================================================
# 4. TIME SEPARATION
# ============================================================

Civilization must distinguish
at least the following time layers.

1. calendar time
2. simulation time
3. activity time
4. long-cycle progression time

Calendar time includes:

- year
- month
- day
- weekday
- clock time
- season

Simulation time includes:

- tick
- update cycle
- pause posture
- fast-forward posture where supported

Activity time includes:

- work time
- commute time
- rest time
- meal time
- leisure time
- event participation time

Long-cycle progression time includes:

- growth
- aging
- economic cycle
- market cycle
- war progression
- epidemic progression
- mortality progression

These time layers must remain distinguishable.


# ============================================================
# 5. DIRECT CONTROL VS AUTONOMOUS CONTROL
# ============================================================

The architecture must distinguish between:

- direct user control
- assisted user automation
- fully autonomous Ai(Human) behavior

Direct user control
must have explicit priority rules
relative to autonomous behavior.

Ai(Human)
is treated as a persistent simulation actor
and is expected to act autonomously
without requiring direct user input.


# ============================================================
# 6. BEHAVIOR INPUT FAMILIES
# ============================================================

Autonomous behavior may consume:

- current time
- schedule posture
- actor role
- actor home or residence posture
- actor work assignment
- actor need state
- event eligibility
- map and facility availability
- transportation and route posture
- risk posture
- policy restriction
- economic condition
- social or organizational linkage

This document fixes the architectural allowance
for multi-domain behavior inputs.


# ============================================================
# 7. WORLD RELATION
# ============================================================

Time and autonomous behavior
must connect to:

- world map and location systems
- residence systems
- work and company systems
- school systems
- hospital systems
- event systems
- market and consumption systems
- risk and mortality systems
- state and city systems

Behavior runtime must not be isolated
from the rest of Civilization.


# ============================================================
# 8. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- TIME_FLOW_ARCHITECTURE
- AUTONOMOUS_BEHAVIOR_ARCHITECTURE
- SCHEDULE_AND_ACTIVITY_ARCHITECTURE
- WORLD_TICK_AND_SIMULATION_RUNTIME_ARCHITECTURE
- USER_AND_AI_HUMAN_LIFE_CYCLE_ARCHITECTURE


# ============================================================
# 9. FINAL RULE
# ============================================================

Civilization time and autonomous behavior architecture must remain:

- time-explicit
- actor-explicit
- schedule-aware
- world-connected
- direct-control-compatible
- autonomous-actor-compatible
- simulation-ready
