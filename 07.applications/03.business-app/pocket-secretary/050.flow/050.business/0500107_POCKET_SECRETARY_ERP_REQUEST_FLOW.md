# ============================================================
# POCKET SECRETARY ERP REQUEST FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user starts an ERP-related request locally
2. request draft is created
3. request content is edited and validated
4. review-ready state is reached
5. user explicitly reviews and confirms
6. bounded submission attempt is made
7. pending external confirmation is tracked
8. confirmed / failed / conflicted result is surfaced

rules:
- local draft and submitted state must remain distinct
- review and confirmation must not be skipped
- failed submission must not be represented as success
