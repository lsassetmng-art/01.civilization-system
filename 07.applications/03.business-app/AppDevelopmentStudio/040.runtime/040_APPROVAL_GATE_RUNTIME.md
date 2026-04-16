# ============================================================
# APPROVAL GATE RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime resolution of review and approval gates.

runtime_steps:
1. inspect artifact type
2. inspect selected review mode
3. inspect selected approval mode
4. inspect safety escalation rules
5. inspect environment and risk
6. decide effective review requirement
7. decide effective approval requirement

effective_outputs:
- review_required or not
- approval_required or not
- escalated or not
