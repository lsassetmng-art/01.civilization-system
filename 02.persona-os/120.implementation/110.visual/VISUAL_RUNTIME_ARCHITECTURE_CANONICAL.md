# ============================================================
# VISUAL RUNTIME ARCHITECTURE
# ============================================================

status: canonical
system: Civilization
component: visual-runtime

owner: Boss
prepared_by: Zero


PURPOSE

Define the architecture of the shared
visual rendering runtime.


ROLE

visual-runtime is the shared rendering engine for

PocketSecretary
Streaming
Game
Creator


RUNTIME PIPELINE

Scene Request
↓
Manifest Parse
↓
Layer Resolve
↓
Asset Fetch
↓
Bitmap Decode
↓
Layer Compose
↓
Frame Render
↓
Output


MAIN MODULES

api
compose
manifest
render
anim
rig
source
cache
model
error
util


PRINCIPLE

Runtime must remain independent from applications.

Applications host the runtime.
Runtime performs rendering.


# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: visual

minimum_exact_contract:
- define authoritative operation names
- define request-side required identifiers
- define response-side success and reject families
- define validation gates
- define state transition or resolution boundaries
- define persistence touchpoints
- define retry and dead-letter behavior where applicable

minimum_error_families:
- invalid_request
- authority_blocked
- lifecycle_blocked
- conflict_or_duplicate where applicable
- internal_retryable where applicable
- internal_terminal

minimum_acceptance_targets:
- success path
- reject or blocked path
- audit persistence proof
- retry-safe path where applicable

implementation_ready_note:
This reinforcement does not replace the authored content above.
It marks the minimum exact-ready items that must be made explicit
before implementation is considered complete for this document.
