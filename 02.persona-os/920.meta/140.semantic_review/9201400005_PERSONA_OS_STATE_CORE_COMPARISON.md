# ============================================================
# PERSONA OS STATE CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares state-domain core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA STATE CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of persona state.

summary:
State defines current persona availability,
lifecycle position, release relation, and restriction relation.

constitutional_principles:
state transition must remain explicit
lifecycle state and availability state must remain distinguishable
restricted state transitions must fail closed

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA STATE ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of persona state and lifecycle state.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA STATE MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona state models.

summary:
State models define current persona state,
lifecycle progression state,
and availability / restriction state.

# ============================================================
# PERSONA STATE MODEL
# ============================================================

status: canonical
layer: model
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_state

purpose:
Defines the canonical current state record for a persona.

core_fields:
persona_state_id
persona_id
state_code
lifecycle_state_code
availability_state
release_state
lock_state
restriction_state
state_reason
state_version
changed_at
created_at
updated_at

canonical_state_examples:
draft
validated
approved
released
active
paused
suspended
retired
archived

rules:
State truth belongs to PersonaOS.
Lifecycle state and operational availability must remain distinguishable.

# ============================================================
# PERSONA EVENT MODEL
# ============================================================

status: canonical
layer: model
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_event

purpose:
Defines the canonical model
for significant occurrences experienced by a persona.

core_fields:
persona_event_id
persona_id
event_scope
event_type
event_summary
event_status
occurred_at
recorded_at
created_at
updated_at

event_scope_examples:
interaction
decision
environmental_change
state_transition_trigger

rules:
Persona event is not raw memory truth itself.
Persona event may contribute to memory, history, and state transition tracking.
Persona event must remain traceable to canonical persona state context.

# ============================================================
# PERSONA HISTORY MODEL
# ============================================================

status: canonical
layer: model
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_history

purpose:
Defines the canonical model
for chronological record of major persona transitions and events.

core_fields:
persona_history_id
persona_id
history_scope
history_summary
history_status
source_event_reference
source_snapshot_reference
recorded_at
created_at
updated_at

history_scope_examples:
major_transition
significant_event_sequence
state_change_history
lifecycle_history

rules:
Persona history is not identical to raw persona memory.
Persona history is an ordered historical view over significant persona events and transitions.
Persona history must remain traceable to canonical state-side records.

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA STATE POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona state policies.

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA STATE INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona state interfaces.

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is state defined as lifecycle/status truth rather than identity truth?
2. Is state clearly separated from memory truth?
3. Is event/history placement under state semantically valid?
4. Is visual state kept separate from general persona state?
5. Do policy and interface treat state mutation explicitly and safely?
