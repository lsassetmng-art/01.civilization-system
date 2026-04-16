# ============================================================
# SPREADSHEET EXPORT FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens export action from a list or detail screen
2. user selects export format and scope
3. user optionally adjusts columns and masking options
4. system validates permission and exportability
5. export snapshot is created
6. file is generated as xlsx or csv
7. export history is recorded
8. user downloads the generated file
