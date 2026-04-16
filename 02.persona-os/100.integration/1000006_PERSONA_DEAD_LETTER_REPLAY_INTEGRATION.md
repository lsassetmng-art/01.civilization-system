# PERSONA DEAD LETTER REPLAY INTEGRATION

status: implementation-ready-followup

replay_contract:
- replay only operator-approved dead-letter items
- keep original correlation_id
- preserve prior attempt history
- write replay audit record before retry dispatch

forbidden:
- blind replay without investigation
- replay that drops original evidence linkage
