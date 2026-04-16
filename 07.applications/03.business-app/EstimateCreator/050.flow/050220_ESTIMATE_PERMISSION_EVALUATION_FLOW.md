
# ============================================================
# ESTIMATE PERMISSION EVALUATION FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Permission evaluation flow:

1. session resolved
2. object identified
3. subject identity resolved
4. permission scope resolved
5. readonly context applied
6. premium entitlement checked if needed
7. UI/action gate decided

Permission must be evaluated before sensitive action execution.

