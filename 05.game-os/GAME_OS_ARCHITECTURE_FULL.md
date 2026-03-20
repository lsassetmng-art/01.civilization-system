
# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/20.architecture/20_INDEX.md
# ============================================================

21_GAME_OS_ARCHITECTURE.md
22_GAME_OS_COMPONENT_MODEL.md
23_GAME_OS_DEPENDENCY_RULE.md
24_GAME_OS_DATA_FLOW.md
25_GAME_OS_INTEGRATION_MODEL.md


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/20.architecture/20_OVERVIEW.md
# ============================================================

GameOS architecture layer.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/20.architecture/21_GAME_OS_ARCHITECTURE.md
# ============================================================

GameOS architecture defines
the simulation runtime and world model.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/20.architecture/22_GAME_OS_COMPONENT_MODEL.md
# ============================================================

Core components:

world
entity
simulation
player
events


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/20.architecture/23_GAME_OS_DEPENDENCY_RULE.md
# ============================================================

Game modules depend on
GameOS runtime services.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/20.architecture/24_GAME_OS_DATA_FLOW.md
# ============================================================

player input
→ simulation
→ world update
→ result


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/20.architecture/25_GAME_OS_INTEGRATION_MODEL.md
# ============================================================

GameOS may integrate with

PersonaOS
Application layer

