# ============================================================
# PERSONA BACKGROUND DISPLAY APP REFERENCE NOTE
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - Persona and Background Display Common を各 Life app がどう参照するかを固定する
  - display common と app固有演出の境界を実運用目線で明確化する
  - stakeholder_registry_component / Advisor Share Common との役割差を保持する

subject_component:
  - Persona and Background Display Common

app_reference_note:

  CareerLaunch:
    strongest_reference_usage:
      - top screen persona display
      - interview prep screen persona display
      - document assist screen persona display
      - background mood switching for work / interview / review context
    display_expectation:
      - professional and lightweight
      - dense mobile-safe layout
      - low-noise background mode during document editing
    keep_app_specific_outside:
      - 応募文脈に応じた演出文
      - 面接向け個別誘導文
      - app固有の persona tone switching logic

  LegalSupport:
    strongest_reference_usage:
      - consultation entry persona display
      - case summary screen persona display
      - background calming mode
    display_expectation:
      - trust-oriented
      - readable and low-stimulation
      - sensitive-content-safe background handling
    keep_app_specific_outside:
      - 法律相談向け誘導文
      - 相談種別別の専門トーン制御
      - app固有の caution wording

  InheritanceSupport:
    strongest_reference_usage:
      - stakeholder-heavy overview screen persona display
      - procedure guidance screen persona display
      - background theme for calm procedural flow
    display_expectation:
      - emotionally stable
      - family-context friendly
      - clutter-safe background selection
    keep_app_specific_outside:
      - 相続特有の説明導線
      - 家族関係に応じた専門誘導
      - app固有の感情配慮文言

  EndOfLifePlanner:
    strongest_reference_usage:
      - planning overview persona display
      - checklist / preparation screen persona display
      - quiet background mode for sensitive planning
    display_expectation:
      - soft and low-pressure
      - emotionally considerate
      - simplified fallback display on dense screens
    keep_app_specific_outside:
      - 終活特有の誘導文
      - 心理的配慮ロジック本体
      - app固有の重要順表示制御

  MoneyPlanner_partial_reuse:
    strongest_reference_usage:
      - optional top summary persona display
      - optional background support on overview pages
    display_expectation:
      - minimal
      - non-intrusive
      - finance-first visibility
    keep_app_specific_outside:
      - 金融判断誘導
      - app固有の優先表示ルール
      - 数値重視画面での個別抑制ロジック

cross_app_display_rules:
  - persona は表示参照を共通化する
  - background は lightweight fallback を共通化する
  - dense screen では低刺激表示を優先する
  - sensitive screen では background emphasis を弱める
  - app固有の演出文や tone 制御は各app側に残す

relationship_note:
  - stakeholder_registry_component は人物/組織構造を持つ
  - Advisor Share Common は viewer/editor/review sharing を持つ
  - Persona and Background Display Common は display/reference/lightweight behavior を持つ
  - 3者は統合しない

reference_judgment:
  - CareerLaunch / LegalSupport / InheritanceSupport / EndOfLifePlanner では採用価値が高い
  - MoneyPlanner は partial reuse が自然
  - 次段で official adoption state へ上げる候補として扱える
