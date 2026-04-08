# ============================================================
# BUSINESS AI WORKER PERSONA BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

boundary:
PersonaOS may define persona-capable or role-capable template semantics.

BusinessOS defines:
- company employment
- assignment / dispatch
- company-scoped knowledge growth
- company-local naming
- company-scoped usage

rules:
- BusinessOS must not redefine persona template semantics
- PersonaOS must not own company employment or dispatch truth
