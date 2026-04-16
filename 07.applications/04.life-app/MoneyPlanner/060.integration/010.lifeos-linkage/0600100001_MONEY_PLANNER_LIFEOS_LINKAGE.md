# ============================================================
# MONEY PLANNER LIFEOS LINKAGE
# ============================================================

linkages:
  - LifePlanner:
      - 資金計画共有
  - EndOfLifePlanner:
      - 相続準備向け基礎資産情報共有
  - InheritanceSupport:
      - 資産概要共有

rules:
  - 明示共有のみ
  - 必要最小限データのみ
  - 自動判断を外部へ渡さない
