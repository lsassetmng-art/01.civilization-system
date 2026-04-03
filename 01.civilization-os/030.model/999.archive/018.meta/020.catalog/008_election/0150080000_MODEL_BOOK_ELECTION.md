# ============================================================
# MODEL BOOK
# ELECTION DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 008
model_id: 0000
scope: civilization.model.election

owner: Boss
prepared_by: Zero


# PURPOSE

Define election system models
within CivilizationOS.


# MODEL LIST

0001 election
0002 election_type
0003 electoral_system
0004 electoral_district
0005 voter
0006 voter_registration
0007 voter_turnout
0008 ballot
0009 candidate
0010 political_party
0011 campaign
0012 campaign_finance
0013 campaign_event
0014 campaign_message
0015 media_coverage
0016 polling
0017 vote_count
0018 vote_result
0019 election_observer
0020 election_integrity
0021 election_dispute
0022 election_recount
0023 election_fraud
0024 election_reform
0025 election_crisis
0026 election_transition
0027 election_legitimacy
0028 election_stability
0029 election_cycle
0030 election_system_state


# STATES

registration
campaign
voting
counting
certification
dispute
transition
stable


# EVENTS

campaign_launch
vote_cast
count_complete
result_declared
recount
fraud_claim
reform
transfer_of_power


# RELATIONS

election -> government
election -> legislative
election -> media
election -> democratic_system


# METRICS

turnout_rate
election_integrity
legitimacy_score
dispute_rate
transition_stability

