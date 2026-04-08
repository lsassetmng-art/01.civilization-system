# ============================================================
# COMMON CALCULATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for shared calculation execution.

# 2. TRIGGER

- domain requests shared formula execution
- periodic recomputation request
- validation recomputation request

# 3. MAIN FLOW

1. resolve calculation_formula by code and version
2. load required calculation_parameter set
3. validate parameter source scope
4. build deterministic calculation_context
5. execute formula in canonical order
6. apply declared rounding rule
7. persist calculation_result
8. emit audit trace

# 4. FAILURE FLOW

- missing formula version -> reject
- missing required parameter -> reject
- invalid source scope -> reject
- non-deterministic ordering detected -> fail closed

# 5. OUTPUT

- calculation_result
- resolved formula version
- execution audit trace

