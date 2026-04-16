# ============================================================
# BUSINESS AI WORKER TAMPER RESISTANCE SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines tamper-resistance requirements.

protected_records:
- lending records
- reservation records
- disclaimer records
- consent records
- approval and handoff trail

rule:
Protected records must not be silently altered.
