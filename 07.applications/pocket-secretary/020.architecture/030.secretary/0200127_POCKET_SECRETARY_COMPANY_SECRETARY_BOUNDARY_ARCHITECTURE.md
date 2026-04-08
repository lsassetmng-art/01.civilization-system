# ============================================================
# POCKET SECRETARY COMPANY SECRETARY BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the boundary between personal AI secretary
and company secretary inside PocketSecretary.

company secretary source:
PocketSecretary does not create or own company secretary.
Company secretary is consumed from BusinessOS
as a company-scoped Business AI Worker of type company_secretary.

personal AI secretary source:
Personal AI secretary remains PocketSecretary-side consumption
of personal secretary-facing experience and secretary wording.

boundary:
- personal AI secretary is user-scoped
- company secretary is company-scoped
- PocketSecretary consumes company secretary but does not employ it
- PocketSecretary does not own company-secretary growth truth

rules:
- company secretary is available only under Enterprise
- company secretary use does not imply approval authority
- company secretary and personal AI secretary remain distinct
