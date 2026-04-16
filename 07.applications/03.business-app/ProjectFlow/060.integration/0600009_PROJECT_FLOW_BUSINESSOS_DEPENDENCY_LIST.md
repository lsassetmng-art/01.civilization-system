# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY LIST
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an explicit dependency list against BusinessOS.

dependency_items:

erp_import_request_mediation:
- required: yes
- direction: outbound request via BusinessOS
- local_owner: ProjectFlow request initiation
- boundary_owner: BusinessOS mediation

erp_export_request_mediation:
- required: yes
- direction: outbound request via BusinessOS
- local_owner: ProjectFlow request initiation
- boundary_owner: BusinessOS mediation

sync_retry_request_mediation:
- required: yes
- direction: outbound request via BusinessOS
- local_owner: ProjectFlow retry initiation
- boundary_owner: BusinessOS mediation

sync_status_retrieval:
- required: yes
- direction: inbound mediated status read
- local_owner: ProjectFlow status screen
- boundary_owner: BusinessOS mediation

sync_error_detail_retrieval:
- required: yes
- direction: inbound mediated error detail read
- local_owner: ProjectFlow error visibility
- boundary_owner: BusinessOS mediation

reference_master_access_when_needed:
- required: conditional
- direction: inbound reference read
- local_owner: ProjectFlow view/use
- boundary_owner: BusinessOS or approved shared source

non_dependency_examples:
- local export file generation
- local report draft generation
- local customer-facing material generation
- local template management
- local schedule proposal generation
