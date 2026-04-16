# ============================================================
# EXPENSE PASS CANDIDATE SUMMARY TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Template for declaring the current ExpenseSettlement design round
as pass-candidate / closure-candidate after review.

template:

  application: ExpenseSettlement
  review_status: pass-candidate
  phase_meaning: design-round-closure-candidate

  fixed_foundations:
    - BusinessOS-side lightweight but serious positioning fixed
    - ERP source-of-truth boundary fixed
    - multilingual / multi currency / all-device requirements fixed
    - initial release shape fixed
    - state / authority / audit / exception separation fixed

  fixed_detail_domains:
    - approval route detail
    - finance review detail
    - category policy
    - evidence policy
    - template policy
    - candidate inbox policy
    - allocation policy
    - settlement policy
    - export/reminder/file policy

  remaining_open_items:
    - exact company-specific matrices
    - exact localized labels
    - exact reason-code catalogs
    - exact masking/tolerance values
    - exact settlement confirmation source catalog

  judgement:
    The design is strong enough to be treated as pass-candidate
    for the current design round.
    Remaining work is refinement, not broad redesign.

  non_implication:
    - this does not approve implementation
    - this does not approve DDL
    - this does not approve code
    - this does not approve runtime deployment

