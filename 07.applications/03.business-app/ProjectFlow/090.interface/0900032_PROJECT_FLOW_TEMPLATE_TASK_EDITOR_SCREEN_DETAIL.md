# ============================================================
# PROJECT FLOW TEMPLATE TASK EDITOR SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
template_task_editor

purpose:
Edits template task rows inside template management.

main_components:
- task template row editor
- dependency selector
- duration editor
- relative offset editor
- milestone flag toggle

actions:
- add task template
- edit task template
- remove task template
- reorder task template

ui_rules:
- dependency relation should be easy to understand
- relative offset and duration should be clearly distinguished
