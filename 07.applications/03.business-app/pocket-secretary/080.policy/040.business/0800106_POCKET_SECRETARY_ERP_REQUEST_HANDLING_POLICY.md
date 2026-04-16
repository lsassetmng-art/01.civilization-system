# ============================================================
# POCKET SECRETARY ERP REQUEST HANDLING POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
ERP-facing requests should be treated as bounded, reviewable,
state-explicit workflows.

rules:
- local draft and external submission remain distinct
- transport success is not business confirmation
- failed and conflicted results remain visible
- request handling must respect upstream source-of-truth ownership
