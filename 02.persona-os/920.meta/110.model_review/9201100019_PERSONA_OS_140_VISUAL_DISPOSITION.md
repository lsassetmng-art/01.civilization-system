# ============================================================
# PERSONA OS 140.VISUAL DISPOSITION
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the final disposition
for reviewed 140.visual old canonical models.

# ============================================================
# 1. DISPOSITION
# ============================================================

| old_file | disposition | canonical_target | reason |
|---|---|---|---|
| 030.model/010.canonical/140.visual/0301400001_visual_avatar.md | add_as_new_canonical_submodel | 030.model/070.visual/0300700003_PERSONA_VISUAL_AVATAR_MODEL.md | avatar concept is valid and missing in current canonical visual set |
| 030.model/010.canonical/140.visual/0301400002_visual_asset.md | add_as_new_canonical_submodel | 030.model/070.visual/0300700004_PERSONA_VISUAL_ASSET_MODEL.md | asset concept is valid and missing in current canonical visual set |
| 030.model/010.canonical/140.visual/0301400003_animation_profile.md | add_as_new_canonical_submodel | 030.model/070.visual/0300700005_PERSONA_ANIMATION_PROFILE_MODEL.md | animation profile is a valid missing visual submodel |
| 030.model/010.canonical/140.visual/0301400004_visual_state.md | add_as_new_canonical_submodel | 030.model/070.visual/0300700006_PERSONA_VISUAL_STATE_MODEL.md | visual-state meaning is best owned by visual domain |
| 030.model/010.canonical/140.visual/0301400005_visual_expression.md | add_as_new_canonical_submodel | 030.model/070.visual/0300700007_PERSONA_VISUAL_EXPRESSION_MODEL.md | visual expression is a valid missing visual submodel |

# ============================================================
# 2. DECISION RULE
# ============================================================

add_as_new_canonical_submodel:
old file contributes a valid missing canonical visual concept
