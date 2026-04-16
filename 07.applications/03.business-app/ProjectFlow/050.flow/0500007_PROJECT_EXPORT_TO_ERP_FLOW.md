# ============================================================
# PROJECT EXPORT TO ERP FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. system finds publishable mapped data
2. publication request is created
3. shared BusinessOS executes ERP publication
4. success or failure is returned
5. logs remain reviewable
