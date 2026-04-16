# ============================================================
# LIFEOS POSITIONING CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

lifeos_positioning:
  domain_family:
    - 法律領域
    - 相談準備領域
    - 家族支援領域

role_in_lifeos:
  - LifeOS における法律相談前後の入口アプリ
  - InheritanceSupport より広い法律領域を扱う
  - EndOfLifePlanner や MoneyPlanner の情報を相談準備に接続する
  - 判断の正本ではなく整理の正本を持つ

relationship_with_neighbor_apps:

  inheritance_support:
    relationship:
      - 相続特化アプリ
      - LegalSupport はその外側の一般法律入口
    differentiation:
      - InheritanceSupport は相続/贈与/遺言準備に深い
      - LegalSupport は契約、家族、金銭、住居、労働など一般法律整理を含む

  end_of_life_planner:
    relationship:
      - 意思情報や引継ぎ意図を持つ上流アプリ
    differentiation:
      - EndOfLifePlanner は人生終盤準備
      - LegalSupport は相談整理

  money_planner:
    relationship:
      - 資産/負債/金銭イベントの上流参照元
    differentiation:
      - MoneyPlanner は金額管理正本
      - LegalSupport は法務文脈整理

positioning_rules:
  - LegalSupport は「判断」より「整理」
  - LegalSupport は「一般法律入口」
  - 相続特化は InheritanceSupport に寄せる
  - 人生設計情報の正本は他LifeOSアプリを尊重する

scope_summary:
  included:
    - 一般法律相談前後整理
    - 家族共有
    - 面談記録
    - 書類整理
  excluded:
    - 税務/法務最終断定
    - 専門家代行
