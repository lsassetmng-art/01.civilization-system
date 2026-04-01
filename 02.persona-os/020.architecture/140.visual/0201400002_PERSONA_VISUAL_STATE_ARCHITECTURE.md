# ============================================================
# PERSONA VISUAL STATE ARCHITECTURE
# ============================================================

status: canonical
scope: persona.visual.state.architecture
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official visual state architecture
used by Persona Visual Runtime.


# VISUAL STATE DEFINITION

Visual state is the runtime-facing display state
used to determine how a Persona is shown.

Visual state is not identical to internal Persona emotion truth.


# VISUAL STATE EXAMPLES

- neutral
- idle
- listening
- speaking
- smiling
- laughing
- angry
- sad
- crying
- embarrassed
- surprised
- thinking
- tired
- sleeping


# CORE RULE

Visual state is a display-layer state.

It may be influenced by:

- emotion
- behavior tendency
- communication mode
- role mode
- safety or exposure rules

But it must not be treated as direct Persona truth.


# FINAL DEFINITION

Visual state is the official runtime display state
used by Visual Runtime,
separate from internal Persona truth.
