# ============================================================
# PROJECT FLOW CROSS FEATURE ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines cross-feature alignment after additive feature expansion.

alignment_targets:
- core project/task/milestone operation
- sync and shared BusinessOS boundary
- export and report output
- subscription and read-only control
- timeline/gantt/dashboard
- form/memo/comment
- light automation
- template and WBS proposal

cross_feature_rules:
- all features must preserve small-and-easy operation
- all features must remain usable by customers
- smartphone and pc must keep the same functional capability
- ERP direct call from ProjectFlow remains forbidden
- generated outputs remain draft or proposal where human review is required
- dashboard, timeline, and gantt are views, not sources of truth
- automation remains lightweight and visibility-oriented
- templates and proposals remain editable before confirmation

consistency_focus:
- avoid duplicate ownership of schedule data
- avoid duplicate ownership of report output state
- avoid duplicate notification logic across features
- keep read-only entitlement behavior consistent across all screens
