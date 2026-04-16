# ============================================================
# CX22073JW INITIAL SEED IMPLEMENTATION DESIGN
# ============================================================

status: draft-additive
layer: development
schema: CX22073JW
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 実装方針
# ============================================================

初期 seed は次の順で投入する。

1. domain_master
2. space_master
3. scope_master
4. disclaimer_master
5. caller_master
6. caller_scope_binding
7. route_policy

# ============================================================
# 2. 初期優先 caller
# ============================================================

- portal_site_top
- portal_site_helpdesk
- civilization_os
- persona_os
- business_os
- business_os_ai_worker

# ============================================================
# 3. 初期優先 scope
# ============================================================

- portal_top_helpdesk_default
- civilization_portal_support_basic
- application_directory_support_basic
- os_general_support_basic
- business_os_general_fixed
- erp_general_fixed

# ============================================================
# 4. 原則
# ============================================================

- Portal top helpdesk を最初に成立させる
- BusinessOS AI worker の固定知識 access を最初に成立させる
- 法律 / 医療は disclaimer を先に用意する
