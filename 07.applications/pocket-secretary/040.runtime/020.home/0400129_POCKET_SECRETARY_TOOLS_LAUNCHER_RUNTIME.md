# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for tools launcher interaction.

runtime areas:
- tools sheet open
- available tool filtering by plan
- recent tool ordering
- launch handoff
- return handling where applicable

rules:
- tool availability must respect plan boundary
- launch handoff does not equal task completion
