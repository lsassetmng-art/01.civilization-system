# ============================================================
# CADENCE AND TICK
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for cadence and tick control.

# 2. IMPLEMENTATION TARGETS

- cadence profile registry
- tick rule resolution
- speed family authorization
- execution window control
- catchup/checkpoint coordination

# 3. DATA / STATE

Canonical structures:
- cadence_profile
- tick_rule
- speed_family
- execution_window

# 4. EXECUTION

- resolve explicit cadence profile
- resolve actor-scope tick rule
- authorize speed family change before use
- coordinate execution windows without invalid overlap
- preserve checkpoint truth during catchup

# 5. VALIDATION

- reject unknown cadence
- reject unauthorized speed change
- reject unsafe catchup
- reject incompatible execution window overlap

# 6. OBSERVABILITY

- cadence audit
- speed change audit
- catchup audit
- execution window collision visibility

