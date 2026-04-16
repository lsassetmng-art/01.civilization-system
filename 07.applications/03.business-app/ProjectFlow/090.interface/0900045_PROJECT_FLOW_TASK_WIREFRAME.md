# ============================================================
# PROJECT FLOW TASK WIREFRAME
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- task_list
- task_detail

task_list_smartphone_layout:
1. header
2. project scope selector
3. search
4. filter chips
5. task cards
6. quick update sheet trigger

task_list_pc_layout:
1. header row
2. filter/search row
3. task table
4. quick bulk update row

task_detail_smartphone_layout:
1. header
2. status/progress row
3. schedule block
4. workload block
5. dependency block
6. actions
   - save
   - time entry
   - register issue

task_detail_pc_layout:
1. left main detail column
2. right side summary column
3. action row at top
