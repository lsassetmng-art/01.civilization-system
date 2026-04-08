# ============================================================
# INTERNSHIP
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for internship structures.

# 2. CORE ENTITIES

- internship_program
- internship_slot
- internship_participation
- internship_outcome

# 3. STATE MODEL

internship_program:
- internship_program_id
- program_code
- host_scope
- program_status
- version_code

internship_slot:
- internship_slot_id
- internship_program_id
- slot_code
- slot_scope
- slot_status

internship_participation:
- internship_participation_id
- internship_program_id
- participant_scope
- participation_status
- started_at

internship_outcome:
- internship_outcome_id
- internship_participation_id
- outcome_code
- outcome_value
- outcome_status

# 4. INTEGRITY RULES

- slot and participation must belong to one internship program
- host and participant scope must be explicit
- outcome must reference one participation
- hidden internship-outcome mutation is prohibited

