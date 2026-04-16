# ============================================================
# BUSINESS AI WORKER OUTPUT HANDOFF RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines output handoff runtime.

handoff_states:
- preparing_output
- handoff_ready
- handoff_completed
- handoff_rejected
- handoff_failed

output_examples:
- listing text
- maintenance report
- bug fix proposal
- test result
- advisory summary
