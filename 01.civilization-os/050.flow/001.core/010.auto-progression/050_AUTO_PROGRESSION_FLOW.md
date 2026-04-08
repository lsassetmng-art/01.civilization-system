# ============================================================
# AUTO PROGRESSION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for automatic progression control.

# 2. TRIGGER

- operator start command
- scheduled unattended progression start
- resume from valid paused state

# 3. MAIN FLOW

1. read progression_controller
2. verify progression_enabled_flag
3. verify no conflicting active session
4. create progression_session
5. load valid checkpoint or initialize start position
6. apply cadence profile and speed family
7. advance logical time and tick position
8. persist checkpoint
9. emit progression audit trace
10. continue until stop condition or pause signal

# 4. FAILURE FLOW

- invalid controller state -> reject start
- duplicate active session -> reject start
- invalid checkpoint -> reject resume
- unsafe batch catchup -> stop and record reason
- unexpected runtime inconsistency -> fail closed

# 5. OUTPUT

- progression_session state
- updated checkpoint
- audit record
- explicit stop reason where applicable

