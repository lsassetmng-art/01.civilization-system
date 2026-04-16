# ============================================================
# CX22073JW AND SCENARIO IMPLEMENTATION DESIGN
# ============================================================

status: draft-additive
layer: development
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 実装方針
# ============================================================

- CX22073JW は知識正本を先に整備する
- scenario は再生正本として別実装する
- Portal / OS / application / BusinessOS AI worker は caller と scope 指定で CX22073JW にアクセスする
- ストーリーモード再生は scenario を使う

# ============================================================
# 2. 実装順
# ============================================================

1. CX22073JW 中核
2. CX22073JW.character_profile
3. scenario 中核
4. schema 間参照
5. caller / scope 初期値
