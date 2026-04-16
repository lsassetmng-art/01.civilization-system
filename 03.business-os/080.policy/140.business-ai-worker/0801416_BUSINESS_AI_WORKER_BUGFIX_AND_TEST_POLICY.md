# ============================================================
# BUSINESS AI WORKER BUGFIX AND TEST POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy for bug-fix and test work.

rules:
- AI workers may assist with analysis, fix proposals, and testing
- direct production change without approved path is prohibited unless explicitly authorized
- test and patch outputs must remain reviewable
