# ============================================================
# PROJECT IMPORT FROM ERP FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. sync operator starts ERP import request
2. shared BusinessOS executes intake
3. mapping rules are applied
4. ERP-owned fields are stored
5. local project is created or updated
6. sync logs are recorded
7. result is shown in UI
