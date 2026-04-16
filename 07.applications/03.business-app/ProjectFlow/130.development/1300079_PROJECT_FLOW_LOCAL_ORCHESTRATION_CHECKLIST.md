# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- final screen responsibility remains ProjectFlow-local
- shared components used by a screen are listed explicitly
- local sections are listed explicitly
- adapter and orchestration responsibilities are not conflated
- local action routing remains explicit
