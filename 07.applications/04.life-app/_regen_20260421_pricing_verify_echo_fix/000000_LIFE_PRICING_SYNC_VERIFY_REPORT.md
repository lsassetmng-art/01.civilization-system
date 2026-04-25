# ============================================================
# LIFE PRICING SYNC VERIFY REPORT
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

--- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/LifePlanner/0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md ---

--- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/LegalSupport/999900_LEGAL_SUPPORT_INTEGRATED_CANONICAL.md ---
1045:  - Free と PlusFamily統合プランの2段階とする
8280:  - PlusFamily では共有・期限・要約を強化する
15372:  - PlusFamily の共有上限有無の決定
16109:  - pricing は Free / PlusFamily(月額500円)で固定済み
16116:  - Free / PlusFamily 機能差分表の正式化
16603:  - 正本は Free / PlusFamily(月額500円)
17193:  - Free と PlusFamily統合プランの2段階とする
25993:  - PlusFamily では共有・期限・要約を強化する
27790:  - Free と PlusFamily統合プランの2段階とする
35413:  - PlusFamily の共有上限有無の決定

--- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/CareerLaunch/0000009_CAREER_LAUNCH_FULL_INTEGRATED.md ---
4856:- 2-plan billing tiers (Free 0円 / Pro 500円)

============================================================
NEGATIVE CHECK
============================================================
--- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/LifePlanner/0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md ---
OK: no stale pricing found

--- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/CareerLaunch/0000009_CAREER_LAUNCH_FULL_INTEGRATED.md ---
OK: no stale pricing found

