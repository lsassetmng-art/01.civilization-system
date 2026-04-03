# ============================================================
# CIVILIZATION LIFEFORM CLASSIFICATION MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: civilization-lifeform-classification

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LIFEFORM CLASSES
# ============================================================

lifeform_classes:
- user_persona
- ai_human
- ai_robot


# ============================================================
# 2. HUMAN CATEGORY MAP
# ============================================================

human_category_map:
- user_persona -> human_category
- ai_human -> human_category
- ai_robot -> non_human_category


# ============================================================
# 3. FINAL RULE
# ============================================================

Lifeform classification
must be resolved before office eligibility is evaluated.
