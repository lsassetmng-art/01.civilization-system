# ============================================================
# CIVILIZATION POLICY IMPACT ESTIMATE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime

# 1. PURPOSE

Defines policy impact estimate generation.

# 2. STORAGE

- impact_estimate_id
- policy_ref
- scenario_ref
- impact_payload
- confidence_band
- created_at

# 3. EXECUTION

1. resolve policy package
2. run estimate model
3. persist impact payload
4. publish estimate trace

# 4. FAILURE HANDLING

Fail closed on unsupported policy package or confidence ambiguity.
