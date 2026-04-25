# ============================================================
# AI OPERATION DESK SECURITY OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: security
owner: Boss
prepared_by: Zero

security_position:
- AI workers do not directly read raw aiworker / business tables
- AI workers read cx22073jw AI-worker-only views
- write and execution happen through controlled surfaces only
- review / approval / audit gates remain mandatory for high-risk work

deferred_to_ai_design:
- final accessible data areas
- final view family mapping
- final privileged boundary conditions
