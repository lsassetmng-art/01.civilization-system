# ============================================================
# LIFE MULTILINGUAL REVIEW INTEGRATION
# ============================================================

status: canonical-draft
system: life-os
layer: integration
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines integration rules for multilingual review and summary output in LifeOS.

integration_scope:
- daily summary localization
- weekly review localization
- trend explanation localization
- reminder wording localization handoff

rules:
- UI language and generated summary language may differ
- generated output must use resolved language preference
- fallback language must be applied predictably
- mixed-language output inside one summary should be avoided
