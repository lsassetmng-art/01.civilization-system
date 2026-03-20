# ============================================================
# MODEL
# ============================================================

model_id: 0300900006
model_name: schedule_priority

domain: 0090.schedule
system: 03.persona_os

# PURPOSE
Represents priority of schedule.

# DESCRIPTION
Schedule priority determines
importance or urgency of events.

# RELATIONS
schedule_priority
 -> schedule_event
 -> persona_priority
