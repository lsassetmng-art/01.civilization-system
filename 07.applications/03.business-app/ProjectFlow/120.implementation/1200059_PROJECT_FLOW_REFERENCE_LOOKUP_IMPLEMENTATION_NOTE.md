# ============================================================
# PROJECT FLOW REFERENCE LOOKUP IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for fast document lookup.

lookup_rules:
- start from the question-to-reference index for common questions
- prefer concise summary/meta docs before opening deep detail docs
- escalate to architecture/model/integration docs when summary docs are insufficient
- escalate to uploaded external canonicals only when local ProjectFlow docs defer ownership upward
