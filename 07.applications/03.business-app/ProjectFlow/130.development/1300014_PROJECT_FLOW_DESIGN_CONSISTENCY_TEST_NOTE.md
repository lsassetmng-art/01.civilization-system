# ============================================================
# PROJECT FLOW DESIGN CONSISTENCY TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines review-style test points for design consistency.

consistency_test_points:
- no feature contradicts shared BusinessOS integration boundary
- no feature contradicts smartphone and pc parity
- no feature contradicts read-only entitlement rules
- proposal and confirmed schedule states remain distinct
- draft and final external-use report states remain distinct
- timeline/gantt/dashboard remain read-model oriented
- automation stays lightweight and does not silently mutate business truth
- form intake remains simplified entry and not duplicate source ownership
