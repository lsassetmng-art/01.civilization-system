# ============================================================
# PROJECT FLOW MULTILINGUAL TERMINOLOGY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines terminology consistency policy across supported languages.

terminology_targets:
- project
- task
- milestone
- issue
- risk
- schedule
- progress report
- decision note
- follow-up action
- read-only
- trial
- subscribed
- proposal
- confirmed
- reviewed
- approved

policy_rules:
- one concept should map to one preferred label per language
- customer-facing wording should avoid unnecessary technical jargon
- internal wording and customer-facing wording may differ when needed
- proposal and confirmed states must not collapse into the same wording
- read-only and blocked-action wording must remain easy to understand
