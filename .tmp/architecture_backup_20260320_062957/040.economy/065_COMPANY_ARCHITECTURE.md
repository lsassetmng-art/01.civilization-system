# ============================================================
# COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Company is a legal economic organization operating inside a nation.

purpose:
- organize production, employment, profit generation, and ownership
- connect player progression to enterprise-scale activity

company_types:
- player_company
- ai_human_company

company_attributes:
- company_id
- nation_id
- legal_form
- company_type
- founder_id
- ceo_id
- company_status
- company_cap_slot

company_status:
- proposed
- founded
- active
- distressed
- suspended
- dissolved

rules:
- company creation requires explicit founding event
- company cap limits must be validated before creation
- player company and ai_human company obey the same founding conditions
- ai_robot cannot serve as ceo
- user company is not silently auto-dissolved
- ai_human company dissolution must follow explicit distress and dissolution events

event_flow:
- company_founding_requested
- founding_requirements_validated
- company_founded
- company_status_changed
- distress_detected
- dissolution_warning_published
- dissolution_executed

integration_points:
- employment
- stock
- market
- taxation
- revenue_ledger
- official_gazette

constitution_alignment:
- no hidden company creation
- no silent dissolution
- lawful and auditable status changes only

final_rule:
A company must be created, operated, distressed, or dissolved only
through explicit lawful events.
