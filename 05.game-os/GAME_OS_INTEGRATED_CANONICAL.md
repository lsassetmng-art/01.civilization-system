# ============================================================
# GAME OS INTEGRATED CANONICAL
# ============================================================

status: canonical
system: game-os
owner: Boss
prepared_by: Zero
generated_at: 2026-03-23 20:13:09 +0900


--------------------------------------------------------------------------------
FILE: 020.architecture/040.persona/0200008_PERSONA_GAME_INTEGRATION_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA GAME INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical integration architecture
between GameOS and PersonaOS.

direction_a:
GameOS sends growth events or growth requests to PersonaOS.

direction_b:
PersonaOS sends usage permission, access state, release validity,
binding state, and trust-related synchronization results to GameOS.

principles:
- Persona truth belongs to PersonaOS
- Game truth belongs to GameOS
- synchronization must use explicit contracts
- no direct cross-os truth overwrite



--------------------------------------------------------------------------------
FILE: 020.architecture/040.persona/0200009_PERSONA_GAME_USAGE_BOUNDARY_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA GAME USAGE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the boundary of Persona usage inside GameOS.

allowed:
- character presentation
- NPC personality selection
- dialogue style selection
- in-game assistant enablement
- event reaction style

not_allowed:
- direct overwrite of game primary progression truth by PersonaOS
- trust bypass by UI or operator path



--------------------------------------------------------------------------------
FILE: 020.architecture/060.integration/0200010_GAME_SYNC_CONSUMER_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# GAME SYNC CONSUMER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how GameOS consumes sync events returned from PersonaOS.

consumed_contracts:
- usage permission result
- access state result
- release validity result
- usage binding result
- trust sync result



--------------------------------------------------------------------------------
FILE: 020.architecture/060.integration/0200011_GAME_EVENT_OUTBOX_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# GAME EVENT OUTBOX ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical outbox architecture for GameOS outbound Persona sync events.

outbox_events:
- game_to_persona_growth_request
- game_to_persona_growth_event
- game_to_persona_context_sync_request



--------------------------------------------------------------------------------
FILE: 020.architecture/060.integration/0200012_GAME_TO_PERSONA_GROWTH_SYNC_ARCHITECTURE.md
--------------------------------------------------------------------------------

# ============================================================
# GAME TO PERSONA GROWTH SYNC ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how GameOS-originated growth triggers are synchronized to PersonaOS.

growth_sources:
- quest completion milestone
- relationship progression milestone
- play continuity milestone
- achievement milestone
- interaction depth milestone



--------------------------------------------------------------------------------
FILE: 030.model/040.persona/0300400001_GAME_PERSONA_ACCESS_REF_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA ACCESS REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona access state inside GameOS.

fields:
- game_user_id
- persona_id
- access_status
- access_scope
- effective_from
- effective_until
- synced_at



--------------------------------------------------------------------------------
FILE: 030.model/040.persona/0300400002_GAME_PERSONA_LICENSE_REF_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA LICENSE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona license or usage permission state inside GameOS.

fields:
- game_user_id
- persona_id
- usage_permission_status
- granted_scope
- revoked_reason
- synced_at



--------------------------------------------------------------------------------
FILE: 030.model/040.persona/0300400003_GAME_PERSONA_RELEASE_REF_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA RELEASE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona release validity state inside GameOS.

fields:
- game_user_id
- persona_id
- release_status
- release_version
- effective_from
- effective_until
- synced_at



--------------------------------------------------------------------------------
FILE: 030.model/040.persona/0300400004_GAME_PERSONA_USAGE_BINDING_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA USAGE BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Bind GameOS usage context to a Persona.

fields:
- binding_id
- game_user_id
- persona_id
- binding_status
- usage_context
- primary_persona_flag
- updated_at



--------------------------------------------------------------------------------
FILE: 030.model/040.persona/0300400005_GAME_PERSONA_GROWTH_REF_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA GROWTH REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Track Game-originated growth synchronization state.

fields:
- game_user_id
- persona_id
- last_growth_request_id
- last_growth_event_type
- last_growth_sent_at
- last_growth_result_status
- last_growth_applied_at



--------------------------------------------------------------------------------
FILE: 030.model/040.persona/0300400006_GAME_PERSONA_TRUST_REF_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA TRUST REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona trust-related values inside GameOS.

