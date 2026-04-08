# ============================================================
# POCKET SECRETARY CONSULT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for consult-oriented secretary interaction.

runtime areas:
- consult session start
- consult prompt handling
- consult state persistence
- consult summary update
- bounded follow-up guidance

rules:
- consult runtime is guidance-oriented
- consult output must not be treated as approval authority
- consult suggestions and critical action execution remain distinct
