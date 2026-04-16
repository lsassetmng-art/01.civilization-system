# ============================================================
# SYNC RETRY FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. operator reviews failed sync
2. system displays error category
3. operator fixes mapping or data if needed
4. retry executes new sync request
5. previous failure remains preserved in history