fields:
- game_user_id
- persona_id
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- last_evaluated_at

usage_rule:
Permission and trust are separate.
Trust gates exposure strength in GameOS.



--------------------------------------------------------------------------------
FILE: 030.model/050.integration/0300500002_GAME_EVENT_OUTBOX_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME EVENT OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Store outbound integration events emitted from GameOS.

fields:
- outbox_event_id
- event_type
- aggregate_type
- aggregate_id
- payload
- dispatch_status
- retry_count
- correlation_id
- causation_id
- created_at



--------------------------------------------------------------------------------
FILE: 030.model/050.integration/0300500003_GAME_PERSONA_GROWTH_REQUEST_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA GROWTH REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Represent a Game-originated request to Persona growth processing.

fields:
- growth_request_id
- game_user_id
- persona_id
- growth_event_type
- growth_context_projection
- request_status
- correlation_id
- created_at



--------------------------------------------------------------------------------
FILE: 030.model/050.integration/0300500004_GAME_SYNC_EVENT_INBOX_MODEL.md
--------------------------------------------------------------------------------

# ============================================================
# GAME SYNC EVENT INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Store inbound sync results received by GameOS from PersonaOS.

fields:
- inbox_event_id
- sync_event_type
- source_system
- payload
- consume_status
- correlation_id
- created_at
- consumed_at



--------------------------------------------------------------------------------
FILE: 040.runtime/060.integration/0400008_GAME_SYNC_CONSUMER_RUNTIME.md
--------------------------------------------------------------------------------

# ============================================================
# GAME SYNC CONSUMER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Consume inbound Persona sync results inside GameOS.



--------------------------------------------------------------------------------
FILE: 040.runtime/060.integration/0400009_GAME_EVENT_OUTBOX_RUNTIME.md
--------------------------------------------------------------------------------

# ============================================================
# GAME EVENT OUTBOX RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Manage dispatch lifecycle of GameOS outbound Persona-related outbox events.



--------------------------------------------------------------------------------
FILE: 040.runtime/060.integration/0400010_GAME_TO_PERSONA_GROWTH_REQUEST_RUNTIME.md
--------------------------------------------------------------------------------

# ============================================================
# GAME TO PERSONA GROWTH REQUEST RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Transform Game growth triggers into Persona growth requests.



--------------------------------------------------------------------------------
FILE: 040.runtime/060.integration/0400011_PERSONA_USAGE_PERMISSION_CONSUME_RUNTIME.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA USAGE PERMISSION CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Consume Persona usage permission related results inside GameOS.



--------------------------------------------------------------------------------
FILE: 040.runtime/060.integration/0400012_PERSONA_TRUST_SYNC_CONSUME_RUNTIME.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA TRUST SYNC CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Consume Persona trust-related sync results inside GameOS.



--------------------------------------------------------------------------------
FILE: 050.flow/040.persona/0500001_PERSONA_GAME_BINDING_FLOW.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA GAME BINDING FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how GameOS binds a Persona to game usage context.



--------------------------------------------------------------------------------
FILE: 050.flow/040.persona/0500002_PERSONA_GAME_ACCESS_SYNC_FLOW.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA GAME ACCESS SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how Persona access, license, and release state are synchronized into GameOS.



--------------------------------------------------------------------------------
FILE: 050.flow/060.integration/0500003_GAME_TO_PERSONA_GROWTH_REQUEST_FLOW.md
--------------------------------------------------------------------------------

# ============================================================
# GAME TO PERSONA GROWTH REQUEST FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Game-originated Persona growth requests.



--------------------------------------------------------------------------------
FILE: 050.flow/060.integration/0500004_PERSONA_TO_GAME_USAGE_RESULT_SYNC_FLOW.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA TO GAME USAGE RESULT SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Persona usage-related sync results into GameOS.



--------------------------------------------------------------------------------
FILE: 050.flow/060.integration/0500005_PERSONA_TO_GAME_TRUST_SYNC_FLOW.md
--------------------------------------------------------------------------------

# ============================================================
# PERSONA TO GAME TRUST SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Persona trust-related sync results into GameOS.



