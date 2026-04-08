# ============================================================
# PERSONA OS LAYER ORDER RULE
# ============================================================

status: canonical
layer: rules
domain: core
system: persona-os
owner: Boss
prepared_by: Zero

rule:
PersonaOS must be read and designed in this order:

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

constraint:
No lower layer may contradict an upper layer.
