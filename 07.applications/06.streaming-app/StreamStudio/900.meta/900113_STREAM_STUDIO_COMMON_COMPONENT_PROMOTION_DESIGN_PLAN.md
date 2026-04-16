# ============================================================
# STREAM STUDIO COMMON COMPONENT PROMOTION DESIGN PLAN
# ============================================================

status: promotion-design-plan
layer: meta
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion-design execution plan
for the StreamStudio common component candidates
selected in the first official selection pass.

This document does not yet promote components.
It defines the design batches, sequencing, and design-focus rules
for the selected promotion-design targets.

selection_reference:
- 900112_STREAM_STUDIO_COMMON_COMPONENT_OFFICIAL_SELECTION.md

selected_targets:
- Upload Intake Common
- Metadata Editing Common
- Approval Flow Common
- Publish Settings Common
- Marketplace Listing Editor Common
- Membership Program Manager Common
- Revenue Split Editor Common
- Project Member Authority Matrix Common
- Multi-Currency Monetary Core
- Retry and Dead-Letter Visibility Common
- External Push Connector Common
- Fixed Fee and Percentage Allocation Common
- Audit Reconstruction Bundle Common

design_batch_plan:

  batch_1_foundation_and_ingest:
    targets:
      - Upload Intake Common
      - Metadata Editing Common
      - Multi-Currency Monetary Core
    design_focus:
      - intake boundary
      - draft-safe metadata contract
      - multilingual metadata structure awareness
      - money and currency rule centralization
    reason:
      These are foundational contracts
      that many later components will depend on.

  batch_2_workflow_and_publish:
    targets:
      - Approval Flow Common
      - Publish Settings Common
      - Marketplace Listing Editor Common
    design_focus:
      - approval state normalization
      - publish readiness and visibility rules
      - listing metadata and access-mode structure
    reason:
      These components form the core
      creator-to-publication workflow family.

  batch_3_membership_and_allocation:
    targets:
      - Membership Program Manager Common
      - Revenue Split Editor Common
      - Fixed Fee and Percentage Allocation Common
      - Project Member Authority Matrix Common
    design_focus:
      - membership structure
      - authority and project-role boundaries
      - allocation rule normalization
      - collaborator monetization scope
    reason:
      These components define reusable collaboration
      and monetization architecture.

  batch_4_connector_and_recovery:
    targets:
      - Retry and Dead-Letter Visibility Common
      - External Push Connector Common
      - Audit Reconstruction Bundle Common
    design_focus:
      - async retry visibility
      - dead-letter recovery surface
      - outbound connector boundary
      - audit reconstruction artifact contract
    reason:
      These components form the reusable
      connector / reliability / audit family.

promotion_design_rules:
  - keep contracts app-agnostic
  - do not embed StreamStudio-only wording
  - do not bind too early to one backend implementation
  - separate editor surface from policy engine where possible
  - separate runtime connector behavior from user-facing failure visibility
  - preserve additive architecture

design_output_expectation_per_target:
  - canonical responsibility
  - required input contract
  - emitted events or output contract
  - state model
  - permission assumptions
  - reuse scope
  - promotion caution

recommended_design_order:
1. Upload Intake Common
2. Metadata Editing Common
3. Multi-Currency Monetary Core
4. Approval Flow Common
5. Publish Settings Common
6. Marketplace Listing Editor Common
7. Membership Program Manager Common
8. Project Member Authority Matrix Common
9. Fixed Fee and Percentage Allocation Common
10. Revenue Split Editor Common
11. Retry and Dead-Letter Visibility Common
12. External Push Connector Common
13. Audit Reconstruction Bundle Common

immediate_next_step:
Create the first promotion-design spec for:
- Upload Intake Common

final_note:
This file is the official planning bridge
between candidate selection
and per-component promotion design work.
