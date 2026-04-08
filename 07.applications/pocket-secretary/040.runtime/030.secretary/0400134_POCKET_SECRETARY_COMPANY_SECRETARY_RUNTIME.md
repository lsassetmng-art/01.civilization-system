# ============================================================
# POCKET SECRETARY COMPANY SECRETARY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for consuming company secretary
from BusinessOS.

runtime sequence:
1. Enterprise user enters company-secretary-capable surface
2. PocketSecretary resolves BusinessOS company secretary reference
3. availability and usage scope are checked
4. company secretary is rendered if valid
5. consultation or guidance may begin
6. invalid or unavailable state fails closed

rules:
- company secretary runtime remains consumption-only
- invalid BusinessOS reference must fail closed
- company secretary support does not imply approval authority
