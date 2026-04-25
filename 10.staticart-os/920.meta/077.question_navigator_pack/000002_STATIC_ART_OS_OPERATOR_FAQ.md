# ============================================================
# STATIC ART OS OPERATOR FAQ
# ============================================================

status: operator-faq
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

faq:
  - question: Where should I start?
    answer:
      - Start with 000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md.

  - question: How do I confirm the pack is still healthy without writing to DB?
    answer:
      - Run bash 132.operations/132410_staticart_master_readonly_sweep.sh

  - question: Which file tells me the current status quickly?
    answer:
      - 000002_STATIC_ART_OS_STATUS_DASHBOARD.md

  - question: Which file explains Persona boundaries?
    answer:
      - 080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md

  - question: Which launcher checks Persona rule alignment?
    answer:
      - bash 132.operations/132290_staticart_persona_final_recheck.sh quick

  - question: Which launcher is the normal phase-check entry?
    answer:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh help

  - question: Which file says organization work in this chat is complete?
    answer:
      - 920.meta/070.design_organization_completion/000001_STATIC_ART_OS_DESIGN_ORGANIZATION_COMPLETION_MEMO.md

  - question: Which file tells the next chat what to do?
    answer:
      - 920.meta/074.next_chat_handoff/000001_STATIC_ART_OS_NEXT_CHAT_HANDOFF_MEMO.md

  - question: Should I reorganize the docs again in the next chat?
    answer:
      - No. Move to review-confirmed execution or additive implementation only.

  - question: Can StaticArtOS own Persona mutable state?
    answer:
      - No. StaticArtOS is signed-snapshot-consumption only.

faq_rule:
- Use FAQ for common operator questions.
- Use the decision tree for action selection.
