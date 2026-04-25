# ============================================================
# VISUAL RUNTIME BACKGROUND COMPOSE RULE
# ============================================================

status: canonical
scope: persona.visual.runtime.background.compose.rule
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical background compose rule
used by Persona Visual Runtime.

This rule extends current PocketSecretary-style separation:

Root
 ├── BackgroundLayer
 ├── CharacterLayer
 └── UILayer

while introducing slot/profile-based placement.


# INPUTS

Visual Runtime combines:

- background placement slot
- Persona placement profile
- view delta
- approved visual state and compose rules


# FINAL POSITION FORMULA

finalCenter =
    background_slot_position
  + persona_offset
  + view_delta


# BACKGROUND RULE

- background remains a separate layer from Persona base visual truth
- background must not be mixed into character manifest as character body parts
- runtime may use only available and permitted backgrounds for the current surface
- background switching does not redefine Persona base visual identity by default


# SURFACE RULE

Runtime must distinguish:

- runtime background
- public profile background
- marketplace background
- snapshot proof background

These surfaces are not identical.


# MARKETPLACE RELATION

Background may be a separately distributed or sold asset.

Visual Runtime may compose Persona against a background
only when that background is available and permitted
for the current user and current surface.


# REVIEW RULE

If a public or release-facing official background is changed,
review may be required.

This is separate from Persona base visual immutability.

Persona base visual remains immutable after release,
but background layer itself is not treated
as Persona base image replacement by default.


# FINAL DEFINITION

Visual Runtime must determine final Persona placement
by combining background placement slots,
Persona placement profile,
and runtime compose rules,
while keeping background separate
from Persona base visual truth.

# EXACT READY RUNTIME REINFORCEMENT

status_extension: author-reviewed-with-runtime-reinforcement
reinforced_at: 20260417_152041
domain: visual

minimum_runtime_requirements:
- define runtime entry condition
- define runtime execution boundary
- define runtime state update points
- define terminal conditions
- define retry or recovery handling where applicable

mandatory_runtime_controls:
- no hidden state mutation
- no silent failure path
- no unaudited terminal action
- explicit timeout or expiry handling where applicable

minimum_runtime_acceptance_targets:
- normal execution path
- blocked or reject path
- timeout or terminal path
- audit evidence path
