# ============================================================
# LEGAL SUPPORT BOUNDARY POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries

boundary_principles:
  - 本アプリは法律相談支援アプリであり法律判断提供アプリではない
  - ユーザー入力をそのまま法的事実として確定しない
  - 専門家判断が必要な領域を明確に外へ出す
  - 緊急性の高い案件では外部相談導線を優先する

allowed_outputs:
  - 相談準備用の論点整理
  - 時系列整理
  - 書類チェックリスト
  - 質問リスト
  - 相談履歴整理
  - 次回アクション整理
  - 家族共有用要約

disallowed_outputs:
  - 違法 / 適法の断定
  - 勝てる / 勝てないの断定
  - 手続成功保証
  - 専門家の署名代替
  - 法的効果の保証

risk_boundary_cases:
  urgent_cases:
    - 生命身体の危険
    - 差し迫った期限
    - 深刻な家庭内危機
    handling:
      - 専門家または公的窓口相談を優先案内する

  high_complexity_cases:
    - 相続争い
    - 離婚紛争
    - 多額金銭トラブル
    - 事業契約紛争
    handling:
      - 整理支援は行う
      - 結論判断は専門家に委ねる

recording_policy:
  - fact と assumption を分離保持する
  - source がある内容は source_note を持てるようにする
  - 未確認事項は verification_status で管理する

sharing_boundary:
  - 家族共有は明示設定のみ
  - 外部専門家共有は将来拡張
  - 常時公開リンクは使わない
  - 書類単位で共有除外を設定できるようにする
