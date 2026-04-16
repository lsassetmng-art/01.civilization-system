# ============================================================
# EXPENSE FINAL FIXED SCOPE NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Clarifies what is already fixed in the current ExpenseSettlement design round.

fixed_scope:
- application positioning
- ERP source-of-truth boundary
- multilingual support requirement
- multi currency support requirement
- iphone / android / pc / tablet requirement
- initial release shape including MUST + SHOULD
- screen and navigation structure
- state / authority / audit / exception structure
- policy detail structure
- initial master catalog shape
- restart / closure / handoff assets

fixed_scope_rule:
These areas should be treated as fixed unless:
- contradiction is found
- higher-level system rule changes
- governance explicitly requests redesign

conclusion:
The current round has a clearly fixed scope at design level.
