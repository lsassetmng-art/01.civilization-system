# ============================================================
# STATIC ART OS NEXT CHAT HANDOFF REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- handoff_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/074.next_chat_handoff/000001_STATIC_ART_OS_NEXT_CHAT_HANDOFF_MEMO.md
- nextaction_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/074.next_chat_handoff/000002_STATIC_ART_OS_NEXT_ACTION_PACK.md
- launcher_sh: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132420_staticart_next_chat_handoff.sh
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/074.next_chat_handoff/000003_STATIC_ART_OS_NEXT_CHAT_HANDOFF_REPORT.md

result:
- next chat handoff memo created
- next action pack created
- next chat handoff launcher created

rule:
- This pack is continuation oriented.
- It does not perform DB writes directly.
- review mode only calls the existing read-only sweep.
