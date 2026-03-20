# ============================================================
# PLAYER EMOTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Emotion represents short- and medium-term affective condition.

dimensions:
- happiness
- stress
- satisfaction
- frustration
- grief

purpose:
- influence decisions, productivity, and relationship quality
- connect life outcomes to behavior

rules:
- emotion changes are event-based
- emotion may affect decision context, not replace player agency
- hidden emotional override is forbidden

constitution_alignment:
- event-driven
- no autonomy replacement

final_rule:
Emotion informs decisions but never silently decides for the player.
