# ============================================================
# MODEL
# ============================================================

model_id: 0300900005
model_name: schedule_event

domain: 0090.schedule
system: 03.persona_os

# PURPOSE
Represents event in schedule.

# DESCRIPTION
Schedule event represents time-bound
activity or appointment.

# RELATIONS
schedule_event
 -> schedule_plan
 -> task
