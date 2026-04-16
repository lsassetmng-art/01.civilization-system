# ============================================================
# PROJECT FLOW LIGHT AUTOMATION TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- overdue task trigger creates expected notification
- delayed milestone trigger creates expected visibility signal
- sync failed trigger remains visible until acknowledged or resolved
- disabled rules do not fire
- rule conditions limit firing correctly
- automation does not silently mutate core business data
- notification opens correct source detail
- smartphone and pc expose the same rule and notification capability
