# ============================================================
# POCKET SECRETARY BUSINESSOS COMPANY SECRETARY CONSUMPTION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary consumes company secretary
from BusinessOS.

BusinessOS reference:
BusinessOS owns company employment, assignment,
knowledge growth, usage scope, and company-local naming
for Business AI Worker.

PocketSecretary role:
- detect whether a company_secretary is available
- display company secretary inside Enterprise surfaces
- start company-secretary consultation and guidance flow
- keep PocketSecretary as a front-end consumer only

PocketSecretary non-role:
- company secretary employment management
- company secretary assignment truth
- company secretary knowledge-growth truth
- company secretary template management

rules:
- PocketSecretary must fail closed when company secretary is unavailable
- PocketSecretary must distinguish personal and company secretary clearly
