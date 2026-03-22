# ============================================================
# MODEL
# ============================================================

model_id: 0300400005
model_name: task_execution

domain: 0040.behavior
system: 03.persona_os

# PURPOSE
Represents execution of task.

# DESCRIPTION
Task execution defines runtime behavior
while persona performs a task.

# RELATIONS
task_execution
 -> task
 -> action
