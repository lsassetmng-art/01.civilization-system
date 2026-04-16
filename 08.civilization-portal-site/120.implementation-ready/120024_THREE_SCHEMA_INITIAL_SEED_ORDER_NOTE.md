# ============================================================
# THREE SCHEMA INITIAL SEED ORDER NOTE
# ============================================================

status: draft-additive
layer: implementation-ready
system: civilization-portal-site
owner: Boss
prepared_by: Zero

seed_order:
1. portal schema DDL
2. CX22073JW core DDL
3. portal initial seed
4. CX22073JW initial seed
5. scenario seed later

reason:
- Portal top helpdesk を先に成立させる
- caller / scope / route_policy を先に成立させる
- sinario は再生構造のため後段でよい
