# ============================================================
# NAMECARD SUGGESTION RULE CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines rule-based next action suggestion boundary.

inputs:
- namecard_state
- recent_activity
- publication_state
- relationship_state
- missing_information_state

outputs:
- suggestion_list
- priority
- reason
- optional_next_target_flow

