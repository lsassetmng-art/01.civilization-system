# ============================================================
# POCKET SECRETARY BUSINESS APP AUTH INHERITANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Deep Link launch from PocketSecretary to BusinessOS apps
inherits authenticated BusinessOS context.

targets:
- EstimateCreator
- NameCardManager

rules:
- normal re-login should not be required on inherited valid context
- inherited authentication does not imply automatic authorization success
- inherited authentication does not imply publication or submission success
- invalid or expired inherited context must fail closed
