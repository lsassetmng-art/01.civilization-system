# ============================================================
# TIME FLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: time-flow
component: time-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for time flow
inside Civilization.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization time
must be an explicit simulation time system.

It must not rely on
implicit or undefined temporal progression.


# ============================================================
# 3. REQUIRED TIME DIMENSIONS
# ============================================================

Time flow must support at minimum:

- calendar date
- weekday
- clock time
- season
- simulation tick
- long-cycle progression posture

These dimensions may be consumed
by actor behavior,
economy,
events,
and risk systems.


# ============================================================
# 4. REAL TIME RELATION
# ============================================================

Civilization time
must remain structurally separable
from real-world wall-clock time.

The exact conversion ratio
may be implementation-defined,
but the architecture must allow:

- paused simulation
- normal-speed progression
- accelerated progression where supported
- decoupled simulation control

This makes Civilization time
simulation-owned,
not device-clock-owned.


# ============================================================
# 5. TEMPORAL EFFECT RELATION
# ============================================================

Time flow may influence:

- actor schedule
- facility operating hours
- school and work cycles
- market and macro cycles
- seasonal production
- event start and end
- risk progression
- aging and mortality posture

Time is therefore
a first-class simulation input.


# ============================================================
# 6. FINAL RULE
# ============================================================

Time flow architecture must remain:

- explicit
- simulation-owned
- multi-layered
- world-affecting
- behavior-affecting

# ============================================================
# SUPPLEMENT A. EARTH-EQUIVALENT TIME STRUCTURE RULE
# ============================================================

Civilization time structure
must follow Earth-equivalent time structure.

At minimum,
the canonical structure is:

- 1 day = 24 hours
- 1 hour = 60 minutes
- 1 minute = 60 seconds
- 7 days = 1 week
- calendar month structure
- calendar year structure
- weekday structure
- season structure

This rule fixes the temporal structure,
not the simulation-speed ratio.


# ============================================================
# SUPPLEMENT B. CALENDAR COMPATIBILITY RULE
# ============================================================

Civilization calendar posture
must remain compatible with
Earth-like daily and seasonal interpretation.

This supports natural design for:

- meal timing
- sleep timing
- work schedules
- school schedules
- business hours
- event schedules
- seasonal production
- annual public processes
- election timing where applicable


# ============================================================
# SUPPLEMENT C. TIME STRUCTURE VS SIMULATION SPEED RULE
# ============================================================

The following must remain distinct:

- time structure
- simulation progression speed

Time structure is Earth-equivalent.

Simulation progression speed
may still support:

- paused state
- normal progression
- accelerated progression where supported
- batch-style progression where supported

Earth-equivalent time structure
does not require
real-world wall-clock speed equivalence.


# ============================================================
# SUPPLEMENT D. FINAL EARTH-TIME RULE
# ============================================================

Civilization time flow must remain:

- Earth-equivalent in temporal structure
- explicit in calendar interpretation
- separable from simulation-speed control
- compatible with daily life,
  organization schedules,
  market cycles,
  and long-cycle world progression

