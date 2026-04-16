# ============================================================
# ORDER FLOW SEED SQL REFINED NOTE
# ============================================================

status: refined-seed-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Confirms the seed SQL posture after final review.

seed_refinement_result:
  result:
    - no major correction required

  minor_refinement_policy:
    - keep current seed IDs and sample flow
    - only adjust later if final schema prefix changes
    - keep company_id fixed to test company
    - keep both JPY and USD examples
    - keep partial shipment and partial delivery examples

seed_status:
  - good enough for local/dev/test candidate use
  - no further seed redesign required at this stage

