# ============================================================
# STREAM STUDIO PROHIBITED DRIFT REGISTER
# ============================================================

status: decision-register
layer: implementation-decision
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Lists the major drifts that are explicitly prohibited.

prohibited_drifts:
- saying implementation already started when it did not
- treating prepared SQL blocks as proof of apply
- merging publish and listing state families
- merging membership and one-time paid logic implicitly
- moving marketplace execution into phase 1
- moving membership execution into phase 1
- removing audit from phase 1
- removing runtime visibility from phase 1
- re-mixing common-component work into this chat
- replacing frozen enum values with UI labels
- collapsing blocker categories into generic unknown error
- treating external push success as identical to canonical internal publish success

drift_response_rule:
If any prohibited drift appears,
the correct response is to stop and return to the frozen decision packs.

fixed_statement:
The items above are prohibited drifts for StreamStudio in this chat context.
