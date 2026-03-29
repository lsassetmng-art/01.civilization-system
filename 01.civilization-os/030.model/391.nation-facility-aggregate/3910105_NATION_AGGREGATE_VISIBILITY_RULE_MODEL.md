# ============================================================
# NATION AGGREGATE VISIBILITY RULE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-aggregate-visibility-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY RULES
# ============================================================

visibility_rules:
- nation overview shows compact aggregate metrics
- nation detail shows expanded coverage and driver summaries
- nation comparison shows normalized metric comparisons
- nation builder preview shows projected change, not historical change
- district internals may remain hidden unless expanded


# ============================================================
# 2. FINAL RULE
# ============================================================

Visibility must scale from summary
to drill-down
without losing causality.
