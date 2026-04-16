# ============================================================
# SHIFT MANAGER COMPETITIVE FEATURE DEVELOPMENT ROADMAP
# ============================================================

status: development-extension
type: competitive-feature-development-roadmap
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This roadmap fixes the development order
for recently adopted competitive features.

# ============================================================
# 2. ADOPTED FEATURE GROUPS
# ============================================================

adopted_feature_groups:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- scheduled automatic draft generation

future_candidates:
- shift exchange request
- support request

# ============================================================
# 3. RECOMMENDED DEVELOPMENT ORDER
# ============================================================

recommended_order:
1. scheduled automatic draft generation
2. requested day-off submission
3. shortage / difference / unconfirmed visualization
4. change confirmation flag
5. headquarters site management dashboard
6. lightweight multi-site analytics
7. future candidate evaluation for exchange/support

# ============================================================
# 4. WHY THIS ORDER
# ============================================================

reasoning:
- scheduled generation directly reduces operator effort
- requested day-off improves planning input quality
- shortage/difference visibility reduces operational accidents
- confirmation improves republication follow-up safety
- headquarters dashboard becomes stronger after underlying counts exist
- analytics should stay lightweight and come after core summary data exists

# ============================================================
# 5. ROADMAP RULES
# ============================================================

roadmap_rules:
- do not let competitive features break the pricing simplicity
- do not let convenience features bypass publication safety
- do not turn ShiftManager into heavy BI or ERP replacement
- keep additions aligned with site-based fixed pricing value

# ============================================================
# 6. CONCLUSION
# ============================================================

Competitive feature development should strengthen:
- operational safety
- planning convenience
- multi-site oversight
without weakening ShiftManager's simple and low-friction positioning.

