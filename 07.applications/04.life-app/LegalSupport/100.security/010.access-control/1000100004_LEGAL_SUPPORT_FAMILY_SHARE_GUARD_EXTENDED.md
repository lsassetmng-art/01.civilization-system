# ============================================================
# LEGAL SUPPORT FAMILY SHARE GUARD EXTENDED
# ============================================================

status: draft-formal
system: LegalSupport
layer: security
subdomain: access-control
schema: life

guard_rules:
  - 招待承認前は案件内容を開示しない
  - active membership のみ family view 可能
  - revoked / declined / expired は即時非表示対象
  - family share disable 時は membership を active view から外してよい
  - invitation 操作は audit 対象にする

visibility_rules:
  - visibility_scope=family_shared かつ active membership が family view 成立条件
  - membership だけ active でも case 側が private に戻ったら family view 不可
