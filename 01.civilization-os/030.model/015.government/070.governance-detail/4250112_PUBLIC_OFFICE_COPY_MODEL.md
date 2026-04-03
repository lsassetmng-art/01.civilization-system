# ============================================================
# PUBLIC OFFICE COPY MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: public-office-copy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COPY THEMES
# ============================================================

copy_themes:
- human_only_office
- non_human_block
- support_execution_allowed
- nation_rule_override
- office_specific_rule
- entry_route_required
- authority_scope_preview


# ============================================================
# 2. FINAL RULE
# ============================================================

Copy must explain
why an actor can hold an office,
cannot hold an office,
or may only support execution.
