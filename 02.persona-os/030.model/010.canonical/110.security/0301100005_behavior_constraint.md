# ============================================================
# MODEL
# ============================================================

model_id: 0301100005
model_name: behavior_constraint

domain: 0110.security
system: 03.persona_os

# PURPOSE
Represents behavior limitation rules.

# DESCRIPTION
Behavior constraint restricts actions
based on policy or safety rules.

# RELATIONS
behavior_constraint
 -> behavior
 -> persona_guardrail
