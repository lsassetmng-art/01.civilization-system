# ============================================================
# PERSONA INTEGRATION INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: integration
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of integration interfaces.

summary:
Integration interfaces define explicit request,
validation,
response,
result,
and rejection contracts
between PersonaOS and approved systems.

interface_groups:
integration request
validation result
apply result
reject result
outbound mirror-safe contract

interface_rules:
integration interfaces must expose explicit contract intent
integration interfaces must distinguish validation failure from apply failure
integration interfaces must preserve source traceability
integration interfaces must not transfer truth authority away from PersonaOS
