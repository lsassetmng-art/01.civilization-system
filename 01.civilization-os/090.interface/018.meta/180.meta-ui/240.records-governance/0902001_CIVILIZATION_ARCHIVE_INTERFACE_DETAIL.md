# ============================================================
# CIVILIZATION ARCHIVE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for archival and restore handling.

required_fields:
- source_record_code
- retention_schedule_code
- classification_label_code
- restore_basis where applicable
- correlation_id

compatibility_rule:
Archival interfaces must remain retention-aware and classification-aware.
