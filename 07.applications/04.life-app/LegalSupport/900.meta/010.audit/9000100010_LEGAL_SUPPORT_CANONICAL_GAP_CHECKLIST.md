# ============================================================
# LEGAL SUPPORT CANONICAL GAP CHECKLIST
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit

purpose:
  - 何が固まり、何がまだ最終固定前かを可視化する
  - 実装前に最後の不足点を洗い出す
  - 次チャットで深掘りすると効果が高い箇所を明示する

fixed_enough_for_pre_implementation_review:
  - schema=life
  - pricing Free / PlusFamily(500)
  - role boundary
  - entity field matrix
  - enum registry
  - create/update/list exact payloads
  - archive/reopen/duplicate
  - soft delete / restore
  - checklist and family share
  - notification preference
  - summary/export/handoff profile
  - dashboard split
  - masking / confidentiality / capability
  - audit major structure

still_candidate_for_final_lock:
  - create_cross_app_handoff action exact name and response envelope
  - professional_future profile final enable conditions
  - document_subcategory controlled vocabulary finalization
  - checklist persistent completion initial rollout decision
  - recent_exports widget limits and ordering
  - quiet hours timezone handling detail
  - family invitation external placeholder lifecycle detail
  - audit digest generation exact format
  - summary profile token/length guardrails
  - document_due_date to deadline auto-promotion trigger policy

intentionally_deferred:
  - professional direct collaboration editing
  - OCR pipeline exact
  - document file binary handling exact
  - calendar connector style scheduling
  - human support workflow
  - external public share link

recommended_final_review_order:
  - enum registry
  - field matrix
  - payload bundle summary
  - capability + masking
  - export/handoff profiles
  - canonical consolidation index

gap_closure_guidance:
  - 実装前に final lock すべきなのは action名 / envelope / controlled vocabulary
  - UX改善は後からでもよいが、schema と capability は先に固定する
