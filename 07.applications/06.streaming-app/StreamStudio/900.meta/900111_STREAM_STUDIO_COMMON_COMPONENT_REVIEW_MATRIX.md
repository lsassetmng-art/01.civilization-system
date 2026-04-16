# ============================================================
# STREAM STUDIO COMMON COMPONENT REVIEW MATRIX
# ============================================================

status: review-matrix
layer: meta
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Reviews the shared-component promotion candidates discovered
from StreamStudio design and prepares them for formal selection.

review_columns:
- reuse_strength
- contract_stability
- ownership_clarity
- cross_app_readiness
- review_comment
- next_action

allowed_values:
  reuse_strength:
    - high
    - medium
    - low
  contract_stability:
    - high
    - medium
    - low
  ownership_clarity:
    - clear
    - partial
    - unclear
  cross_app_readiness:
    - ready
    - near-ready
    - later
  next_action:
    - shortlist
    - hold
    - split
    - merge-review

review_matrix:

  highest_priority_group:
    - candidate: Upload Intake Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: reusable across creator-side asset applications, but intake boundary and resumable behavior should be normalized
      next_action: shortlist

    - candidate: Metadata Editing Common
      reuse_strength: high
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: ready
      review_comment: reusable across publishing, asset-management, and commerce-enabled creator apps
      next_action: shortlist

    - candidate: Approval Flow Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: strong cross-app candidate, but approval step semantics should stay normalized and app-agnostic
      next_action: shortlist

    - candidate: Publish Settings Common
      reuse_strength: high
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: ready
      review_comment: reusable publication surface across visibility, schedule, readiness, and release-capable apps
      next_action: shortlist

    - candidate: Marketplace Listing Editor Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: strong commerce-enabled creator candidate, but listing/access-mode contract should be normalized
      next_action: shortlist

    - candidate: Membership Program Manager Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: reusable for creator subscription systems, but tier/benefit contract should be stabilized
      next_action: shortlist

    - candidate: Revenue Split Editor Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: strong collaborative monetization candidate, but allocation rule surface should be normalized
      next_action: shortlist

    - candidate: Project Member Authority Matrix Common
      reuse_strength: high
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: ready
      review_comment: strong reusable scoped-permission family across project-oriented apps
      next_action: shortlist

    - candidate: Multi-Currency Monetary Core
      reuse_strength: very-high
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: ready
      review_comment: foundational cross-app monetary rule candidate
      next_action: shortlist

    - candidate: Retry and Dead-Letter Visibility Common
      reuse_strength: high
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: ready
      review_comment: reusable async failure visibility family across connector and job-driven systems
      next_action: shortlist

  additional_candidates:
    - candidate: Resumable Upload Queue Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: likely merge-review with Upload Intake Common unless queue/runtime split is kept explicit
      next_action: merge-review

    - candidate: Thumbnail Assignment Common
      reuse_strength: medium
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: near-ready
      review_comment: useful media-side helper, but narrower than top-tier candidates
      next_action: hold

    - candidate: Subtitle Package Common
      reuse_strength: medium
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: later
      review_comment: reusable, but subtitle/package contract should be validated by another app first
      next_action: hold

    - candidate: Creator Studio Shell
      reuse_strength: medium
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: useful, but may still be too StreamStudio-shaped at shell level
      next_action: hold

    - candidate: Timeline Review Comment Common
      reuse_strength: medium
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: useful comment/review family, but may merge-review with broader review/comment common later
      next_action: merge-review

    - candidate: Revision Request Common
      reuse_strength: medium
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: useful workflow component, but likely sits under broader approval/review family
      next_action: merge-review

    - candidate: Scheduled Publish Common
      reuse_strength: medium
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: near-ready
      review_comment: reusable, but likely subordinate to Publish Settings Common
      next_action: merge-review

    - candidate: Membership Tier Editor Common
      reuse_strength: medium
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: likely subordinate to Membership Program Manager Common
      next_action: merge-review

    - candidate: Membership Content Rule Common
      reuse_strength: medium
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: likely subordinate to Membership Program Manager Common
      next_action: merge-review

    - candidate: External Push Connector Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: strong connector candidate, but external boundary normalization is needed
      next_action: shortlist

    - candidate: Collaboration Thread Common
      reuse_strength: medium
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: useful, but may overlap with broader shared thread/comment systems
      next_action: merge-review

    - candidate: Fixed Fee and Percentage Allocation Common
      reuse_strength: high
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: ready
      review_comment: strong allocation-rule candidate that can support revenue split and similar flows
      next_action: shortlist

    - candidate: Multilingual Localization Core
      reuse_strength: very-high
      contract_stability: high
      ownership_clarity: clear
      cross_app_readiness: ready
      review_comment: already expected as broad shared foundation; StreamStudio should reference rather than redefine
      next_action: hold

    - candidate: Audit Reconstruction Bundle Common
      reuse_strength: high
      contract_stability: medium
      ownership_clarity: partial
      cross_app_readiness: near-ready
      review_comment: strong governance/audit candidate, but bundle scope and artifact boundary should be normalized
      next_action: shortlist

initial_shortlist_recommendation:
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

merge_review_first:
- Resumable Upload Queue Common
- Timeline Review Comment Common
- Revision Request Common
- Scheduled Publish Common
- Membership Tier Editor Common
- Membership Content Rule Common
- Collaboration Thread Common

hold_for_later:
- Thumbnail Assignment Common
- Subtitle Package Common
- Creator Studio Shell
- Multilingual Localization Core

final_note:
This matrix is a review layer only.
No candidate is officially promoted yet.
