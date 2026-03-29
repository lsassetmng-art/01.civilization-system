# ============================================================
# ESSENTIAL CONSUMPTION SUBJECT MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: essential-consumption-subject

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NORMAL SUBJECTS
# ============================================================

normal_subjects:
- user_persona
- ai_human


# ============================================================
# 2. AI ROBOT ROLE
# ============================================================

ai_robot_role:
- proxy_purchase_executor
- delivery_executor
- refill_executor
- household_support_executor
- facility_support_executor


# ============================================================
# 3. FINAL RULE
# ============================================================

Food and daily necessity consumption
must distinguish consumption subject
from support executor.
