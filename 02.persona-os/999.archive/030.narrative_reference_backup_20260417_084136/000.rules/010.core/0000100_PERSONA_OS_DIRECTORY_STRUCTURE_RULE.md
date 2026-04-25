# ============================================================
# PERSONA OS DIRECTORY STRUCTURE RULE
# ============================================================

status: canonical
layer: rules
domain: core
system: persona-os
owner: Boss
prepared_by: Zero

rule:
PersonaOS top-level canonical layers are:

010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development

support_layers:
920.meta
999.archive/930.legacy
999.archive
999.archive/999.dump

prohibited:
900.society as canonical top-level layer
910.civilization as canonical top-level layer
