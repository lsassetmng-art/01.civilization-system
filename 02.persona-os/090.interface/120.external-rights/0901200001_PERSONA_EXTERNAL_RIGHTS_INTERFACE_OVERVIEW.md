# ============================================================
# PERSONA EXTERNAL RIGHTS INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: external-rights
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of external-rights interfaces.

summary:
External-rights interfaces define approved release/use contracts,
rights-scope responses,
rejection outputs,
and revocation-related outputs
for persona-derived outputs outside PersonaOS.

scope:
external release request
external release response
rights-scope read
release rejection
revocation event

boundary:
External interfaces do not transfer authority origin.
External interfaces do not replace package/distribution interfaces.
