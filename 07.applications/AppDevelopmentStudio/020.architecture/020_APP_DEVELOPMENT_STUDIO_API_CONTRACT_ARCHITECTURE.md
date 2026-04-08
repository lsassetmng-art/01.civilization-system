# ============================================================
# APP DEVELOPMENT STUDIO API CONTRACT ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact-contract architecture direction for application APIs.

api_principles:
- exact request/response contract
- stable operation naming
- error code visibility
- explicit required/optional fields
- policy-aware execution routes
- environment-aware execution routes

major_api_groups:
- request and input APIs
- readiness APIs
- rule and settings APIs
- generation APIs
- proposal/review/approval/apply APIs
- SQL execution APIs
- Git APIs
- bug/version/progress APIs
- test and test-item APIs
- multilingual/profile APIs

api_style:
- operation-oriented
- JSON request/response
- explicit status model
- explicit error object
