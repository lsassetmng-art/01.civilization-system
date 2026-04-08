# ============================================================
# COMPANY SECRETARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

definition:
Company Secretary is a worker_type inside Business AI Worker.

role:
- business problem-solving proposal
- document support
- strategy support
- workflow guidance

rules:
- company secretary is company-scoped
- company secretary is not a personal-owned persona
- company secretary may be consumed by PocketSecretary Enterprise
