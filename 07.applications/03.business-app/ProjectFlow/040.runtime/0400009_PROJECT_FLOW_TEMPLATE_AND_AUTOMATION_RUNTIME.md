# ============================================================
# PROJECT FLOW TEMPLATE AND AUTOMATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_domains:
- form request handling
- automation trigger handling
- template expansion
- schedule proposal generation
- memo/comment update lifecycle

rules:
- form requests may create downstream entities after validation
- automation remains lightweight and rule-based
- schedule proposal must use relative offsets and dependency order
- schedule proposal must remain editable after generation
- business-day rules may adjust suggested dates
