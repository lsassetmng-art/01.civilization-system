# ============================================================
# MBO RUNTIME OVERVIEW
# ============================================================

status: canonical
application: Mbo
layer: runtime
owner: Boss
prepared_by: Zero

runtime_focus:
Defines how records move through status changes,
reviews, finalization, and ERP transfer.

main_runtime_chain:
draft
-> active
-> progress_updated
-> in_review
-> evaluation_drafted
-> finalized
-> transferred
