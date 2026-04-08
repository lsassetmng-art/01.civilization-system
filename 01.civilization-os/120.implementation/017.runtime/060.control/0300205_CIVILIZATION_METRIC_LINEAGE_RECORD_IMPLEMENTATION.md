# ============================================================
# CIVILIZATION METRIC LINEAGE RECORD
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime

# 1. PURPOSE

Defines metric lineage persistence for runtime observability.

# 2. STORAGE

- lineage_id
- metric_code
- source_refs
- aggregation_version
- published_value
- published_at

# 3. EXECUTION

1. capture metric inputs
2. persist lineage
3. attach publication trace

# 4. FAILURE HANDLING

Fail closed on missing source refs or unverifiable aggregation.
