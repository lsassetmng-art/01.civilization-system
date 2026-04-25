# ============================================================
# PERSONA VISUAL COMPOSE RUNTIME
# ============================================================

status: canonical
scope: persona.visual.compose.runtime
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official compose runtime
used by Persona Visual Runtime.


# COMPOSE INPUTS

Compose runtime may combine:

- base visual
- expression layer
- animation overlay
- background layer
- scene overlay
- pose layer


# PIPELINE

base visual
-> visual state decision
-> expression selection
-> animation overlay
-> background selection
-> compose
-> runtime surface


# RULE

Compose runtime must only use approved assets and profiles.

Compose runtime must not redefine released visual identity.


# FINAL DEFINITION

Compose runtime is the canonical runtime assembly pipeline
for final visual rendering surface generation.
