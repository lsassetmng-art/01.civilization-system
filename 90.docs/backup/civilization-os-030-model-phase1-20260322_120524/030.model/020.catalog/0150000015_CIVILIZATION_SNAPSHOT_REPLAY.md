# ============================================================
# CIVILIZATION SNAPSHOT REPLAY
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0015

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define snapshot creation, snapshot structure,
and replay behavior for CivilizationOS.


# ============================================================
# SNAPSHOT PRINCIPLE
# ============================================================

A snapshot is a consistent civilization state
captured at a simulation boundary.


# ============================================================
# SNAPSHOT CONTENT
# ============================================================

tick_id
timestamp
entity_state_summary
relation_summary
metric_summary
active_events
critical_events
domain_status
civilization_status


# ============================================================
# SNAPSHOT TYPES
# ============================================================

tick snapshot
scheduled snapshot
critical event snapshot
branch snapshot
baseline snapshot
terminal snapshot


# ============================================================
# REPLAY MODES
# ============================================================

full replay
domain replay
entity replay
event chain replay
branch replay
counterfactual replay


# ============================================================
# REPLAY RULES
# ============================================================

Replay must preserve:

event order
causal linkage
state transition order
metric derivation order
relation update order


# ============================================================
# USE CASES
# ============================================================

audit
historical reconstruction
scenario comparison
debugging
policy evaluation
causality validation


# ============================================================
# RESULT
# ============================================================

CivilizationOS becomes replayable and auditable.

