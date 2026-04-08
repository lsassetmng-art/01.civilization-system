# ============================================================
# CIVILIZATION SIMULATION RUN
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime

# 1. PURPOSE

Defines simulation run persistence and execution lifecycle.

# 2. STORAGE

- simulation_run_id
- scenario_id
- engine_version
- seed_value
- status
- started_at
- completed_at
- result_ref

# 3. EXECUTION

1. freeze scenario input
2. start deterministic simulation
3. persist output set
4. attach reproducibility metadata

# 4. FAILURE HANDLING

Fail closed on non-deterministic dependency or missing seed trace.
