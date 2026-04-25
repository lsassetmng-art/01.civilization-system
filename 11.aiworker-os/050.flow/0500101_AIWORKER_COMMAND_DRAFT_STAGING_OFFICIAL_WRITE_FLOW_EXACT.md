# ============================================================
# AIWORKER COMMAND DRAFT STAGING OFFICIAL WRITE FLOW EXACT
# ============================================================

status: exact-flow
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact multi-surface write flow for AI workers.

write_flow:
1. command row received
2. allowed read family resolved
3. draft row created if proposal path is allowed
4. staging row created if structured candidate is needed
5. official intake row created if gate-eligible
6. controlled function evaluates and applies
7. result event and audit log emitted

surface_purpose:
- command row: request instruction and declared lane
- draft row: reversible human-reviewable proposal
- staging row: normalized structured candidate payload
- official intake table: gate-bound application request
- controlled function: only legal mutation path to canonical truth

forbidden_paths:
- command row directly mutates canonical truth
- draft row directly mutates canonical truth
- staging row directly mutates canonical truth
- AI worker direct DML against canonical tables
