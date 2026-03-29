# ============================================================
# GAME BUILDER PREVIEW STUDIO ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Preview Studio architecture of Game Builder.

This architecture defines the Builder-side sandbox preview system
used to simulate runtime behavior safely before export and submission.

It covers:
- preview session model
- preview basis selection
- sandbox execution
- mock mode
- preview outputs
- preview reset/discard
- family-specific preview specialization
- production boundary enforcement


# ============================================================
# 1. ROLE OF PREVIEW STUDIO
# ============================================================

Preview Studio is the Builder subsystem responsible for
runtime-backed simulation of authored game behavior.

Preview Studio must let creators:
- inspect flow behavior
- inspect asset use
- inspect runtime rule outcomes
- inspect candidate outputs
- inspect route/stage/quest/turn behavior
without touching production truth.

Preview Studio is not:
- production execution
- production sync
- production commerce
- production entitlement mutation
- Persona truth editor
- publish approval surface


# ============================================================
# 2. PREVIEW SESSION AS PRIMARY UNIT
# ============================================================

Preview Studio must use preview session
as the primary simulation unit.

Each preview session must have:

- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- mock_mode_summary
- session_status
- created_at
- expires_at where applicable

session_status examples:
- created
- active
- closed
- failed
- expired
- discarded

A preview session must always be non-authoritative.


# ============================================================
# 3. PREVIEW BASIS MODEL
# ============================================================

Preview Studio must support explicit preview basis selection.

Supported bases:

- working_state_preview
- saved_revision_preview

working_state_preview:
- uses in-editor latest mutable state
- faster feedback
- may be structurally unstable
- useful for rapid iteration

saved_revision_preview:
- uses official saved revision
- more stable
- closer to export candidate behavior
- better for serious validation-like checking

The active preview basis must always be visible.


# ============================================================
# 4. PREVIEW MODE MODEL
# ============================================================

Preview Studio must support runtime-aware preview modes.

Minimum supported preview modes:

- block_scope_preview
- flow_scope_preview
- full_project_preview

Family-specific examples:

VN / Dating:
- scene_preview
- route_preview
- ending_preview
- full_story_preview

RPG:
- area_preview
- quest_preview
- battle_preview
- flow_preview

Puzzle:
- stage_preview
- clear_fail_preview
- score_preview

Strategy:
- map_preview
- turn_preview
- unit_action_preview
- scenario_preview

Preview mode must remain explicit and visible.


# ============================================================
# 5. SANDBOX EXECUTION RULE
# ============================================================

Preview Studio must execute only through sandbox mode.

Sandbox execution must:
- isolate preview state
- prevent production mutation
- allow mock-capable runtime simulation
- support discard/reset
- support preview-only candidate visibility

Sandbox execution must not:
- finalize ranking truth
- finalize achievement truth
- finalize commerce truth
- finalize entitlement truth
- finalize Persona truth
- finalize sync adjudication truth

Sandbox is mandatory.


# ============================================================
# 6. MOCK MODE MODEL
# ============================================================

Preview Studio must support explicit mock mode.

Mock mode may simulate:

- ranking visibility
- achievement visibility
- reward visibility
- purchase UI flow
- entitlement-dependent branch visibility
- Persona projection usage

Mock mode must always be labeled as mock.

Mock mode must not silently hit production-final paths.

Each preview session should expose:
- mock_mode_enabled
- enabled_mock_domains
- prohibited_real_domains


# ============================================================
# 7. PREVIEW OUTPUT MODEL
# ============================================================

Preview Studio may produce preview outputs.

Preview outputs may include:

- route outcome preview
- ending outcome preview
- quest completion preview
- reward candidate preview
- score candidate preview
- ranking candidate preview
- achievement candidate preview
- save candidate preview
- replay candidate preview
- telemetry candidate preview

All preview outputs must be explicitly classified as:
- preview_only
- non_authoritative
- not_submitted

A preview output must never be mistaken for final truth.


# ============================================================
# 8. RESET / DISCARD MODEL
# ============================================================

Preview Studio must support explicit reset and discard.

Minimum actions:

- reset_preview_state
- restart_preview_session
- discard_preview_session

