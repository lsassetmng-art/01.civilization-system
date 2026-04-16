# ============================================================
# MBO ERP OUTBOUND IMPLEMENTATION
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Implementation-facing rules for ERP outbound transmission.

backend_rules:
- build outbound payload from finalized snapshot, not mutable live-edit state
- assign a unique transmission_id per send attempt
- keep transmission_version explicit
- validate required fields before send
- reject send if final_lock_flag is false
- reject send if evaluation is not confirmed
- reject send if actor lacks ERP transmit permission

history_rules:
- every send attempt must create transmission history
- failed sends must retain failure state and failure timestamp
- resend attempts must create separate resend job and separate history trace
- prior failed transmission records must remain readable

data_quality_rules:
- progress_percent must be within allowed numeric range
- weight must be within allowed numeric range
- language_code must use supported application locale codes
- currency_code must use supported currency codes

