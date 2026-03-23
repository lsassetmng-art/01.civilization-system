# ============================================================
# PERSONA BUSINESS BINDING FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define how BusinessOS binds a Persona to business usage context.

flow_steps:
1 business context identifies Persona need
2 BusinessOS checks access, permission, release, and trust refs
3 binding-eligible Persona candidates are filtered
4 Persona binding result is consumed or selected
5 active binding is reflected into business usage context

binding_examples:
- sales assistant binding
- approval assistant binding
- reporting assistant binding
- support assistant binding

gate_rule:
Binding requires compatible access and sufficient trust.
