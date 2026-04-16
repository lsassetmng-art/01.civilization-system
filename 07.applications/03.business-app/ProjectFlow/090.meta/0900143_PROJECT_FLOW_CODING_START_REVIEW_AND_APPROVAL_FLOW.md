# ============================================================
# PROJECT FLOW CODING START REVIEW AND APPROVAL FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the review and approval flow for coding-start planning packages.

flow:
1. coding-start planning deliverables are produced
2. deliverable review is executed
3. review result is recorded
4. approval decision is recorded if usable
5. next allowed coding units are chosen from approved scope
6. blocked or partial areas remain explicit

important_rules:
- review result and approval result remain distinct
- partial approval does not unlock full downstream scope
- blocked boundary-sensitive scope remains visible
