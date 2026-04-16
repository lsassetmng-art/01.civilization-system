# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the full standard set of customer-facing explanation materials.

standard_customer_facing_materials:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

material_roles:
customer-facing schedule:
- explains overall plan
- explains milestone timing
- explains future schedule outlook

progress report:
- explains current progress
- explains completed work
- explains next planned work

issue list:
- explains open issues and current handling state

risk list:
- explains identified risks and mitigation direction

decision note:
- explains what was decided and when

follow-up action list:
- explains pending actions,
  owners,
  and due direction

architecture_rules:
- these materials are standard outputs from the beginning
- they are not optional afterthought outputs
- they may share underlying source data
- they must remain separable by output type
