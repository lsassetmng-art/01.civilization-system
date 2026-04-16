# ============================================================
# EXPENSE FINAL REVIEW VIEWPOINTS
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides final review viewpoints before declaring the current design round closed.

review_viewpoints:

  - viewpoint: boundary_integrity
    check:
      - ERP boundary remains strict
      - approval/finance/ERP/settlement are not conflated

  - viewpoint: policy_consistency
    check:
      - category/evidence/template/candidate/allocation rules do not contradict each other

  - viewpoint: auditability
    check:
      - meaningful events remain additive and explainable

  - viewpoint: globalization
    check:
      - multilingual and multi currency rules remain first-class, not patched later

  - viewpoint: device_consistency
    check:
      - no device changes business meaning

  - viewpoint: exception_governance
    check:
      - exception handling does not become silent bypass

  - viewpoint: master_catalog_shape
    check:
      - initial catalog bundle aligns with policy documents

  - viewpoint: restart_safety
    check:
      - next chat can continue without reopening broad concept

final_review_judgement_rule:
If all viewpoints remain coherent,
the current design round may be treated as closed at design level.

