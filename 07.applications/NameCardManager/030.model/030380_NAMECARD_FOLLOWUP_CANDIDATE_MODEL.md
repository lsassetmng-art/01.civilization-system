# ============================================================
# NAMECARD FOLLOWUP CANDIDATE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines follow-up candidate generation basis.

candidate_conditions:
- long_time_no_contact
- post_order_no_followup
- note_contains_followup_intent
- approval_or_publication_stalled
- manually_pinned_followup

outputs:
- followup_reason
- suggested_next_date
- urgency_level
- snooze_supported

