# ============================================================
# MBO STATE LOCK SUMMARY
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

summary:
Formal state transitions and final lock behavior are fixed.

fixed_core_states:
- draft
- active
- in_review
- evaluation_drafted
- finalized
- transferred

fixed_lock_decisions:
- final confirmation creates lock
- lock blocks normal editing of objective, action plan, progress, and evaluation
- reopen is exceptional and governed
- ERP transmission is allowed after lock, not before confirmation

next_recommended_design_step:
- ERP exact outbound payload fixation
- reopen governance role fixation
- alert and reminder rule fixation
