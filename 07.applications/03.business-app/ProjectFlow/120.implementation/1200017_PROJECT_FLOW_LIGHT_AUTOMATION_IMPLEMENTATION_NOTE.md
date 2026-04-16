# ============================================================
# PROJECT FLOW LIGHT AUTOMATION IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- trigger evaluation service
- simple rule evaluator
- notification persistence
- dashboard highlight linkage
- optional external notification request adapter

implementation_rules:
- keep rule language constrained
- keep action set small and explicit
- persist enough execution result for review
- preserve easy disablement of rules
