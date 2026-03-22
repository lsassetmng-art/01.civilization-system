# ============================================================
# CIVILIZATION MODEL EVENT BINDING
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0038
scope: civilization.model.event-binding
owner: Boss
prepared_by: Zero


# PURPOSE

Define how models bind to event types.


# RULE

each major model class must declare
compatible event families.

examples:

company
market_entry
bankruptcy
merger

bank
bank_run
liquidity_crisis
resolution

nation
election
conflict
reform

