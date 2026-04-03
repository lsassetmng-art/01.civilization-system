# ============================================================
# WORLD TICK AND SIMULATION RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: world-tick-and-simulation-runtime
component: world-tick-and-simulation-runtime

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for world tick,
simulation update cycles,
and actor update runtime
inside Civilization.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Simulation progression
must be tick-aware.

Not all entities need to update
with identical temporal resolution,
but the runtime must define
how update cadence is structured.


# ============================================================
# 3. UPDATE GRANULARITY PRINCIPLE
# ============================================================

The runtime may support
different update cadences for:

- high-importance visible actors
- local active environments
- background actors
- macro systems
- long-cycle systems

This allows scale without requiring
uniform per-second update of all actors.


# ============================================================
# 4. TICK RELATION
# ============================================================

World tick may drive:

- actor movement updates
- schedule transitions
- facility availability checks
- event progression checks
- market updates
- risk recalculation triggers
- mortality and life-cycle progression triggers

This document fixes
tick as simulation runtime backbone.


# ============================================================
# 5. FINAL RULE
# ============================================================

World tick and simulation runtime architecture must remain:

- tick-aware
- cadence-aware
- scalable
- actor-compatible
- macro-compatible
