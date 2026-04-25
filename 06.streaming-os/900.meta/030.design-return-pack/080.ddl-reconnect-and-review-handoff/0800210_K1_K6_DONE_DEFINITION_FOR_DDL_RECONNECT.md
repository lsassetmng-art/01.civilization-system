# ============================================================
# K1 K6 DONE DEFINITION FOR DDL RECONNECT
# ============================================================

status: canonical-done-definition
layer: meta
domain: ddl-reconnect-and-review-handoff
system: StreamingOS
prepared_by: Zero
owner: Boss

done_when:
- all K1 through K6 reconnect gates are satisfied
- review packet interpretation lock is accepted as fixed premise
- review handoff restarts without reopening persona-boundary cleanup
- approval decision work may continue as ordinary StreamingOS design review
