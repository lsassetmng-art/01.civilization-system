# ============================================================
# LEGAL SUPPORT CATEGORY TEMPLATE MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: architecture
subdomain: domain

category_template_matrix:

  family:
    starter_fields:
      - 関係者
      - 経緯
      - 現在困っている点
      - 次回確認事項

  inheritance:
    starter_fields:
      - 被相続人
      - 相続人候補
      - 遺言有無
      - 財産関連書類
      - 期限

  divorce:
    starter_fields:
      - 当事者
      - 生活状況
      - 子ども関連論点
      - 財産関連論点
      - 相談したい事項

  neighborhood:
    starter_fields:
      - 相手方
      - 発生日
      - 継続状況
      - 証拠有無
      - 相談したい事項

  contract:
    starter_fields:
      - 契約相手
      - 契約日
      - 契約内容要点
      - 問題発生日
      - 保有書類

  consumer:
    starter_fields:
      - 事業者名
      - 購入/契約日
      - 金額
      - トラブル内容
      - 返金/解約希望

  debt:
    starter_fields:
      - 債権者/債務者
      - 発生日
      - 金額
      - 支払状況
      - 督促有無

  labor:
    starter_fields:
      - 勤務先
      - 雇用形態
      - 発生日
      - 問題内容
      - 証拠有無

  housing:
    starter_fields:
      - 物件情報
      - 契約関係
      - 問題発生日
      - 管理会社/貸主
      - 書類有無

  accident:
    starter_fields:
      - 発生日
      - 場所
      - 関係者
      - 損害内容
      - 記録有無

  end_of_life:
    starter_fields:
      - 本人意思
      - 家族共有範囲
      - 遺言関連
      - 医療意思
      - 引継ぎ事項

  other:
    starter_fields:
      - 概要
      - 時系列
      - 関係者
      - 書類
      - 質問

template_rules:
  - テンプレートは入力導線を助けるもので、法的結論を示さない
  - inheritance と end_of_life は LifeOS 他アプリ連携候補として扱う
