# ============================================================
# PERSONA OS FOUNDATION REFLECTION TARGETS OVERVIEW
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Summarizes the completed first foundation-reflection target set
for PersonaOS internal execution layers.

foundation_targets_completed:
- VisualRuntime

target_role:
- VisualRuntime = PersonaOS foundation-side visual execution layer

shared_rule:
Foundation targets may consume canonical inputs,
resolve execution plans, execute runtime behavior,
cache execution artifacts, and retain diagnostics/support records,
but they must not silently replace PersonaOS canonical identity,
state, growth, snapshot, governance, security,
committed mutation truth, or canonical visual truth.

shared_stage_rule:
- input accepted is not canonical commit
- visual input resolved is not canonical truth
- render executed is not authoritative truth
- output displayed is not authoritative truth
- diagnostics logged is not authoritative truth
