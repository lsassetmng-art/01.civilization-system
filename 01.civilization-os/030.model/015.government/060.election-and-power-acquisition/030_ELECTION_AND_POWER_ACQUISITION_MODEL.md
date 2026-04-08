# ============================================================
# ELECTION AND POWER ACQUISITION
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for election and power acquisition.

# 2. CORE ENTITIES

- election
- candidate_registration
- vote_result
- power_transfer_record

# 3. STATE MODEL

election:
- election_id
- election_scope
- office_code
- election_status
- opened_at

candidate_registration:
- candidate_registration_id
- election_id
- candidate_scope
- registration_status
- approved_at

vote_result:
- vote_result_id
- election_id
- winner_scope
- result_status
- declared_at

power_transfer_record:
- power_transfer_record_id
- election_id
- from_authority_scope
- to_authority_scope
- transfer_status

# 4. INTEGRITY RULES

- candidate registration must bind one election
- vote result must preserve election identity
- transfer record must preserve from/to authority scope
- hidden power transfer without record is prohibited

