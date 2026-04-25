# ============================================================
# PERSONA OS 140.VISUAL TO 070.VISUAL WORK SHEET
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the focused work sheet for absorbing
030.model/010.canonical/140.visual into 030.model/070.visual.

# ============================================================
# 1. CURRENT CANONICAL VISUAL FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/070.visual/0300700000_PERSONA_VISUAL_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/070.visual/0300700001_PERSONA_VISUAL_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/070.visual/0300700002_PERSONA_VISUAL_PROFILE_MODEL.md

# ============================================================
# 2. OLD 140.VISUAL FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/140.visual/0301400001_visual_avatar.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/140.visual/0301400002_visual_asset.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/140.visual/0301400003_animation_profile.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/140.visual/0301400004_visual_state.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/140.visual/0301400005_visual_expression.md

# ============================================================
# 3. FIRST-PASS TARGET MAPPING
# ============================================================

| old_file | suggested_action | suggested_target | reason |
|---|---|---|---|
| 030.model/010.canonical/140.visual/0301400001_visual_avatar.md | merge_or_absorb | 030.model/070.visual | clear visual family match |
| 030.model/010.canonical/140.visual/0301400002_visual_asset.md | merge_or_absorb | 030.model/070.visual | clear visual family match |
| 030.model/010.canonical/140.visual/0301400003_animation_profile.md | merge_or_absorb | 030.model/070.visual | clear visual family match |
| 030.model/010.canonical/140.visual/0301400004_visual_state.md | merge_or_split | 030.model/070.visual or 030.model/030.state | visual-state crosses visual and state meaning |
| 030.model/010.canonical/140.visual/0301400005_visual_expression.md | merge_or_absorb | 030.model/070.visual | clear visual family match |

# ============================================================
# 4. REVIEW TARGETS
# ============================================================

Open and compare these first:
- 030.model/070.visual/*
- 030.model/010.canonical/140.visual/0301400001_visual_avatar.md
- 030.model/010.canonical/140.visual/0301400002_visual_asset.md
- 030.model/010.canonical/140.visual/0301400003_animation_profile.md
- 030.model/010.canonical/140.visual/0301400004_visual_state.md
- 030.model/010.canonical/140.visual/0301400005_visual_expression.md

# ============================================================
# 5. DECISION RULE
# ============================================================

- merge_or_absorb: old meaning should live under 070.visual
- merge_or_split: old meaning is valid but may need split with state domain
