# ============================================================
# MBO SQL PHASE 3 REVIEW NOTE
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero
reviewer: Sato

purpose:
Records phase3 SQL fixation status.

fixed_in_this_step:
- updated_at trigger function
- updated_at triggers
- RLS enablement
- role-direction RLS policy draft
- API read views
- reopen and ERP failure queue views

review_focus_for_next_step:
- JWT claim naming and final auth mapping
- RLS split by separate db roles if needed
- service-role bypass strategy
- seed/master data preparation
