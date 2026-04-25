# ============================================================
# LEGAL SUPPORT PLAN KEY NORMALIZATION NOTE
# ============================================================

status: applied
phase: LEGALSUPPORT_PLAN_KEY_NORMALIZATION
owner: Boss
prepared_by: Zero

canonical_decision:
  - LegalSupport canonical plan key = plus_family
  - display label = PlusFamily
  - family_plus / Family Plus are removed from LegalSupport pricing context

applied_to:
  - LegalSupport source markdown files under app root
  - /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/999900_LEGAL_SUPPORT_INTEGRATED_CANONICAL.md
  - /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/000000_LIFE_APP_LEDGER_CANONICAL.md
  - /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/000001_LIFE_APP_LEDGER.csv
  - /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/000002_LIFE_APP_PRICING_FIX_CHECK_LEDGER.md
  - /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/000003_LIFE_APP_PRICING_FIX_CHECK_LEDGER.csv

result:
  - pricing canonical cleanup complete
  - fixed_clean_count = 10
  - fixed_with_minor_label_drift_count = 0
  - conflict_detected_count = 0
  - amount_unfixed_count = 0
