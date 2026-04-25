# PERSONA TOP5 NO CODE IMPLEMENTATION ENTRY ATLAS OVERVIEW

status: no-code-entry-atlas
system: PersonaOS
layer: implementation
confirmed_at: 20260419_112921

purpose:
Provides one atlas for the top five packets that have already passed actual gate review
and opened no-code implementation-entry discussion.

top5_packets:
- persona-state-apply
- snapshot-issue
- snapshot-verify
- publish_apply
- civilization-event-dispatcher

current_global_state:
- design_only
- no_code_implementation_entry_active_for_top5: yes
- implementation_started: no

atlas_meaning:
These five packets are now the most advanced implementation-entry discussion targets inside PersonaOS Edge design.
They are not implemented.
They are not approved for SQL, code, deploy, or environment mutation.

atlas_rule:
Use this atlas first when the question is about:
- which top5 packet to open next
- how top5 packets relate
- what can be discussed now without crossing into implementation
