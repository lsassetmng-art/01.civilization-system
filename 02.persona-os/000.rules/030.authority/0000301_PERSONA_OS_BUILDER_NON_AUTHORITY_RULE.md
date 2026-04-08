# ============================================================
# PERSONA OS BUILDER NON-AUTHORITY RULE
# ============================================================

status: canonical
layer: rules
domain: authority
system: persona-os
owner: Boss
prepared_by: Zero

rule:
Builder is an authoring subsystem only.

constraint:
Builder may create and edit draft state,
but may not become final truth authority.
