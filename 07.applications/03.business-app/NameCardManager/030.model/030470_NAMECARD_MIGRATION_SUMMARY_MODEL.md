# ============================================================
# NAMECARD MIGRATION SUMMARY MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines post-migration summary structures.

summary_families:
- company_migration_summary
- contact_group_summary
- incomplete_data_summary
- duplicate_summary
- image_import_summary

company_migration_summary_fields:
- normalized_company_name
- imported_people_count
- duplicate_candidate_count
- missing_detail_count

contact_group_summary_fields:
- group_name
- member_count
- decision_maker_count
- working_contact_count

incomplete_data_summary_fields:
- missing_email_count
- missing_phone_count
- missing_department_count
- missing_title_count
- missing_image_count

