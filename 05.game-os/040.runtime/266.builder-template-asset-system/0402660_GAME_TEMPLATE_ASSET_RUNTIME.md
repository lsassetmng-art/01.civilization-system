# ============================================================
# GAME TEMPLATE ASSET RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for template family, template profile,
template structure rule, required asset set, pixel art,
unit art, building art, asset binding, non-Persona boundary,
and template UX handling.

runtime_scope:
- validate template-asset target
- validate runtime family, ruleset, asset family, boundary, and ux basis
- update template-asset lifecycle state
- preserve template-asset traceability

trigger_conditions:
- template family approved
- template profile approved
- asset profile approved
- binding rule approved
- boundary approved
- template superseded

processing_steps:
1 resolve template-asset target
2 verify runtime family, ruleset, asset family, boundary, and ux basis
3 apply template-asset state transition
4 persist template-asset result
5 preserve audit and template-asset trace

state_transition:
- draft -> approved
- approved -> active
- active -> superseded
- active -> archived

success_condition:
- template-asset lifecycle updated explicitly

failure_condition:
- invalid target
- runtime family, ruleset, asset family, boundary, or ux basis unresolved
- persistence failure
