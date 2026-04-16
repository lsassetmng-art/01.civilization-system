# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for ProjectFlow-side adapters around official shared components.

implementation_rules:
- create one adapter per concern area where needed
- keep adapter naming explicit and ProjectFlow-scoped
- keep shared input contract and ProjectFlow local model distinct
- avoid leaking ProjectFlow-only business meaning into shared contracts
- record wrapper usage when UI composition needs extra local orchestration
