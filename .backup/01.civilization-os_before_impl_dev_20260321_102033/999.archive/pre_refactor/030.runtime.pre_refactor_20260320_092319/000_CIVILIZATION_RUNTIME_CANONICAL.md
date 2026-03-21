# CIVILIZATION RUNTIME CANONICAL


---

# ./030_EVENT_RUNTIME.md

# EVENT RUNTIME

purpose:
Execute event objects during simulation.

runtime responsibilities:
ingest event
validate event
classify event
assign severity
route event
produce execution result

rule:
no state change without event execution


---

# ./031_EVENT_PIPELINE_RUNTIME.md

# EVENT PIPELINE RUNTIME

purpose:
Execute the ordered pipeline for runtime event processing.

pipeline:
ingest
validate
classify
severity
propagate
transition
relation update
metric update
snapshot signal


---

# ./032_DISPATCHER_RUNTIME.md

# DISPATCHER RUNTIME

purpose:
Dispatch runtime work to the correct subsystem.

dispatch targets:
event processor
state engine
relation engine
metric engine
snapshot engine
scenario runner

rule:
dispatch must be deterministic and auditable


---

# ./033_WORLD_RUNTIME.md

# WORLD RUNTIME

purpose:
Maintain active civilization world state during execution.

runtime objects:
active entities
active relations
active states
pending events
active metrics
branch contexts

rule:
canonical world and branch worlds must remain isolated


---

# ./034_EVENT_REGISTRY_RUNTIME.md

# EVENT REGISTRY RUNTIME

purpose:
Provide runtime lookup and validation for event types.

runtime functions:
event type validation
severity rule lookup
propagation rule lookup
handler lookup

rule:
unregistered critical events must fail closed


---

# ./035_SYSTEM_CONTROL_RUNTIME.md

# SYSTEM CONTROL RUNTIME

purpose:
Execute runtime control operations.

controls:
pause
resume
inject_event
branch
rollback_branch
snapshot_now
replay
terminate_run

rule:
control actions must be logged and reviewable


---

# ./036_STATE_MACHINE_RUNTIME.md

# STATE MACHINE RUNTIME

purpose:
Execute state transitions for entities and systems.

transition flow:
current state
trigger event
transition validation
next state
post-transition effects

rule:
invalid transitions must be rejected


---

# ./037_RELATION_GRAPH_RUNTIME.md

# RELATION GRAPH RUNTIME

purpose:
Maintain active relation graph during runtime.

runtime actions:
create relation
remove relation
strengthen relation
weaken relation
query relation path
resolve propagation path

rule:
no hidden edge creation


---

# ./038_METRIC_ENGINE_RUNTIME.md

# METRIC ENGINE RUNTIME

purpose:
Recompute civilization metrics after runtime changes.

metric inputs:
entity states
relations
events
policy conditions

metric outputs:
population metrics
economic metrics
financial metrics
security metrics
civilization metrics


---

# ./039_SNAPSHOT_RUNTIME.md

# SNAPSHOT RUNTIME

purpose:
Capture runtime snapshots.

snapshot triggers:
tick end
critical event
manual snapshot
branch checkpoint
terminal state

rule:
snapshots must be consistent and replayable


---

# ./040_SCENARIO_RUNTIME.md

# SCENARIO RUNTIME

purpose:
Execute isolated scenario branches.

runtime functions:
create branch
inject assumptions
run scenario loop
collect divergence
compare with baseline

rule:
scenario execution must not mutate canonical history


---

# ./041_CAUSALITY_RUNTIME.md

# CAUSALITY RUNTIME

purpose:
Record runtime cause-effect structure.

runtime objects:
cause edge
effect edge
event lineage
state lineage
metric lineage

result:
every major runtime transition remains explainable


---

# ./042_TIMELINE_RUNTIME.md

# TIMELINE RUNTIME

purpose:
Maintain ordered runtime history.

timeline elements:
tick
event
state change
relation change
metric change
snapshot reference

rule:
timeline order must remain stable and queryable


---

# ./043_POLICY_RUNTIME.md

# POLICY RUNTIME

purpose:
Apply policy effects during runtime.

policy runtime effects:
constraint update
probability bias
resource shift
state transition influence
metric influence

rule:
policy acts through structured effects only


---

# ./044_SHOCK_RUNTIME.md

# SHOCK RUNTIME

purpose:
Execute shocks inside runtime.

shock classes:
economic
financial
security
infrastructure
health
climate
geopolitical

rule:
shocks enter runtime as structured events


---

# ./045_FAILURE_RUNTIME.md

# FAILURE RUNTIME

purpose:
Handle runtime failures safely.

failure cases:
invalid event
invalid transition
broken relation path
metric recompute failure
snapshot failure
branch isolation failure

rule:
fail closed
record reason
preserve audit trail


---

# ./046_AUDIT_RUNTIME.md

# AUDIT RUNTIME

purpose:
Persist runtime audit records.

audit targets:
control actions
critical events
critical transitions
branch creation
policy execution
snapshot commit

result:
runtime remains reviewable


---

# ./047_RUNTIME_SECURITY.md

# RUNTIME SECURITY

purpose:
Protect runtime execution integrity.

rules:
no silent mutation
no undeclared control path
no branch leakage
no unsigned critical commit
no hidden dependency execution


---

# ./048_RUNTIME_OBSERVABILITY.md

# RUNTIME OBSERVABILITY

purpose:
Make runtime behavior visible.

observe:
event queue
dispatch result
transition result
relation delta
metric delta
snapshot status
failure state


---

# ./049_RUNTIME_INDEX.md

# ============================================================
# RUNTIME INDEX
# ============================================================

00_CIVILIZATION_OS_RUNTIME_CANONICAL.md
30_EVENT_RUNTIME.md
31_EVENT_PIPELINE_RUNTIME.md
32_DISPATCHER_RUNTIME.md
33_WORLD_RUNTIME.md
34_EVENT_REGISTRY_RUNTIME.md
35_SYSTEM_CONTROL_RUNTIME.md
36_STATE_MACHINE_RUNTIME.md
37_RELATION_GRAPH_RUNTIME.md
38_METRIC_ENGINE_RUNTIME.md
39_SNAPSHOT_RUNTIME.md
40_SCENARIO_RUNTIME.md
41_CAUSALITY_RUNTIME.md
42_TIMELINE_RUNTIME.md
43_POLICY_RUNTIME.md
44_SHOCK_RUNTIME.md
45_FAILURE_RUNTIME.md
46_AUDIT_RUNTIME.md
47_RUNTIME_SECURITY.md
48_RUNTIME_OBSERVABILITY.md
