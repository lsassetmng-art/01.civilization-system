# ============================================================
# ALLIANCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Alliance is a mutual cooperation agreement between nations.

rules:
- alliance requires mutual positive relation
- alliance is not free

constraints:
- existing_allies must be considered
- if ally A dislikes B:
  -> cannot ally with B
- if ally A supports B:
  -> alliance possible

obligations:
- military_support
- economic_support
- diplomatic_alignment

costs:
- forced involvement in conflicts
- reduced diplomatic flexibility

principle:
- alliance has both benefit and risk
