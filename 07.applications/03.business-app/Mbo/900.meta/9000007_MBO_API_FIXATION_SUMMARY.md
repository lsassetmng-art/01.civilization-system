# ============================================================
# MBO API FIXATION SUMMARY
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

summary:
Exact API request and response payload shapes are fixed
for formal Mbo scope including priority A and B features.

fixed_api_groups:
- objective APIs
- objective template APIs
- action plan APIs
- progress APIs
- review schedule APIs
- review log APIs
- comment template APIs
- evaluation APIs
- calibration APIs
- interview memo APIs
- evidence reference APIs
- task/project link APIs
- KPI/executive summary APIs
- export/reminder job APIs
- ERP history/resend APIs

next_recommended_design_step:
- permission matrix fixation
- ERP outbound payload exact fixation
- state transition and lock control fixation
