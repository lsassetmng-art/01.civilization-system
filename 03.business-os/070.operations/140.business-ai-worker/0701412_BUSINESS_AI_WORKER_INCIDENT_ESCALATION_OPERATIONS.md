# ============================================================
# BUSINESS AI WORKER INCIDENT ESCALATION OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines incident escalation operations.

incident_examples:
- queue starvation
- locked capacity slots
- high-risk advisory without consent
- failed publication handoff
- night maintenance abnormal termination
- repeated review bottleneck

rule:
Critical incidents must escalate to human operators.
