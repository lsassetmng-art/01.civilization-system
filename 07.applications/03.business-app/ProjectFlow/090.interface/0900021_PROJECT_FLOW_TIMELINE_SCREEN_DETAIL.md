# ============================================================
# PROJECT FLOW TIMELINE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
timeline

purpose:
Shows project schedule sequence in a compact time-oriented view.

main_components:
- project selector
- date range selector
- milestone timeline
- key task timeline
- dependency markers
- delay emphasis
- filter area

filters:
- project
- milestone only
- key tasks only
- delayed only
- completed include/exclude

actions:
- open related project detail
- open related task detail
- open gantt view
- export timeline view

visual_rules:
- delayed items must be visually prominent
- completed items must remain visible but less dominant
- dependency relation should be understandable at a glance
