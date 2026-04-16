# ============================================================
# PROJECT FLOW IMPLEMENTATION START REVIEW AND APPROVAL FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the review and approval flow
for implementation-start deliverables.

flow:
1. work package produces planning deliverables
2. deliverable review is executed
3. review result is recorded
4. approval decision is recorded if deliverable is usable
5. next allowed action is chosen from approved scope
6. blocked or partial areas remain visible for follow-up

important_rules:
- review result and approval result must remain distinct
- partial approval must not be mistaken for full package completion
- blocked scope must remain explicit
