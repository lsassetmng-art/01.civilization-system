# ============================================================
# CLOSE DECISION GATE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the gate for final close decision.

must_pass_before_close:
- product identity check
- cross-application boundary check
- multilingual check
- multicurrency check
- multi-device check
- screen responsibility check
- implementation boundary check
- phase boundary check
- pricing value check
- canonical consistency check

must_not_remain_before_close:
- hidden ERP-role drift
- hidden estimate-role drift
- hidden project-control-role drift
- hidden secretary-role drift
- device-based workflow divergence
- money meaning ambiguity
- fallback rule ambiguity

result_rule:
A near-complete file count is not enough.
Close requires semantic boundary integrity.
