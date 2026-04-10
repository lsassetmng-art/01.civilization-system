# ============================================================
# NAMECARD RELATIONSHIP PRESENTATION MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines presentation-layer prioritization for related people display.

presentation_sections:
- decision_makers
- working_contacts
- introducers
- introduced_contacts
- same_company_people
- project_related_people
- order_related_people

priority_rules:
- manual_confirmed_relation first
- decision_maker first
- same_company next
- order_history-supported next
- weak inference lower

