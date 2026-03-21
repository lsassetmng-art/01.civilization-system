# ============================================================
# CIVILIZATION SIMULATION LOOP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0011

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the simulation cycle of CivilizationOS.

CivilizationOS advances through repeated
simulation loops.

Each loop processes events, propagates impact,
updates states, recalculates indicators,
and records the resulting civilization snapshot.


# ============================================================
# CORE LOOP
# ============================================================

tick_start
 ↓
ingest_events
 ↓
validate_events
 ↓
classify_events
 ↓
evaluate_severity
 ↓
propagate_effects
 ↓
execute_state_transitions
 ↓
update_relations
 ↓
recalculate_metrics
 ↓
commit_snapshot
 ↓
tick_end


# ============================================================
# TICK CONCEPT
# ============================================================

A tick is one simulation step.

A tick may represent:

- real time
- daily cycle
- monthly cycle
- yearly cycle
- scenario step
- replay step


# ============================================================
# LOOP INPUTS
# ============================================================

inputs to a tick:

pending events
scheduled events
scenario events
policy updates
external shocks
state carry-over from previous tick


# ============================================================
# LOOP OUTPUTS
# ============================================================

outputs of a tick:

new entity states
new relations
updated indicators
generated follow-up events
snapshot of civilization state
history records


# ============================================================
# PHASE 1
# EVENT INGESTION
# ============================================================

collect all events relevant to the tick

sources:

manual events
scheduled events
generated cascade events
policy events
scenario injections


# ============================================================
# PHASE 2
# EVENT VALIDATION
# ============================================================

validation checks:

source exists
target exists
event type allowed
state transition allowed
relation path available
severity computable


# ============================================================
# PHASE 3
# EVENT CLASSIFICATION
# ============================================================

classify events by:

domain
scope
severity
locality
propagation type
state impact type


# ============================================================
# PHASE 4
# SEVERITY EVALUATION
# ============================================================

severity levels:

S0 informational
S1 minor
S2 moderate
S3 major
S4 critical
S5 civilization threat

severity dimensions:

population impact
territorial spread
economic loss
institutional instability
infrastructure damage
security escalation
cascade potential


# ============================================================
# PHASE 5
# PROPAGATION
# ============================================================

propagation follows declared relations only.

allowed propagation paths:

dependency
resource_flow
information_flow
institutional_control
financial_contagion
geographic_adjacency
policy_cascade
social_contagion


# ============================================================
# PHASE 6
# STATE TRANSITION
# ============================================================

state updates occur after propagation is resolved.

example:

company stable
 + liquidity_crisis
 -> company crisis

nation stability
 + internal_conflict
 -> nation crisis

power_grid operational
 + grid_failure
 -> power_grid degraded


# ============================================================
# PHASE 7
# RELATION UPDATE
# ============================================================

events may create, strengthen, weaken,
or remove relations.

examples:

trade_agreement_signed
-> add trade relation

migration_wave
-> strengthen region-population relation

bankruptcy
-> remove active commercial relation


# ============================================================
# PHASE 8
# METRIC RECALCULATION
# ============================================================

update:

population metrics
economic metrics
financial metrics
infrastructure metrics
security metrics
civilization metrics

all metrics are derived from updated state.


# ============================================================
# PHASE 9
# SNAPSHOT COMMIT
# ============================================================

at the end of each tick, create a snapshot.

snapshot contains:

tick id
entity state summary
relation summary
metric summary
critical events
system status


# ============================================================
# LOOP MODES
# ============================================================

real-time loop
scheduled loop
historical replay loop
scenario loop
stress-test loop
policy experiment loop


# ============================================================
# LOOP GUARDRails
# ============================================================

no hidden mutation

no uncited propagation path

no state update without triggering event

no snapshot omission

no failed event loss


# ============================================================
# RESULT
# ============================================================

CivilizationOS evolves as a repeated
simulation loop operating over

models
entities
states
events
relations
metrics

This loop is the execution rhythm
of the civilization engine.


# ============================================================
# END
# ============================================================
