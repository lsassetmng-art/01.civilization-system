# ============================================================
# AUTO PROGRESSION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for automatic progression.

# 2. INTEGRATION SCOPE

- progression controller to cadence/tick runtime
- progression session to checkpoint persistence
- progression stop reason to operations/monitoring
- progression state to audit output

# 3. INTEGRATION RULES

- progression runtime must consume validated cadence only
- checkpoint handoff must preserve logical time and tick position
- stop reason must be emitted to operations boundary on abnormal stop
- no implicit resume is allowed across boundary

