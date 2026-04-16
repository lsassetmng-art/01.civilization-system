# ============================================================
# POCKET SECRETARY INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines bounded external integration of PocketSecretary.

shared common references:
- PersonaOS shared VisualRuntime consumption boundary
- BusinessOS Submission Common auth/submission boundary

PocketSecretary-specific integrations:
- visual-runtime host integration
- Persona integration
- ERP integration
- ERP auth context usage from app review flows
- EstimateCreator Deep Link integration
- NameCardManager Deep Link integration
- mailer integration
- Yahoo transit integration
- sync target integration
- external confirmation handling

important integration intent:
PocketSecretary owns app-side launch, review, and visible integration flow,
while common boundary meaning may be defined in shared systems.
