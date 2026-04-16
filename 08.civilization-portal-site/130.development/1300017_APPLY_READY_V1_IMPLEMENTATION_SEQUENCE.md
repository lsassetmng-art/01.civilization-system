# ============================================================
# APPLY READY V1 IMPLEMENTATION SEQUENCE
# ============================================================

status: draft-additive
layer: development
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 順序
# ============================================================

1. portal apply-ready v1
2. CX22073JW core apply-ready v1
3. scenario core apply-ready v1
4. portal seed-ready v1
5. CX22073JW seed-ready v1

# ============================================================
# 2. 理由
# ============================================================

- Portal top helpdesk を先に成立させたい
- knowledge access は CX22073JW core が先
- sinario は後続利用に備えて core だけ先に固定
- seed は DDL の後に適用できるよう分ける

# ============================================================
# 3. v1 完了条件
# ============================================================

- Portal top helpdesk の DB構造が成立
- CX22073JW caller/scope/routing が成立
- BusinessOS AI worker の固定知識 access が成立
- character_profile が正本として成立
- sinario core が成立
