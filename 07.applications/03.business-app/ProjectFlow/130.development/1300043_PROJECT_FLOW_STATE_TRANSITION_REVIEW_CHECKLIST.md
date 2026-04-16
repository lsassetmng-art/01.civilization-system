# ============================================================
# PROJECT FLOW STATE TRANSITION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- project/task/milestone states have explicit allowed transitions
- proposal and confirmed states are not conflated
- draft/reviewed/approved states are not conflated
- export completion is not confused with approval
- entitlement state is not confused with business item state
- invalid transitions are clearly identifiable for later implementation
