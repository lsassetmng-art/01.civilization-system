# ============================================================
# PERSONA OS ROOT FILE RULE
# ============================================================

status: canonical
layer: rules
domain: binding
system: persona-os
owner: Boss
prepared_by: Zero

rule:
Only formal integrated outputs may remain at root.

allowed_examples:
000000_PERSONA_OS_CANONICAL_FULL.md

must_not_remain_at_root:
review outputs
migration notes
classification sheets
temporary diagnostics
dump outputs

preferred_destinations:
920.meta
999.archive/999.dump
