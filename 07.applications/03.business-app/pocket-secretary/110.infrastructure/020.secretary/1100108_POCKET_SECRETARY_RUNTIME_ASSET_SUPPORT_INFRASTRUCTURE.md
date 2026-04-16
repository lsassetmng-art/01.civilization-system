# ============================================================
# POCKET SECRETARY RUNTIME ASSET SUPPORT INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines infrastructure support for runtime assets used by PocketSecretary.

support areas:
- local asset reference support
- dashboard asset support
- Persona-related presentation asset support
- bounded runtime manifest/reference support where applicable

rules:
- asset support is presentation and continuity support
- asset availability must not imply authority
- asset failure must degrade safely
