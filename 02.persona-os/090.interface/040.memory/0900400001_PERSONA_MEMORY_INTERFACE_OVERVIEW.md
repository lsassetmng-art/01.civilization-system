# ============================================================
# PERSONA MEMORY INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona memory interfaces.

summary:
Memory interfaces define explicit requests,
responses,
and result contracts
for memory read,
retrieval,
mutation,
persistence approval,
and decay execution.

interface_groups:
memory read
memory retrieval
memory mutation
persistence approval
decay execution

interface_rules:
memory interfaces must distinguish retrieval from mutation
memory interfaces must distinguish persistence approval from generic mutation
memory interfaces must keep derived experience traceable
memory interfaces must preserve explicit auditability

boundary:
Memory interfaces do not redefine state truth.
Memory interfaces do not redefine identity truth.
Memory interfaces do not treat snapshot/history/growth as generic memory mutation.
