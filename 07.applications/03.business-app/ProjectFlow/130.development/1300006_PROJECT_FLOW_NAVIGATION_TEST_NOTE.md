# ============================================================
# PROJECT FLOW NAVIGATION TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines navigation-focused test points.

navigation_test_points:
- dashboard reaches all primary hubs
- project detail reaches task, milestone, issue/risk, time, sync, export, and report
- task detail can return to project detail
- sync failure flow reaches retry path cleanly
- export is reachable from both list and detail context
- report generation is reachable from both dashboard and project detail
- smartphone and PC keep same action availability
- unpaid_read_only keeps actions visible but blocked