--------------------------------------------------------------------------------
FILE: 070.operations/060.integration/0700008_GAME_SYNC_CONSUME_OPERATION.md
--------------------------------------------------------------------------------

# ============================================================
# GAME SYNC CONSUME OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational procedure for consuming Persona sync results inside GameOS.



--------------------------------------------------------------------------------
FILE: 070.operations/060.integration/0700009_GAME_OUTBOX_DISPATCH_OPERATION.md
--------------------------------------------------------------------------------

# ============================================================
# GAME OUTBOX DISPATCH OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational procedure for dispatching GameOS outbound Persona sync events.



--------------------------------------------------------------------------------
FILE: 070.operations/060.integration/0700010_GAME_GROWTH_SYNC_RETRY_OPERATION.md
--------------------------------------------------------------------------------

# ============================================================
# GAME GROWTH SYNC RETRY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define retry-safe handling for failed Game-to-Persona growth synchronization.



--------------------------------------------------------------------------------
FILE: 080.policy/040.integration/0800007_GAME_SYNC_CONSUMER_POLICY.md
--------------------------------------------------------------------------------

# ============================================================
# GAME SYNC CONSUMER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for consuming Persona sync results inside GameOS.



--------------------------------------------------------------------------------
FILE: 080.policy/040.integration/0800008_GAME_PERSONA_USAGE_POLICY.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA USAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Persona usage inside GameOS.

rule:
Permission is required but not sufficient.
Trust gating must also be respected.



--------------------------------------------------------------------------------
FILE: 080.policy/040.integration/0800009_GAME_OUTBOX_POLICY.md
--------------------------------------------------------------------------------

# ============================================================
# GAME OUTBOX POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS outbound Persona-related event dispatch.



--------------------------------------------------------------------------------
FILE: 080.policy/040.integration/0800010_GAME_TO_PERSONA_GROWTH_POLICY.md
--------------------------------------------------------------------------------

# ============================================================
# GAME TO PERSONA GROWTH POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Game-originated Persona growth synchronization.



--------------------------------------------------------------------------------
FILE: 080.policy/040.integration/0800011_GAME_PERSONA_TRUST_USAGE_POLICY.md
--------------------------------------------------------------------------------

# ============================================================
# GAME PERSONA TRUST USAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how trust-related Persona values gate Persona exposure inside GameOS.

examples:
- low trust may allow limited NPC presentation
- medium trust may allow side-role interaction
- high trust may allow broader assistant or companion presentation



--------------------------------------------------------------------------------
FILE: 10.constitution/10_INDEX.md
--------------------------------------------------------------------------------

11_GAME_OS_CONSTITUTION.md
12_GAME_OS_SCOPE.md
13_GAME_OS_BOUNDARY.md



--------------------------------------------------------------------------------
FILE: 10.constitution/10_OVERVIEW.md
--------------------------------------------------------------------------------

# ============================================================
# GAME OS
# 10 OVERVIEW
# ============================================================

status: canonical
system_id: 05
layer: constitution

owner: Boss
prepared_by: Zero

GameOS defines the game infrastructure layer
of the Civilization System.

GameOS provides the environment for
games, simulations and interactive worlds.




--------------------------------------------------------------------------------
FILE: 10.constitution/11_GAME_OS_CONSTITUTION.md
--------------------------------------------------------------------------------

GameOS provides infrastructure
for games and simulations.

GameOS must remain deterministic
and simulation-friendly.



--------------------------------------------------------------------------------
FILE: 10.constitution/12_GAME_OS_SCOPE.md
--------------------------------------------------------------------------------

GameOS covers:

game world
game entities
player interaction
simulation systems
game progression



--------------------------------------------------------------------------------
FILE: 10.constitution/13_GAME_OS_BOUNDARY.md
--------------------------------------------------------------------------------

GameOS is separate from:

LifeOS
BusinessOS

GameOS may integrate with PersonaOS.



--------------------------------------------------------------------------------
FILE: 20.architecture/20_INDEX.md
--------------------------------------------------------------------------------

21_GAME_OS_ARCHITECTURE.md
22_GAME_OS_COMPONENT_MODEL.md
23_GAME_OS_DEPENDENCY_RULE.md
24_GAME_OS_DATA_FLOW.md
25_GAME_OS_INTEGRATION_MODEL.md



