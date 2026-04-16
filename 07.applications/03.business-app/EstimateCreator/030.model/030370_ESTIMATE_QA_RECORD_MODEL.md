# ============================================================
# ESTIMATE QA RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_qa_record stores question-answer items
used to track follow-up points related to an estimate.

This is a premium-oriented management object.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- qa_id
- estimate_id
- question_text
- answer_text
- qa_status
- owner_user_id
- due_date
- created_at
- updated_at

# ============================================================
# 3. STATUS
# ============================================================

Representative qa_status values:

- open
- pending
- answered
- closed

# ============================================================
# 4. ROLE
# ============================================================

QA records support:

- customer question tracking
- internal clarification tracking
- proposal open issue tracking
- approval preparation issue tracking

