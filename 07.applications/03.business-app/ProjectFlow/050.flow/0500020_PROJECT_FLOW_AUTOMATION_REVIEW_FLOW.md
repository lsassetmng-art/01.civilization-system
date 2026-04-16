# ============================================================
# PROJECT FLOW AUTOMATION REVIEW FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. operator opens automation-related notification history or source view
2. operator checks trigger source and affected entity
3. operator decides whether to act on the notification
4. operator resolves or leaves the underlying business item
5. subsequent trigger behavior follows current rule state and current data state
