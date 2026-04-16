# ============================================================
# MBO ERP PAYLOAD SUMMARY
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

summary:
Exact outbound payload from Mbo to ERP is fixed.

fixed_decisions:
- event name is fixed as mbo.evaluation.finalized.v1
- only finalized and confirmed records may be sent
- payload carries objective snapshot and evaluation snapshot
- resend is explicitly marked and historically traceable
- ERP transmission is based on locked snapshot semantics

next_recommended_design_step:
- alert and reminder rule fixation
- reopen governance role fixation
- reporting and dashboard aggregate rule fixation
