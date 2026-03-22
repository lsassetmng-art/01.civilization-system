# ============================================================
# CIVILIZATION MODEL POLICY BINDING
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0040
scope: civilization.model.policy-binding
owner: Boss
prepared_by: Zero


# PURPOSE

Define how models are affected by policy.


# RULE

policy modifies:

constraints
transition bias
resource allocation
event probability
interaction rules

policy must not directly mutate canonical model semantics.

