# ============================================================
# TRAINING SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for training system structures.

# 2. CORE ENTITIES

- training_program
- training_module
- training_participation
- training_outcome

# 3. STATE MODEL

training_program:
- training_program_id
- program_code
- training_scope
- program_status
- version_code

training_module:
- training_module_id
- training_program_id
- module_code
- module_type_code
- module_status

training_participation:
- training_participation_id
- training_program_id
- participant_scope
- participation_status
- participated_at

training_outcome:
- training_outcome_id
- training_participation_id
- outcome_code
- outcome_value
- outcome_status

# 4. INTEGRITY RULES

- module must belong to one training program
- participation must preserve participant scope
- outcome must reference one participation
- hidden training-outcome mutation is prohibited

