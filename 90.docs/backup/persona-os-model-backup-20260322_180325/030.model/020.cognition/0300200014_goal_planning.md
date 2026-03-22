# ============================================================
# MODEL
# ============================================================

model_id: 0300200014
model_name: goal_planning

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents planning process for goals.

# DESCRIPTION
Goal planning defines sequences of actions
needed to achieve persona goals.

# RELATIONS
goal_planning
 -> planning
 -> persona_goal
