# ============================================================
# CIVILIZATION FUND VEHICLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical fund vehicle model.

model_type:
- pooled capital truth model

primary_key:
- fund_vehicle_id

natural_key:
- fund_scope
- fund_code
- fund_version

fields:
- fund_vehicle_id
- fund_scope
- fund_code
- fund_version
- fund_status
- fund_class
- manager_scope
- investment_mandate_summary
- effective_from
- effective_until
- created_at
- updated_at

fund_status_enum:
- draft
- approved
- active
- suspended
- wound_down
- archived

contract_version_rule:
Fund vehicles must expose explicit version semantics.

truth_boundary:
Fund-vehicle truth belongs to CivilizationOS capital-markets domain.
