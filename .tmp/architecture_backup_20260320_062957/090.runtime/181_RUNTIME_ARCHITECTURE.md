# ============================================================
# RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Runtime core is the controlled execution shell for Civilization.

responsibilities:
- receive valid execution requests
- invoke event pipeline
- coordinate orchestration
- expose controlled runtime services to domains

non_responsibilities:
- no hidden business decision making
- no direct UI mutation
- no direct database mutation outside controlled execution flow

runtime_states:
- idle
- receiving_event
- validating
- dispatching
- executing
- finalizing
- failed

rules:
- all runtime work begins from explicit input event or scheduled event
- invalid runtime transitions must fail closed
- runtime services must remain domain-agnostic where possible

integration_points:
- event_engine
- permission
- data
- notification
- observability

final_rule:
Runtime core exists to execute architecture safely,
not to invent domain behavior.
