# ============================================================
# AFFILIATED STREAMER REFERENCE IDENTITY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K5-003

decision:
affiliated_streamer_reference remains an affiliation object and never becomes a channel identity substitute.

rules:
- affiliated_streamer_reference points to target_principal_id in company-affiliation context
- it does not replace channel_record identity
- it does not replace principal identity
- it does not create implicit ownership
