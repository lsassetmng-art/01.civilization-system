# ============================================================
# CIVILIZATION MODEL METRIC BINDING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 003.foundation
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines model-to-metric derivation binding.

# 2. STORAGE

Metric binding fields:
- model_code
- metric_code
- aggregation_rule
- publication_scope
- freshness_rule

# 3. EXECUTION

1. resolve metric binding
2. load model facts
3. compute metric through deterministic aggregation
4. publish metric snapshot

# 4. AUTHORIZATION

Metric publication follows visibility scope.

# 5. AUDIT

- model_code
- metric_code
- aggregation_version
- published_at

# 6. FAILURE HANDLING

Fail closed on undefined aggregation or visibility ambiguity.
