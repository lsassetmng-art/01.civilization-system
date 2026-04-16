# ============================================================
# MBO EXPANDED IMPLEMENTATION SCOPE
# PRIORITY A + B FIXED
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

implementation_scope_A_and_B:

  ui:
    - dashboard UI
    - objective CRUD UI
    - objective template selection UI
    - department template admin UI
    - action plan UI
    - progress update UI
    - progress history UI
    - review schedule UI
    - bulk review schedule UI
    - review log UI
    - review cadence preset admin UI
    - evaluation draft UI
    - evaluation confirm UI
    - evaluation calibration UI
    - manager comment template admin UI
    - interview memo UI
    - KPI dashboard UI
    - aggregation export UI
    - evidence reference picker UI
    - task link picker UI
    - project link picker UI
    - executive summary UI
    - ERP history UI
    - ERP resend control UI
    - reminder batch send UI

  APIs:
    - objective APIs
    - objective template APIs
    - action plan APIs
    - progress APIs
    - review schedule APIs
    - review log APIs
    - evaluation APIs
    - calibration APIs
    - interview memo APIs
    - evidence reference APIs
    - task link APIs
    - project link APIs
    - KPI summary APIs
    - export job APIs
    - reminder batch APIs
    - ERP history APIs
    - ERP resend APIs

  validations:
    - final lock validation
    - resend reason validation
    - read-only executive access validation
    - template scope validation
    - evidence reference integrity validation

