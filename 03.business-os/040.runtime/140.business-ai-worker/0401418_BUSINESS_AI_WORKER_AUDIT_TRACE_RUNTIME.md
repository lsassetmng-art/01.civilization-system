# ============================================================
# BUSINESS AI WORKER AUDIT TRACE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines audit trace runtime.

trace_keys:
- worker_id
- lending_id
- reservation_id
- advisory_session_id
- execution_task_id
- output_handoff_id
- consent_id

rule:
End-to-end runtime traceability is mandatory.
