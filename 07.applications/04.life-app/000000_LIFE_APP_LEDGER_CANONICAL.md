# ============================================================
# LIFE APP LEDGER CANONICAL
# ============================================================

status: canonical-ledger
domain: 01.civilization-system/07.applications/04.life-app
owner: Boss
prepared_by: Zero
source_basis: user-specified-10-files
note:
  - この台帳は、Boss が指定した「この10本」を母集団として作成
  - 共通文書は母集団から除外
  - 実装はまだ行わず、台帳整備のみを対象とする

# ============================================================
# SOURCE BASIS
# ============================================================

included_sources:
  - 000_INHERITANCE_SUPPORT_INTEGRATED_CANONICAL.md
  - 0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md
  - 0000008_BUSINESS_LEGAL_SUPPORT_MD_FULL_INTEGRATED_REGENERATED.md
  - 999900_LEGAL_SUPPORT_INTEGRATED_CANONICAL.md
  - 00_TRAINING_COACH_FULL_INTEGRATED_REGENERATED.md
  - 000_MEAL_PLANNER_FULL_INTEGRATED.md
  - 999_END_OF_LIFE_PLANNER_INTEGRATED_CANONICAL.md
  - 0000007_BODYMETRICS_FULL_INTEGRATED_CANONICAL.md
  - 0000000004_MONEY_PLANNER_MD_MERGED_INTEGRATED.md
  - 0000009_CAREER_LAUNCH_FULL_INTEGRATED.md

excluded_common_documents:
  - 000000_FOUNDATION_CANONICAL.md
  - 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

# ============================================================
# LEDGER TABLE
# ============================================================

