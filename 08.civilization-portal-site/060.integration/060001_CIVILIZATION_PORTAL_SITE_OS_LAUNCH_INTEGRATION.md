# ============================================================
# CIVILIZATION PORTAL SITE OS LAUNCH INTEGRATION
# ============================================================

status: canonical-design
layer: integration
domain: os-launch
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site と各OS Web入口との統合原則を定義する。

# ============================================================
# 2. 統合原則
# ============================================================

- Portal Site は許可済みWeb入口URLを用いる。
- Portal Site は最小限の遷移文脈のみ渡す。
- 各OSは自OS側でセッション再確認および内部権限確認を行う。
- OS間の直接リンクは許可しない。

# ============================================================
# 99. 上位参照
# ============================================================

本個別文書を読む際の上位参照は次の通りとする。

root:
- ../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

layer:
- 同一レイヤの *_OVERVIEW.md
- 同一レイヤの *_INDEX.md

原則として、
個別文書で詳細を確認し、
必要に応じて同一レイヤの overview / index へ戻り、
さらに必要に応じてルート正本へ戻る。
