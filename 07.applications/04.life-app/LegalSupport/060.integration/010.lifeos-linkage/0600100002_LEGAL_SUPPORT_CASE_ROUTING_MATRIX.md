# ============================================================
# LEGAL SUPPORT CASE ROUTING MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: integration
subdomain: lifeos-linkage

routing_matrix:
  inheritance_related:
    primary_target: InheritanceSupport
    examples:
      - 相続人整理
      - 遺産分割
      - 贈与記録
      - 遺言確認

  business_related:
    primary_target: BusinessLegalSupport
    examples:
      - 事業契約
      - 取引先トラブル
      - 事業上の未回収
      - 労務問題

  end_of_life_related:
    primary_target: EndOfLifePlanner
    examples:
      - 終活準備
      - 医療意思整理
      - 家族引継ぎ
      - 遺言周辺整理

  personal_general_legal:
    primary_target: LegalSupport
    examples:
      - 近隣トラブル
      - 消費者トラブル
      - 住まい
      - 離婚前整理
      - 契約確認前整理

routing_rules:
  - 複数候補がある場合は LegalSupport を起点に保持する
  - 二次連携先はユーザーが選択できる
  - 振り分けは提案であり強制移動ではない
