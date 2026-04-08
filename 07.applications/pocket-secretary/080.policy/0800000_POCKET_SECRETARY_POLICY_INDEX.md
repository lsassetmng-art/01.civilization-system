# ============================================================
# POCKET SECRETARY POLICY INDEX
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific policy documents.

shared common dependencies:
- PersonaOS Consultation Common policy
- PersonaOS Secretary Interaction Common policy
- PersonaOS Notification Common policy
- PersonaOS Background Common policy
- BusinessOS Submission Common policy

reading order:
1. Policy Overview
2. Core app policies
3. Shared-common application policies
4. PocketSecretary-only policy files
5. Cross-cutting technical domain policies

document guide:
- 0800001_POCKET_SECRETARY_POLICY_OVERVIEW.md
  Overview of policy application in PocketSecretary.

- 0800100_POCKET_SECRETARY_POLICY.md
  Top-level policy framing.

- 0800101_POCKET_SECRETARY_LOCAL_FIRST_POLICY.md
  Local-first policy.

- 0800102_POCKET_SECRETARY_REVIEW_REQUIRED_ACTION_POLICY.md
  Review-required action policy.

- 0800103_POCKET_SECRETARY_SYNC_POLICY.md
  Sync policy.

- 0800104_POCKET_SECRETARY_PERSONA_PRESENTATION_POLICY.md
  Persona presentation policy.

- 0800105_POCKET_SECRETARY_PRIVACY_EXPOSURE_POLICY.md
  Privacy exposure policy.

- 0800106_POCKET_SECRETARY_ERP_REQUEST_HANDLING_POLICY.md
  ERP request handling in app context.

- 0800107_POCKET_SECRETARY_NOTIFICATION_POLICY.md
  Legacy notification policy context.

- 0800108_POCKET_SECRETARY_PLAN_POLICY.md
  PocketSecretary plan policy.

- 0800109_POCKET_SECRETARY_AI_SECRETARY_POLICY.md
  AI secretary policy in app context.

- 0800110_POCKET_SECRETARY_CONSULTATION_POLICY.md
  PocketSecretary-specific application of Consultation Common.

- 0800111_POCKET_SECRETARY_LIBRARY_POLICY.md
  Library policy.

- 0800112_POCKET_SECRETARY_TRAVEL_EXPENSE_POLICY.md
  Travel expense and aggregation policy.

- 0800113_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_POLICY.md
  App-specific application-button policy.

- 0800114_POCKET_SECRETARY_AUTO_SUBMISSION_PROHIBITION_POLICY.md
  App-specific application of no-auto-submit rule.

- 0800115_POCKET_SECRETARY_BUSINESS_DRAFT_ALIGNMENT_POLICY.md
  App-specific application of draft alignment rule.

- 0800116_POCKET_SECRETARY_NOTIFICATION_TIER_POLICY.md
  PocketSecretary-specific application of Notification Common.

- 0800117_POCKET_SECRETARY_HOME_SCREEN_POLICY.md
  Home screen policy.

- 0800118_POCKET_SECRETARY_INITIAL_SECRETARY_POLICY.md
  Concrete initial secretary cast policy.

- 0800119_POCKET_SECRETARY_HOME_SUMMARY_POLICY.md
  PocketSecretary-specific use of shared summary policy.

- 0800120_POCKET_SECRETARY_NOTIFICATION_CONTROL_POLICY.md
  PocketSecretary-specific use of shared notification control policy.

cross_cutting_technical_domain:
- 140.visual-runtime
  PocketSecretary policy as a compliant host of Persona Visual Runtime.
