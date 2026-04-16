# ============================================================
# POCKET SECRETARY IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific implementation guidance.

shared common references:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- BusinessOS Submission Common
- BusinessOS Business AI Worker

PocketSecretary-specific implementation areas:
- visual-runtime host adapter implementation
- home screen implementation
- score-based home summary implementation
- secretary wording engine implementation
- initial secretary cast implementation
- Library implementation
- schedule calendar implementation
- travel expense implementation
- ERP application draft review implementation
- enterprise application button implementation
- Deep Link launch implementation for EstimateCreator and NameCardManager
- company secretary consumption implementation
- install guidance handling
- settings and app-local navigation

implementation rule:
Shared semantics should be reused from common systems.
PocketSecretary implementation should focus on app composition,
binding, launch behavior, install guidance, company-secretary consumption,
and plan-specific behavior.
