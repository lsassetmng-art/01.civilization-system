# ============================================================
# LIFE INTERVENTION RUNTIME
# ============================================================

status: canonical-draft
system: life-os
layer: runtime
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines runtime execution responsibilities for intervention selection.

runtime responsibilities:
- load intervention candidates
- apply silence window
- apply urgency and burden ranking
- emit chosen intervention targets

runtime rules:
- no source fact mutation
- no privacy boundary bypass
