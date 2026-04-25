# PERSONA OS FINAL UPDATE ESCALATION AND CHANGE DISCIPLINE

status: final-completion-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_171015

purpose:
Defines the final update discipline for PersonaOS after design completion.

default_update_path:
1. identify the question or change request
2. determine whether the target is:
   - packet-local
   - bundle-local
   - atlas or registry relation
   - whole-OS contradiction
3. use the smallest valid scope
4. update only the required docs
5. add changelog
6. preserve archive and supersede discipline
7. confirm operating markers remain accurate

escalation_levels:
- level_1_packet_local
- level_2_bundle_local
- level_3_atlas_or_registry_relation
- level_4_whole_os_contradiction_reopen_only

when escalation is allowed:
- a sibling relation is load-bearing
- packet membership changes
- atlas relation changes
- whole-OS ownership or disclosure contradiction appears

when escalation is not allowed:
- wording polish only
- field ordering only
- one packet-local clarification only
- one non-semantic naming adjustment

change discipline:
- preserve truth ownership reading
- preserve trust role split
- preserve release role split
- preserve candidate versus released classification
- preserve lifecycle versus runtime distinction
- preserve executable-work prohibition unless separately authorized

hard_rule:
After completion, escalation is an exception path, not the default path.