--------------------------------------------------------------------------------
FILE: 20.architecture/20_OVERVIEW.md
--------------------------------------------------------------------------------

GameOS architecture layer.



--------------------------------------------------------------------------------
FILE: 20.architecture/21_GAME_OS_ARCHITECTURE.md
--------------------------------------------------------------------------------

GameOS architecture defines
the simulation runtime and world model.



--------------------------------------------------------------------------------
FILE: 20.architecture/22_GAME_OS_COMPONENT_MODEL.md
--------------------------------------------------------------------------------

Core components:

world
entity
simulation
player
events



--------------------------------------------------------------------------------
FILE: 20.architecture/23_GAME_OS_DEPENDENCY_RULE.md
--------------------------------------------------------------------------------

Game modules depend on
GameOS runtime services.



--------------------------------------------------------------------------------
FILE: 20.architecture/24_GAME_OS_DATA_FLOW.md
--------------------------------------------------------------------------------

player input
→ simulation
→ world update
→ result



--------------------------------------------------------------------------------
FILE: 20.architecture/25_GAME_OS_INTEGRATION_MODEL.md
--------------------------------------------------------------------------------

GameOS may integrate with

PersonaOS
Application layer



--------------------------------------------------------------------------------
FILE: 30.runtime/30_INDEX.md
--------------------------------------------------------------------------------

31_GAME_OS_RUNTIME_MODEL.md
32_GAME_OS_EVENT_MODEL.md
33_GAME_OS_STATE_MACHINE.md
34_GAME_OS_WORKFLOW_MODEL.md
35_GAME_OS_SCHEDULER_MODEL.md



--------------------------------------------------------------------------------
FILE: 30.runtime/30_OVERVIEW.md
--------------------------------------------------------------------------------

GameOS runtime execution layer.



--------------------------------------------------------------------------------
FILE: 30.runtime/31_GAME_OS_RUNTIME_MODEL.md
--------------------------------------------------------------------------------

Runtime manages
game loops and simulation steps.



--------------------------------------------------------------------------------
FILE: 30.runtime/32_GAME_OS_EVENT_MODEL.md
--------------------------------------------------------------------------------

Game events include

player actions
system triggers
world updates



--------------------------------------------------------------------------------
FILE: 30.runtime/33_GAME_OS_STATE_MACHINE.md
--------------------------------------------------------------------------------

Example states:

idle
running
paused
finished



--------------------------------------------------------------------------------
FILE: 30.runtime/34_GAME_OS_WORKFLOW_MODEL.md
--------------------------------------------------------------------------------

Defines structured sequences
of gameplay events.



--------------------------------------------------------------------------------
FILE: 30.runtime/35_GAME_OS_SCHEDULER_MODEL.md
--------------------------------------------------------------------------------

Scheduler controls

game ticks
timed events



--------------------------------------------------------------------------------
FILE: 40.implementation/40_INDEX.md
--------------------------------------------------------------------------------

41_GAME_OS_MODULE_STRUCTURE.md
42_GAME_OS_API_INTERFACE_SPEC.md
43_GAME_OS_DATA_MODEL_MAPPING.md
44_GAME_OS_ANDROID_STRUCTURE.md
45_GAME_OS_DATABASE_MAPPING.md



--------------------------------------------------------------------------------
FILE: 40.implementation/40_OVERVIEW.md
--------------------------------------------------------------------------------

GameOS implementation layer.



--------------------------------------------------------------------------------
FILE: 40.implementation/41_GAME_OS_MODULE_STRUCTURE.md
--------------------------------------------------------------------------------

Modules:

engine
simulation
player
storage



--------------------------------------------------------------------------------
FILE: 40.implementation/42_GAME_OS_API_INTERFACE_SPEC.md
--------------------------------------------------------------------------------

Defines API interfaces
for game services.



--------------------------------------------------------------------------------
FILE: 40.implementation/43_GAME_OS_DATA_MODEL_MAPPING.md
--------------------------------------------------------------------------------

Maps simulation models
to runtime structures.



--------------------------------------------------------------------------------
FILE: 40.implementation/44_GAME_OS_ANDROID_STRUCTURE.md
--------------------------------------------------------------------------------

Defines Android-side
game module structure.



