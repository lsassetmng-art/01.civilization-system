# ============================================================
# STATIC ART OS NEXT CHAT HANDOFF MEMO
# ============================================================

status: handoff
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the shortest continuation handoff for the next chat or next work step.

current_state:
- StaticArtOS has been structurally organized as a standalone implementation-prep pack.
- Root navigation, review portals, execution launchers, freeze assets, signoff assets, dashboard, gate, and read-only sweep assets exist.
- Persona integration is aligned to non-duplication and signed-snapshot consumption only.
- StaticArtOS remains domain owner for asset/business/governance surfaces only.
- Persona mutable canonical state remains outside StaticArtOS.

read_first_in_next_chat:
- 000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md
- 000002_STATIC_ART_OS_STATUS_DASHBOARD.md
- 000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md
- 920.meta/070.design_organization_completion/000001_STATIC_ART_OS_DESIGN_ORGANIZATION_COMPLETION_MEMO.md

execution_first_in_next_chat:
- bash 132.operations/132140_staticart_start_here.sh env
- bash 132.operations/132100_staticart_standalone_master_launcher.sh help
- bash 132.operations/132410_staticart_master_readonly_sweep.sh

persona_rule_first_in_next_chat:
- 080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md
- 132.operations/132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md
- bash 132.operations/132290_staticart_persona_final_recheck.sh quick

important_environment_rule:
- PERSONA_DATABASE_URL is the Persona-side DB target
- DATABASE_URL must not be used for StaticArtOS Persona-side DB work

not_in_scope_here:
- CX22073JW work
- cross-OS redesign
- Persona canonical mutation implementation
- structural document cleanup already completed in this chat

handoff_judgement:
- next_chat_should_start_from_execution_or_review_not_structure_cleanup: yes
