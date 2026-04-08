# ============================================================
# POCKET SECRETARY GUARD SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security rules for guard enforcement in PocketSecretary.

guard security areas:
- permission guard
- critical action guard
- request validation guard
- sync precondition guard

rules:
- guard logic must fail closed on ambiguity
- denied or unknown eligibility must not pass as valid
- guard success does not equal external confirmation