reset_preview_state:
- resets runtime-local preview state
- preserves session identity where appropriate

restart_preview_session:
- starts fresh simulation from same basis

discard_preview_session:
- destroys preview-local state
- does not mutate production truth

Discard must be safe and cheap.


# ============================================================
# 9. STATE VISIBILITY IN PREVIEW
# ============================================================

Preview Studio must visibly expose enough state
for creators to understand what is happening.

Minimum visible state categories:

- preview basis
- preview mode
- session status
- current runtime location
- candidate outputs
- mock mode flags
- sandbox status
- discard/reset availability

The user must always know:
- what is simulated
- what is not real
- what basis is being used


# ============================================================
# 10. FAMILY-SPECIFIC SPECIALIZATION
# ============================================================

Preview Studio shell may be shared,
but center preview surface may specialize by runtime family.

VN / Dating:
- dialogue advance
- choice selection
- route state view
- affection/relationship preview view
- ending qualification view

RPG:
- area transition
- npc interaction preview
- quest progress view
- battle preset simulation
- reward candidate view

Puzzle:
- stage state view
- clear/fail state view
- score progression view
- retry behavior view

Strategy:
- map state view
- faction state view
- turn order view
- unit action view
- resource/building progression view
- victory/defeat evaluation view

Specialization must remain within shared sandbox rules.


# ============================================================
# 11. ASSET RELATION
# ============================================================

Preview Studio must consume:
- project-bound assets
- template fallback assets where applicable
- approved asset variants
- approved Persona projections where applicable

Preview must make clear when asset basis is:
- working-state asset
- saved asset
- template fallback
- mock placeholder

Preview must not silently hide unresolved required asset problems
if they materially affect simulation.


# ============================================================
# 12. VALIDATION RELATION
# ============================================================

Preview Studio does not replace Validation Center,
but it must cooperate with validation.

Preview Studio may surface:
- unresolved block warnings
- missing asset warnings
- route/stage/map continuity warnings
- mock fallback notices

Preview Studio should not pretend that
a successful preview guarantees export validity.

Validation remains separate and authoritative
for export/publish gating.


# ============================================================
# 13. SAVE / REVISION RELATION
# ============================================================

Preview Studio must respect save architecture.

Preview must clearly indicate whether it is based on:
- unsaved working state
or
- official saved revision

Preview Studio must not silently convert:
- working state into official save
- preview outputs into save continuity truth

Preview is simulation only.


# ============================================================
# 14. PERSONA BOUNDARY
# ============================================================

Preview Studio may consume approved Persona projections only.

Allowed:
- cast presentation preview
- dialogue tone preview
- reaction style preview
- approved cast reference preview

Prohibited:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation

Preview Studio is not a Persona runtime authority surface.


# ============================================================
# 15. COMMERCE / ENTITLEMENT BOUNDARY
# ============================================================

Preview Studio may simulate:
- locked/unlocked UI paths
- entitlement-dependent content visibility
- store/purchase display flow

Preview Studio may not finalize:
- purchase truth
- revenue truth
- entitlement issuance
- install/download truth

All such behaviors must remain mocked or sandboxed.


# ============================================================
# 16. COLLABORATION RELATION
# ============================================================

Preview Studio may be used by:
- owner
- editor
- reviewer
- publisher
according to policy

Preview access must remain role-aware.

A reviewer may need preview without edit rights.
A publisher may need preview without content mutation rights.

Preview Studio must not require unrestricted edit access
just to inspect preview behavior.


# ============================================================
# 17. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- preview session create/open/close
- working state preview
- saved revision preview
- basic sandbox labeling

Priority 2:
- runtime-family-specific preview surfaces
- mock mode visibility
- preview candidate visibility

Priority 3:
- reset/restart controls
- richer preview state inspection
- preview diagnostics overlays

This is a valid staged implementation path.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

Preview Studio is the Builder subsystem
for runtime-backed sandbox simulation.

Core summary:

- preview session is the primary simulation unit
- preview basis must be explicit
- preview mode must be explicit
- sandbox execution is mandatory
- mock mode must be visible
- preview outputs are preview-only
- discard/reset must be safe
- production truth boundaries must remain intact
