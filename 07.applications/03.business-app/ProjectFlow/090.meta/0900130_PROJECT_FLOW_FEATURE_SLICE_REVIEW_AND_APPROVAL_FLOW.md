# ============================================================
# PROJECT FLOW FEATURE SLICE REVIEW AND APPROVAL FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the review and approval flow for feature slices.

flow:
1. feature-slice planning deliverables are produced
2. slice review is executed
3. review result is recorded
4. approval decision is recorded if usable
5. next allowed slices are chosen from approved scope
6. blocked or partial areas remain explicit

important_rules:
- review result and approval result remain distinct
- partial approval does not unlock full downstream scope
- blocked boundary-sensitive scope remains visible
