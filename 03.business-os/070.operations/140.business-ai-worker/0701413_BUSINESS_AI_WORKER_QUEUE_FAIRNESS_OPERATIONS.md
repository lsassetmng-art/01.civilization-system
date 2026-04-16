# ============================================================
# BUSINESS AI WORKER QUEUE FAIRNESS OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines queue fairness review operations.

review_targets:
- excessive delay by rank
- reservation starvation
- emergency-priority overuse
- company-specific imbalance

rule:
Priority order may exist,
but starvation must still be monitored and explainable.
