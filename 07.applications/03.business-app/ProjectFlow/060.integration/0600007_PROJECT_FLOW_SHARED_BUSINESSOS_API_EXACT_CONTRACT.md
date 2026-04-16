# ============================================================
# PROJECT FLOW SHARED BUSINESSOS API EXACT CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
This document points to the fixed exact payload set
for ProjectFlow and shared BusinessOS boundary.

fixed_payload_source:
- 1200006_PROJECT_FLOW_API_EXACT_PAYLOAD_FIXED.md

boundary_rules:
- ERP direct call from ProjectFlow is forbidden
- shared BusinessOS is the formal ERP integration executor
- request and response payload must match the fixed set
