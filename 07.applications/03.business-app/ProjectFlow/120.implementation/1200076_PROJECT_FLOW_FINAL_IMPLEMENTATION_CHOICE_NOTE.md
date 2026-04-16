# ============================================================
# PROJECT FLOW FINAL IMPLEMENTATION CHOICE NOTE
# ============================================================

status: canonical-finalized
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Records final implementation-direction choices.

final_choices:

android_module_naming:
- app-projectflow
- core-common
- core-ui
- core-domain
- core-data
- feature-dashboard
- feature-project
- feature-task
- feature-milestone
- feature-issue-risk
- feature-time-entry
- feature-sync
- feature-export-report
- feature-form-memo-comment
- feature-automation
- feature-template-proposal
- feature-customer-material
- integration-businessos
- test-support

di_choice:
- manual dependency injection
- explicit constructor wiring
- no framework required initially

offline_cache_choice:
- local-first operational cache
- mediated sync-aware refresh
- clear sync divergence visibility

background_job_choice:
- platform scheduler plus local refresh triggers
- refresh/status-oriented only
- no hidden business mutation

implementation_effect:
These items are no longer open for ordinary planning.
