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

## Exact Company Builder Core Surface
## Exact Company Builder Core Surface

Company builder must explicitly separate:

- company draft
- common profile
- type-specific profile
- validation result
- approval state
- publish artifact
- active company core link

## Exact Company Core And Site Split

Company core and company site are separate truths.

- publish creates company core truth
- company site opening belongs to company site flow
- type-specific completeness is required before publish
- direct site/opening mutation from company builder is prohibited
