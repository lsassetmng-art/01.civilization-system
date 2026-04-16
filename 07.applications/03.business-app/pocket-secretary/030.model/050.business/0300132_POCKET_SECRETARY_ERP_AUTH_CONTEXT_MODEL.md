# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific usage of the shared auth context model.

common reference:
BusinessOS submission common defines the shared auth context structure.

PocketSecretary-specific usage:
- auth context is used for explicit ERP-facing submission
- auth context is checked from app review/submission surfaces

rules:
- valid authentication context is required for ERP-facing submission
- missing or expired context must block submission
- auth success and business acceptance remain distinct
