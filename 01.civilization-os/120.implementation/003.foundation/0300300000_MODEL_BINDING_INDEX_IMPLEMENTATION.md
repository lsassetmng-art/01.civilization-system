# ============================================================
# MODEL BINDING INDEX
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 003.foundation
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation model for cross-layer model bindings.

# 2. STORAGE

Binding registry fields:
- binding_code
- source_model_code
- target_layer
- target_artifact_code
- binding_type
- direction
- status

# 3. CONTRACTS

Binding lookup request:
- source_model_code
- target_layer
- binding_type

Binding response:
- resolved target
- status
- version
- fallback_used

# 4. EXECUTION

1. validate source model
2. resolve active binding set
3. verify direction rule
4. return deterministic binding
5. emit mismatch warning if inconsistent

# 5. AUTHORIZATION

Binding mutation is controlled.
Lookup is internal only.

# 6. AUDIT

- binding_code
- source_model_code
- target_artifact_code
- changed_at

# 7. FAILURE HANDLING

Fail closed on conflicting bindings,
reverse dependency, or missing active target.
