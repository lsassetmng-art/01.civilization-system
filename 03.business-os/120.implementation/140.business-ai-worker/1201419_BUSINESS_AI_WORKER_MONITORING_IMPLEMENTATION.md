# ============================================================
# BUSINESS AI WORKER MONITORING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines monitoring implementation.

monitoring_targets:
- queue pressure
- slot anomalies
- failed grants
- failed handoffs
- stale active lending
- high-risk advisory without valid consent
