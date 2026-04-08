# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. enterprise user reaches a PocketSecretary draft review surface
2. review state is displayed
3. application button is shown when submission is eligible
4. user explicitly presses the button
5. ERP auth context is checked
6. shared external API submission flow may begin

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- explicit button press is required
- draft completion alone must not trigger submission
- absence of explicit button press means no submission
