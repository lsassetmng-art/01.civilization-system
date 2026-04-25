# ============================================================
# AIWORKER IMPLEMENTATION ENTRYPOINT AND EXECUTION ORDER EXACT
# ============================================================

status: implementation-entrypoint
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the implementation entrypoint and execution order after design freeze.

implementation_entrypoint:
- start from aiworker canonical schema and code-table foundation
- implement controlled-function path before convenience tooling
- implement payload validation before external integration convenience
- implement grants/RLS before runtime actor exposure
- validate replay and recovery flows before implementation-ready completion claim

execution_order:
1. migration packaging for WB01 schema/tables/indexes/code tables
2. controlled function packaging for WB03
3. payload validation packaging for WB04
4. grant/RLS packaging for WB05
5. replay and recovery support packaging for WB06
6. acceptance test execution
7. external integration verification where available
8. final implementation evidence update

entrypoint_guardrails:
- additive-only implementation
- no phase-less fix
- no hidden boundary expansion
- no direct raw-table AI-worker read
- no destructive shortcut for convenience

hard_rules:
- implementation starts from canonical core, not UI convenience
- implementation order must preserve prior bundle dependencies
