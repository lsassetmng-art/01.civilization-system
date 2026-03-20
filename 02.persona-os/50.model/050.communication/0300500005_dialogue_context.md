# ============================================================
# MODEL
# ============================================================

model_id: 0300500005
model_name: dialogue_context

domain: 0050.communication
system: 03.persona_os

# PURPOSE
Represents dialogue context.

# DESCRIPTION
Dialogue context maintains current
conversation state between personas
or between persona and user.

# RELATIONS
dialogue_context
 -> communication
 -> conversation
