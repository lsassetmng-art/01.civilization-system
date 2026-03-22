# ============================================================
# CIVILIZATION MODEL EXECUTION BINDING
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0036
scope: civilization.model.execution-binding
owner: Boss
prepared_by: Zero


# PURPOSE

Define how models bind to executable runtime behavior.


# RULE

models do not execute directly

models bind to:

entity instances
state machines
event handlers
relation propagation
metric derivation


# RESULT

The model layer remains conceptual,
but fully executable through runtime binding.

