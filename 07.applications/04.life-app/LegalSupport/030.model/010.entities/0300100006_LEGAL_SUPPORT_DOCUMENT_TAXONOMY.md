# ============================================================
# LEGAL SUPPORT DOCUMENT TAXONOMY
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

entity:
  life.document_item

document_taxonomy:

  id:
    examples:
      - 本人確認書類
      - マイナンバー関連
      - 在留関連本人資料

  contract:
    examples:
      - 契約書
      - 合意書
      - 規約同意資料

  letter:
    examples:
      - 通知書
      - 催告書
      - 案内文
      - 内容説明文

  receipt:
    examples:
      - 領収書
      - 支払証明
      - 振込控え

  certificate:
    examples:
      - 各種証明書
      - 公的発行資料
      - 受理証明関連

  family_record:
    examples:
      - 戸籍関連
      - 住民票関連
      - 親族関係確認資料

  property_record:
    examples:
      - 登記関連
      - 資産関連資料
      - 所有関係資料

  consultation_material:
    examples:
      - 相談メモ
      - 面談持参資料
      - 整理資料

  other:
    examples:
      - 上記以外の資料

taxonomy_rules:
  - 初期は大分類を固定し、細分類は note または将来拡張で持つ
  - 大分類は UI フィルタと集計のために安定させる
  - 書類本体ではなくメタ情報管理を初期前提とする
