# ============================================================
# CIVILIZATION FORECAST RUN
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime

# 1. PURPOSE

Defines runtime implementation for forecast runs.

# 2. STORAGE

- forecast_run_id
- scenario_id
- started_at
- completed_at
- status
- result_ref

# 3. EXECUTION

1. lock input scenario
2. execute forecast
3. persist result bundle
4. publish completion trace

# 4. FAILURE HANDLING

Fail closed on mutable input or partial result persistence.
