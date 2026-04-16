# ============================================================
# RULE RESOLUTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how effective rules are selected.

resolution_order_example:
1. project-specific rule
2. environment/language rule
3. user rule
4. system default rule

runtime_steps:
1. collect candidate rule profiles
2. resolve applicable scopes
3. detect conflicts
4. apply override order
5. build effective rule set
6. record warnings if conflict remains
7. attach effective rules to runtime context

runtime_outputs:
- effective design rule set
- effective development rule set
- effective test rule set
- effective release rule set
- effective Git / review / build rule set
