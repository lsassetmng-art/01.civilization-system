# ============================================================
# PROJECT FLOW MODULE TEST STRATEGY
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_layers:
- domain unit tests
- repository tests
- integration-boundary contract tests
- screen state tests
- export/report generation tests
- sync failure and retry tests

focus_points:
- ERP direct call absence
- retry creates new sync request
- protected fields remain protected
- export column permission control
- report draft remains editable
- partial failure remains visible
