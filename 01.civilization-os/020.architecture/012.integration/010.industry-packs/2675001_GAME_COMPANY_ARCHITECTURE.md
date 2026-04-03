# ============================================================
# GAME COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: game-company

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for game_company.

This company type creates connected and standalone games
inside Civilization.


# ============================================================
# 2. CORE RESPONSIBILITIES
# ============================================================

- game concept and product creation
- connected / standalone split management
- update and patch lifecycle
- live event support where applicable
- entitlement-linked release handling


# ============================================================
# 3. SITE POSTURE
# ============================================================

Required:
- headquarters

Recommended:
- office
- studio
- branch


# ============================================================
# 4. OUTPUT POSTURE
# ============================================================

Primary outputs:
- game_connected
- game_standalone


# ============================================================
# 5. FINAL RULE
# ============================================================

game_company must distinguish connected-game operation
from standalone-game release posture.
