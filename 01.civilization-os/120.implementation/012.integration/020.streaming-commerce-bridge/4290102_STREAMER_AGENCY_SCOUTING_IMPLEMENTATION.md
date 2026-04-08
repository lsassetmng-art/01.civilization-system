# ============================================================
# STREAMER AGENCY SCOUTING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 012.integration

# 1. PURPOSE

Defines scouting request and lifecycle handling.

# 2. STORAGE

- scouting_id
- agency_company_id
- target_persona_or_streamer_ref
- scouting_status
- proposal_payload
- created_at
- updated_at

# 3. EXECUTION

1. create scouting request
2. validate agency eligibility
3. validate target eligibility
4. persist proposal
5. publish status updates

# 4. FAILURE HANDLING

Fail closed on ineligible agency, invalid target, or duplicate active scouting.
