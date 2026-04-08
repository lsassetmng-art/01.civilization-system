# ============================================================
# PERSONA OS RUNTIME-HOSTING CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares runtime-hosting core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA RUNTIME HOSTING CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of runtime-hosting.

summary:
Runtime-hosting defines how host applications
consume PersonaOS runtime behavior through sessions,
surface binding, and explicit disposal.

constitutional_principles:
hosts are runtime consumers, not truth owners
session lifecycle must remain explicit
stale session reuse must fail closed

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA RUNTIME HOSTING ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of runtime-hosting domain.

summary:
Runtime-hosting is the canonical domain
for host/runtime boundary, session ownership,
surface hosting, container binding,
and lifecycle-controlled runtime consumption.

scope:
host/runtime contract
session ownership
container binding
surface binding
session lifecycle
disposal boundary

boundary:
Runtime-hosting is not visual truth.
Runtime-hosting is not builder authoring.
Host applications are consumers, not truth owners.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA RUNTIME HOSTING MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of runtime-hosting models.

summary:
Runtime-hosting models define execution-side session state
used when host applications consume PersonaOS runtime behavior.

scope:
runtime session
surface code
host system code
container binding state
runtime error linkage

boundary:
Runtime session model is not persona truth.
Runtime session model is disposable execution state.

# ============================================================
# PERSONA RUNTIME SESSION MODEL
# ============================================================

status: canonical
layer: model
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_runtime_session

core_fields:
persona_runtime_session_id
persona_id
surface_code
host_system_code
session_status
manifest_projection_ref
container_binding_state
last_render_at
last_error_code
created_at
updated_at

rules:
Runtime session is execution state.
Runtime session is not persona truth.

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA RUNTIME HOSTING POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of runtime-hosting policies.

summary:
Runtime-hosting policy governs how host applications
consume runtime sessions safely.

scope:
host compliance
session lifecycle obligations
explicit disposal
no stale reuse

boundary:
Hosts are consumers, not truth owners.

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA RUNTIME HOSTING INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of runtime-hosting interfaces.

summary:
Runtime-hosting interfaces define explicit session create,
attach, dispose, and event-observation contracts.

scope:
session create request
attach request
dispose request
session event stream

boundary:
These interfaces govern runtime consumption,
not truth ownership.

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is runtime-hosting clearly separated from canonical truth domains?
2. Is runtime session state clearly separated from visual truth and persona state?
3. Is host-side execution clearly separated from Builder authoring and apply authority?
4. Are host/container/session concepts correctly placed under runtime-hosting?
5. Do policy and interface keep runtime-hosting as consumer/executor rather than truth owner?
