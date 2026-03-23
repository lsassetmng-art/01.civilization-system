# ============================================================
# LIFE OS RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the record structure principles of Life OS.

record_types:
- raw_record
- corrected_record
- derived_record
- summary_record

record_principles:
- raw inputs should remain preservable
- correction must not silently destroy history
- derived records must indicate derivation source
- summaries are rebuildable from lower-level records when possible

minimum_fields:
- record_id
- user_id
- record_type
- domain_type
- occurred_at
- recorded_at
- source_type
- payload
- version
- status

notes:
Life OS favors append-oriented records and traceable corrections.
