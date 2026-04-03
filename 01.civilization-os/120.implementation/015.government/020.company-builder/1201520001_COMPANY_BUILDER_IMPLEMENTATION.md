# ============================================================
# COMPANY BUILDER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: government.company_builder
document_id: 1201520001

owner: Boss
prepared_by: Zero

core_records:
- company_builder_draft
- company_template
- company_validation_result
- company_publish_artifact

error_codes:
- COMPANY_BUILDER_INVALID
- COMPANY_TEMPLATE_INCOMPLETE
- COMPANY_VALIDATION_FAILED
