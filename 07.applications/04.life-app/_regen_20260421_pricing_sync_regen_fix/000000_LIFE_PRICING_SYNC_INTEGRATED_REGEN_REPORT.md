# ============================================================
# LIFE PRICING SYNC INTEGRATED REGEN REPORT
# ============================================================

status: verify-only
generated_at: 2026-04-21
scope:
- LifePlanner
- LegalSupport
- CareerLaunch

verify_targets:
- LifePlanner = Free 0円 / Family 500円
- LegalSupport = Free 0円 / PlusFamily 500円
- CareerLaunch = Free 0円 / Pro 500円
- stale Business tier absent in CareerLaunch integrated output
- stale plus: 500 / family: 800 absent in LifePlanner integrated output

verification_output:

