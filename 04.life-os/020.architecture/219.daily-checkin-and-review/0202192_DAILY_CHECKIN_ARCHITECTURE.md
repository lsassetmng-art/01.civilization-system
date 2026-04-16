# ============================================================
# DAILY CHECKIN ARCHITECTURE
# ============================================================

status: canonical-draft
system: life-os
layer: architecture
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture for daily check-in, daily summary, weekly review,
and status snapshot generation in LifeOS.

summary:
daily-checkin-and-review is the reflective layer of LifeOS.
It turns daily facts into interpretable state snapshots,
supports structured self-awareness,
and provides the entry point for lightweight weekly review.

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

responsible for:
- daily check-in capture
- daily summary generation
- weekly review generation
- status snapshot generation
- review signal generation

not responsible for:
- replacing source record domains
- writing false summary claims
- hiding uncertainty

# ============================================================
# 2. INPUT DOMAINS
# ============================================================

- health-condition
- meal-nutrition
- sleep-recovery
- activity-exercise
- home-and-living
- personal-finance-lite
- memory-life-log

# ============================================================
# 3. OUTPUTS
# ============================================================

- daily status snapshot
- daily summary card
- weekly review card
- trend pointer
- reflection candidate
- assistant support candidate

# ============================================================
# 4. PRINCIPLES
# ============================================================

- summary must be traceable
- low input burden
- uncertainty must remain visible
- review must support continuity, not guilt amplification
