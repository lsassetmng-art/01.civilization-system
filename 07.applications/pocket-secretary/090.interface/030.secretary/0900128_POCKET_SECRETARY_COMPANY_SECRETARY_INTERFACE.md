# ============================================================
# POCKET SECRETARY COMPANY SECRETARY INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the interface for company secretary usage
inside PocketSecretary Enterprise.

required UI distinctions:
- personal AI secretary must be visually distinguishable
- company secretary must be visually distinguishable
- unavailable company secretary must not appear as active
- company secretary name may reflect BusinessOS local display name

rules:
- users must be able to tell whether they are using personal or company secretary
- company secretary UI must not imply approval authority