| No | App | 日本語名/説明 | カテゴリ | 要約 | 主対象 | 料金 | サポート | Schema | 端末 | 多言語 | 多通貨 | 設計状態 | 実装状態 | 情報源ファイル | 備考 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | InheritanceSupport | 相続準備支援アプリ | 法律 / 相続 | 相続・贈与・遺言・引継ぎ準備を扱う整理支援。相談前準備、関係者整理、資産/書類整理を支援。 | 個人 / 家族 / 高齢家族を支える人 / 相続準備を始めたい人 | Free 0円 / Plus 500円 / Family 800円 | AI支援あり。相談前論点整理、必要確認事項提案、書類不足チェック、メモ要約。 | life | iPhone / Android / PC / Tablet | true | true | regenerated-integrated-canonical | 実装未着手（設計統合版） | 000_INHERITANCE_SUPPORT_INTEGRATED_CANONICAL.md | BusinessOS/ERP の正式業務正本とは分離。法的助言や代理行為は提供しない。 |
| 2 | LifePlanner | 人生計画表アプリ | 人生設計 | 人生全体の中長期計画を整理する主軸アプリ。ライフイベントと目標のロードマップ管理に特化。 | 個人 / 夫婦 / 家族 / 将来設計を整理したい人 | 方針記述に揺れあり。pricing policy は Free 0円 / Family 500円、別記述では Free 0円 / Plus 500円 / Family 800円。 | AI支援あり。計画項目整理、抜け漏れチェック、優先度見直し提案、目標分解下書き。 | life | iPhone / Android / PC / Tablet | true | true | integrated-regenerated | 実装準備完了 / 実装未開始 | 0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md | LifeOS / 人生設計領域の主軸。料金は正本整理が必要。 |
| 3 | BusinessLegalSupport | 事業法務整理アプリ | 法律 / 事業法務 | 個人事業主・小規模事業者向け。契約、労務論点、取引トラブル、規約確認、相談前整理を支援。 | 個人事業主 / 小規模事業者 / 代表者 | Free 0円 / Standard 500円 / Bridge 900円 | AI支援あり。論点整理、契約確認観点提案、期限漏れチェック、メモ要約。 | life | iPhone / Android / PC / Tablet | true | true | canonical-integrated-regenerated | 設計完了 / 実装未着手 | 0000008_BUSINESS_LEGAL_SUPPORT_MD_FULL_INTEGRATED_REGENERATED.md | BusinessOS/ERP 法務正本とは分離。法的助言や代理行為は提供しない。 |
| 4 | LegalSupport | 法律相談サポートアプリ | 法律 / 個人法務 | 日常の法務相談前整理に特化。相談準備・記録・論点整理・継続タスク管理を支援。 | 法律相談を検討している個人 / 家族トラブルや契約トラブルを整理したい人 / 高齢親族や家族を支援する人 | Free 0円 / PlusFamily 500円 | AIチャットによる使い方支援のみ。人間による法務相談は含まない。 | life | iPhone / Android / PC / Tablet | true | true | regenerated-integrated-canonical | 設計固定寄り / 実装未着手 | 999900_LEGAL_SUPPORT_INTEGRATED_CANONICAL.md | 法的判断や法的結論は提供しない。個人法務の総合入口。 |
| 5 | TrainingCoach | トレーニング支援アプリ | 健康 / 運動 | ヨガ、ストレッチ、器具運動、日常運動を支援。生活改善・運動習慣化・体力維持支援が主目的。 | 運動初心者 / 在宅運動ユーザー / 健康維持層 / 体力向上層 | Free 0円 / Premium 500円 | AIチャットサポートのみ。非医療・非判断型。 | life | iPhone / Android / PC / Tablet | true | true | canonical-draft / design-closure | implementation not started | 00_TRAINING_COACH_FULL_INTEGRATED_REGENERATED.md | BodyMetrics inbound、MealPlanner/LifePlanner outbound の summary-first 連携。 |
| 6 | MealPlanner | 献立管理アプリ | 健康 / 食事・献立 | 毎日の献立作成に特化。日/週/月の3粒度で献立提案、買い物導線、CSV出力、ユーザー献立追加と公開申請を扱う。 | 家庭利用者 / 家族 / 食費や栄養を整えたい人 | 無料 0円 / 有料 500円 / 月 | AIチャットのみ | life | 統合書では固定記述未確認 | CX22073JW 側に多言語辞書前提 | 統合書では固定記述未確認 | design freeze (2026-04-15) | not_started | 000_MEAL_PLANNER_FULL_INTEGRATED.md | API exact payload / DB logical schema / screen exact I/O 固定済み。 |
| 7 | EndOfLifePlanner | 終活サポートアプリ | 終活 / 引継ぎ | 終活と引継ぎ整理に特化。医療・介護・葬儀・契約・デジタル遺品を家族引継ぎ前提で整理。 | 個人 / 高齢者 / 家族支援者 | Free 0円 / Family 500円 / Family Plus 900円 | AIチャットのみ。人による医療/介護/法務/税務の判断は含まない。 | life | iPhone / Android / PC / Tablet | true | true | canonical-draft | design_ready / implementation_started false | 999_END_OF_LIFE_PLANNER_INTEGRATED_CANONICAL.md | 相続準備の入口整理を含む。 |
| 8 | BodyMetrics | 基礎情報測定アプリ | 健康 / 記録 | 身体データの記録・可視化・比較・振り返りに特化。LifeOS 内の健康記録ハブ。 | 個人利用 / 家族見守り利用 | Free 0円 / Family Care 300円 | AIチャットのみ。医療相談・診断・治療方針相談は対象外。 | life | 外部連携前提。OS別固定は今回統合書の抽出範囲では未明記 | 記述未確認 | 該当薄 | generated-integrated / fixed-canonical | implementation_ready / implementation_started false | 0000007_BODYMETRICS_FULL_INTEGRATED_CANONICAL.md | MealPlanner / TrainingCoach / LifePlanner と接続。 |
| 9 | MoneyPlanner | お金計画アプリ | お金 / 資金計画 | 家計簿ではなく中長期の資金計画に強いアプリ。人生設計、終活、相続準備の入口と連携。 | 個人 / 夫婦 / 家族 | Free 0円 / Plus Family 500円 | AIチャットのみ。人間サポートなし。 | life | iPhone / Android / PC / Tablet | true | true | canonical-merged | design_complete / implementation_not_started（実装準備完了） | 0000000004_MONEY_PLANNER_MD_MERGED_INTEGRATED.md | LifePlanner / EndOfLifePlanner / InheritanceSupport 連携あり。 |
| 10 | CareerLaunch | 転職応募実行アシスタント | キャリア / 転職活動 | 履歴書作成から面接後のお礼まで、転職活動を抜けもれなく進める独立支援アプリ。求人票貼り付け方式、応募先管理、面接準備、PDF / DOCX 出力を扱う。 | 転職活動中の個人 / 応募書類を整理したい人 / 面接準備を一元管理したい人 | Free / Pro / Business（料金額は今回統合書では未固定） | AI支援あり。assistive drafting allowed。fake experience generation not allowed。real-time interview stealth assistance is not the product goal。Business で優先サポートあり。 | life | iPhone / Android / PC / Tablet | true | true | design-ready-for-implementation | 実装未着手 | 0000009_CAREER_LAUNCH_FULL_INTEGRATED.md | ATS 本体ではない。求人サイト API 非依存。PC/Tablet は文書作成、スマホは面接直前確認と即時メモを重視。 |

# ============================================================
# NOTES
# ============================================================

- 前提:
  - Boss が指定した「この10本」をライフアプリ台帳の正本母集団として採用
- 除外:
  - 000000_FOUNDATION_CANONICAL.md
  - 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
  - 上記2本は共通文書であり、アプリ台帳母集団から除外
- LifePlanner:
  - 統合書内で料金記述に揺れあり
  - pricing policy は Free / Family(500円)
  - 別箇所では Free / Plus(500円) / Family(800円)
- MealPlanner:
  - 今回の統合書抽出範囲では iPhone / Android / PC / Tablet の固定記述を確認できなかった
- BodyMetrics:
  - 今回の統合書抽出範囲では OS別対応の固定記述は未確認
  - 外部連携前提の健康記録ハブとして整理
- BusinessLegalSupport:
  - 日本語の正式アプリ名は明示記述未確認のため、要約ベースで「事業法務整理アプリ」と表記
- InheritanceSupport:
  - 日本語の正式アプリ名は明示記述未確認のため、要約ベースで「相続準備支援アプリ」と表記
- CareerLaunch:
  - 料金プラン名は Free / Pro / Business まで確認できるが、金額固定は今回統合書では未確認
  - 多言語 / 多通貨 / マルチプラットフォーム前提は確認済み

