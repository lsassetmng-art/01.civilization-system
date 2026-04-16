# ============================================================
# TIME ENTRY FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. member selects project or task
2. member enters work date and hours
3. system validates entry
4. entry is saved
5. outbound pending state is set if mapping exists
