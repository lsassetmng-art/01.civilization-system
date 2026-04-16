# ============================================================
# PROJECT FLOW TIMELINE GANTT WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- timeline
- gantt
- schedule_proposal_preview

timeline_smartphone_layout:
1. header
2. project and range selectors
3. filter row
4. vertical timeline list
5. item tap -> detail drilldown

timeline_pc_layout:
1. top control row
2. left item list
3. right timeline panel

gantt_smartphone_layout:
1. header
2. project selector
3. compact gantt strip area
4. selected item detail area

gantt_pc_layout:
1. top control row
2. left hierarchy table
3. right gantt bar panel
4. bottom detail strip optional

proposal_preview_layout:
- source summary
- gantt or timeline preview
- editable adjustment area
- confirm/discard actions
