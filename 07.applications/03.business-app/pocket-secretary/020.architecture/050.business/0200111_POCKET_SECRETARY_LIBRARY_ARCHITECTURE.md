# ============================================================
# POCKET SECRETARY LIBRARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of the Library domain.

role:
Library is the personal file preservation domain of PocketSecretary.

storage targets:
- PDF
- image
- personal file materials

responsibilities:
- file registration
- file browsing
- file deletion
- safe personal retention

non-responsibilities:
- authority approval
- ERP source-of-truth storage
- hidden automatic external publication

rules:
- library remains a personal storage domain
- registration and deletion remain explicit
- privacy by default applies
