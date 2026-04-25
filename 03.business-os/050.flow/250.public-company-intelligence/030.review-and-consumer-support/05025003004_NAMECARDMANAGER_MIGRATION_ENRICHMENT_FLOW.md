# ============================================================
# NAMECARDMANAGER MIGRATION ENRICHMENT FLOW
# ============================================================

status: canonical
system: business-os
layer: flow
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

trigger:
- migration batch requests enrichment

preconditions:
- consumer migration batch is authorized

steps:
- load legacy company strings
- resolve against canonical profiles
- attach matched profile ids where confidence is high
- emit unresolved items for manual review

outputs:
- migration enrichment results
- unresolved queue
- confidence report

failure_path:
- low-confidence items must not auto-attach
- consumer-side fallback stays local only

idempotency_rule:
- same migration row and source input should resolve deterministically against same profile snapshot
