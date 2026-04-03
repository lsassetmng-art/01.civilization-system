# ============================================================
# MARKETPLACE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: marketplace-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MARKETPLACE PRODUCT TYPES
# ============================================================

marketplace_product_types:
- school_application_form_product
- qualification_exam_ticket_product
- exam_preparation_material_product
- mock_exam_ticket_product
- interview_preparation_product
- retake_ticket_product_when_allowed


# ============================================================
# 2. FINAL RULE
# ============================================================

Marketplace must sell
application access and exam access,
not qualification success itself.
