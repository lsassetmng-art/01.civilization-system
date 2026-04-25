# ============================================================
# PERSONA OS DOMAIN MAP RULE
# ============================================================

status: canonical
layer: rules
domain: core
system: persona-os
owner: Boss
prepared_by: Zero

rule:
The fixed domain order is:

010.core
020.identity
030.state
040.memory
050.growth
060.builder
070.visual
080.runtime_hosting
090.snapshot
100.package
110.distribution
120.external_rights
130.access_license_transfer
140.integration
100.security
160.governance
170.operations-support

constraint:
New documents must be placeable by both layer and domain.
