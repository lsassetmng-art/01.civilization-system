# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific application-button implementation
based on the shared Business Submission Common.

common reference:
BusinessOS submission common defines:
- explicit submission only
- auth context requirement
- auto-submission prohibition

covered draft domains:
- ERP application draft
- quotation draft
- order draft

PocketSecretary-specific implementation directions:
- implement explicit application button only on eligible Enterprise review surfaces
- bind button action to guarded submission path
- preserve pending / accepted / failed / conflicted state visibility

rules:
- button press is the submission trigger
- absence of button press means no submission
