# ============================================================
# PROJECT LIFECYCLE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

project_states:
- draft
- imported
- active
- on_hold
- completed
- archived

rules:
- imported projects start as imported or active by policy
- completed requires milestone closure or approved override
- archived is read-mostly