--------------------------------------------------------------------------------
FILE: 40.implementation/45_GAME_OS_DATABASE_MAPPING.md
--------------------------------------------------------------------------------

Defines saved game data mapping.



--------------------------------------------------------------------------------
FILE: 50.operations/50_INDEX.md
--------------------------------------------------------------------------------

51_GAME_OS_DEPLOYMENT_MODEL.md
52_GAME_OS_BACKUP_RULE.md
53_GAME_OS_MONITORING_MODEL.md
54_GAME_OS_FAILURE_HANDLING.md
55_GAME_OS_LOGGING_MODEL.md



--------------------------------------------------------------------------------
FILE: 50.operations/50_OVERVIEW.md
--------------------------------------------------------------------------------

GameOS operational layer.



--------------------------------------------------------------------------------
FILE: 50.operations/51_GAME_OS_DEPLOYMENT_MODEL.md
--------------------------------------------------------------------------------

Defines deployment procedures
for GameOS services.



--------------------------------------------------------------------------------
FILE: 50.operations/52_GAME_OS_BACKUP_RULE.md
--------------------------------------------------------------------------------

Defines backup rules
for saved game data.



--------------------------------------------------------------------------------
FILE: 50.operations/53_GAME_OS_MONITORING_MODEL.md
--------------------------------------------------------------------------------

Defines monitoring strategy
for game runtime.



--------------------------------------------------------------------------------
FILE: 50.operations/54_GAME_OS_FAILURE_HANDLING.md
--------------------------------------------------------------------------------

Defines failure handling
for game services.



--------------------------------------------------------------------------------
FILE: 50.operations/55_GAME_OS_LOGGING_MODEL.md
--------------------------------------------------------------------------------

Defines logging structure
for GameOS runtime.



--------------------------------------------------------------------------------
FILE: 60.development/60_INDEX.md
--------------------------------------------------------------------------------

61_GAME_OS_CODING_STANDARD.md
62_GAME_OS_MODULE_RULE.md
63_GAME_OS_TEST_STRATEGY.md
64_GAME_OS_VERSION_RULE.md
65_GAME_OS_CI_RULE.md



--------------------------------------------------------------------------------
FILE: 60.development/60_OVERVIEW.md
--------------------------------------------------------------------------------

GameOS development guidelines.



--------------------------------------------------------------------------------
FILE: 60.development/61_GAME_OS_CODING_STANDARD.md
--------------------------------------------------------------------------------

Defines coding standards
for GameOS development.



--------------------------------------------------------------------------------
FILE: 60.development/62_GAME_OS_MODULE_RULE.md
--------------------------------------------------------------------------------

Defines module rules
for GameOS components.



--------------------------------------------------------------------------------
FILE: 60.development/63_GAME_OS_TEST_STRATEGY.md
--------------------------------------------------------------------------------

Defines testing strategy
for GameOS.



--------------------------------------------------------------------------------
FILE: 60.development/64_GAME_OS_VERSION_RULE.md
--------------------------------------------------------------------------------

Defines versioning rules
for GameOS modules.



--------------------------------------------------------------------------------
FILE: 60.development/65_GAME_OS_CI_RULE.md
--------------------------------------------------------------------------------

Defines CI rules
for GameOS repositories.



--------------------------------------------------------------------------------
FILE: 90.meta/90_INDEX.md
--------------------------------------------------------------------------------

91_GAME_OS_CHANGELOG.md
92_GAME_OS_DEPENDENCY_MAP.md
93_GAME_OS_DOCUMENT_MAP.md



--------------------------------------------------------------------------------
FILE: 90.meta/90_OVERVIEW.md
--------------------------------------------------------------------------------

GameOS metadata layer.



--------------------------------------------------------------------------------
FILE: 90.meta/91_GAME_OS_CHANGELOG.md
--------------------------------------------------------------------------------

Records structural changes
in GameOS design.



--------------------------------------------------------------------------------
FILE: 90.meta/92_GAME_OS_DEPENDENCY_MAP.md
--------------------------------------------------------------------------------

Describes dependency relationships
inside GameOS.



--------------------------------------------------------------------------------
FILE: 90.meta/93_GAME_OS_DOCUMENT_MAP.md
--------------------------------------------------------------------------------

Catalog of GameOS design documents.

