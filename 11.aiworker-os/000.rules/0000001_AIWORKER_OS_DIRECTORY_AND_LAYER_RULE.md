# ============================================================
# AIWORKER OS DIRECTORY AND LAYER RULE
# ============================================================

status: canonical
system: AiworkerOS
layer: 000.rules
owner: Boss
prepared_by: Zero

purpose:
Define the initial root structure and layer meaning for AiworkerOS.

root_rule:
AiworkerOS must follow the canonical CivilizationOS layer pattern.

allowed_layers:
- 000.rules
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.society
- 910.civilization
- 920.meta
- 999.archive

placement_rule:
- constitutional truth goes in 010.constitution
- structural and boundary designs go in 020.architecture
- entity and state models go in 030.model
- runtime decision logic goes in 040.runtime
- sequence and lifecycle flows go in 050.flow
- cross-OS and cross-surface contracts go in 060.integration and 090.interface
- operational governance goes in 070.operations and 080.policy
- access separation and hard controls go in 100.security
- schema, table, view, and controlled function design go in 110.infrastructure
- build order and delivery sequence go in 120.implementation and 130.development

final_rule:
AiworkerOS keeps the same top-level layer semantics as CivilizationOS.
