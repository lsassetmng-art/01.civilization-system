# ============================================================
# EXPENSE SETTLEMENT INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

interface_focus:
- employee mobile UI
- approver review UI
- finance review UI
- ERP result visibility UI
- multilingual UI structure
- responsive UI for phone / tablet / pc

interface_principles:
- iphone, android, pc, and tablet are all first-class supported clients
- UI text must be localizable
- wider screens may increase visible density, but must preserve workflow meaning
- currency display must always show code/symbol in a non-ambiguous way
