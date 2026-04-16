# ============================================================
# PROJECT FLOW DELIVERABLE TO FEATURE SLICE LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps implementation-start deliverables
to next-step feature-slice planning areas.

deliverable_to_feature_slice_ledger:

module_map:
- next_feature_slices:
  - dashboard module slice
  - project feature slice
  - task feature slice
  - milestone feature slice
  - issue_risk feature slice
  - time_entry feature slice
  - sync feature slice
  - export_report feature slice
  - template_proposal feature slice
  - customer_material feature slice

package_ownership_note:
- next_feature_slices:
  - feature package boundary slices
  - integration-businessos boundary slice
  - core-data ownership slice

state_event_matrix:
- next_feature_slices:
  - dashboard ui state slice
  - project detail state slice
  - task state slice
  - customer material state slice
  - sync state slice

screen_to_usecase_map:
- next_feature_slices:
  - use-case grouping slice
  - viewmodel boundary slice
  - action routing slice

customer_material_slice_plan:
- next_feature_slices:
  - customer schedule slice
  - progress report slice
  - issue list slice
  - risk list slice
  - decision note slice
  - follow-up action slice

material_adapter_map:
- next_feature_slices:
  - material adapter implementation-planning slice
  - export-ready material composition slice

cache_sync_plan:
- next_feature_slices:
  - local cache behavior slice
  - sync queue visibility slice
  - refresh trigger slice

sync_visibility_note:
- next_feature_slices:
  - sync status UI slice
  - retry action slice
  - sync error detail slice

repository_gateway_map:
- next_feature_slices:
  - local repository slice
  - BusinessOS gateway slice
  - repository/gateway split slice

boundary_split_note:
- next_feature_slices:
  - boundary-aware feature planning slice
  - integration dependency slice

important_rule:
Feature-slice planning should start from unlocked deliverables,
not from raw assumptions.
