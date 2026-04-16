# ============================================================
# POCKET SECRETARY INTEGRATION FAILURE RULE
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

rule:
Integration failure must degrade safely.

requirements:
- optional external failure must not destroy local continuity
- critical external ambiguity must fail closed
- retry must be bounded and visible where applicable
- user intent must be preservable where safe

prohibitions:
- masking integration failure with fictional success
- treating timeout as confirmation
- overwriting local intent silently after failed integration
