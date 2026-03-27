# ============================================================
# PERSON FITNESS GROWTH EFFECT MODEL
# ============================================================

status: canonical
layer: model
scope: fitness-and-training
component: person-fitness-growth-effect

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRIMARY EFFECTS
# ============================================================

Primary effect dimensions:
- stamina
- strength
- endurance
- agility
- flexibility
- physique
- muscle_mass_state
- body_fat_state
- discipline_habit
- confidence


# ============================================================
# 2. NEGATIVE OR RISK EFFECTS
# ============================================================

Possible negative effects:
- overtraining_event
- injury_risk_event
- recovery_training_event


# ============================================================
# 3. FINAL RULE
# ============================================================

Fitness growth effects must support
both positive training progression and risk outcomes.
