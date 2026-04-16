# CX22073JW データ領域台帳
- project: CX22073JW
- document_type: data-domain-ledger
- status: draft
- owner: Boss
- prepared_by: Zero

---

## 0. 目的

本書は、CX22073JW に存在するデータ領域を
**台帳形式で一覧化**し、
今後の追加設計・DDL設計・seed設計・アプリ参照設計の基準にするための文書である。

本台帳では次を整理する。

- 領域名
- 役割
- 主テーブル
- 主利用先
- データ性質
- 優先度
- 備考

---

## 1. 台帳の見方

### 1-1. データ性質
- **固定知識**
  - 概念、説明、FAQ、履歴、一般知識など
- **参照基盤**
  - 比較基準、分類、辞書、タグ、基準帯、出典など
- **雛形**
  - テンプレート、チェックリスト、学習導線など
- **運用ログ**
  - セッション記録、参照元記録、知識ギャップなど

### 1-2. 優先度
- **高**
  - すでに実利用が始まっている、または中核
- **中**
  - 次段階で重要
- **低**
  - 後続拡張でもよい

---

## 2. データ領域一覧

| No | 領域名 | データ性質 | 主役割 | 主テーブル例 | 主利用先 | 優先度 |
|----|--------|------------|--------|---------------|----------|--------|
| 1 | 知識コア領域 | 固定知識 | article / chunk / faq / scope / caller の中核 | `domain_master`, `space_master`, `scope_master`, `article`, `chunk`, `faq`, `caller_master`, `route_policy` | Portal, OS, app, worker | 高 |
| 2 | 人物・実体領域 | 固定知識 | 人物・概念・制度・組織の正本 | `entity_master`, `character_profile` | Portal, lore, history, app support | 高 |
| 3 | 関係知識領域 | 固定知識 | alias / relation / article紐付け | `entity_alias`, `relation_master`, `article_entity_binding` | 検索、RAG、概念接続 | 高 |
| 4 | 学問分類領域 | 固定知識 | discipline / topic による学問整理 | `discipline_master`, `topic_master`, `article_discipline_binding`, `article_topic_binding` | 学習系、一般知識系 | 高 |
| 5 | 難易度・対象者領域 | 参照基盤 | audience / difficulty 出し分け | `difficulty_profile_master`, `audience_profile_master`, `article_profile_binding` | study app, support app | 高 |
| 6 | 要約領域 | 固定知識 | space / scope / topic 単位の短い要約 | `space_summary`, `scope_summary`, `topic_summary` | Portal, helpdesk | 中 |
| 7 | 学習導線領域 | 雛形 | prerequisite / path / step 管理 | `prerequisite_relation`, `learning_path`, `learning_path_item` | 学習アプリ、onboarding | 高 |
| 8 | 出典・監修領域 | 参照基盤 | source / review / publication | `source_master`, `article_source`, `review_status_master`, `article_review_log` | 全体品質管理 | 高 |
| 9 | 歴史・時系列領域 | 固定知識 | event / relation / entity binding | `timeline_event`, `event_relation`, `event_entity_binding` | history, lore, study | 中 |
| 10 | 検索戦略領域 | 参照基盤 | retrieval 方針 | `retrieval_profile`, `scope_retrieval_binding` | AI検索、RAG | 高 |
| 11 | 回答スタイル領域 | 参照基盤 | answer style / template 切替 | `answer_style_profile`, `response_template`, `scope_style_binding` | helpdesk, consult | 高 |
| 12 | 改善・分析領域 | 運用ログ | 問い合わせ、参照元、知識不足を記録 | `session_log`, `answer_source_log`, `question_pattern`, `knowledge_gap_log` | 改善運用 | 高 |
| 13 | 登録簿・ガバナンス領域 | 参照基盤 | dataset / source / taxonomy / version 管理 | `dataset_registry`, `source_registry`, `taxonomy_registry`, `publication_review_registry`, `version_history_registry` | 全体統制 | 高 |
| 14 | 健康基準領域 | 参照基盤 | 健康比較基準帯 | `health_metric_master`, `health_reference_range`, `health_measurement_condition_master`, `health_reference_profile`, `health_reference_source` | BodyMetrics, TrainingCoach | 高 |
| 15 | 健康スコア領域 | 参照基盤 | 健康スコア判定ルール | `health_score_profile`, `health_score_metric_weight`, `health_score_rule_set`, `health_score_metric_band`, `health_score_total_band`, `health_score_comment_template`, `health_score_composite_rule` | BodyMetrics | 高 |
| 16 | 栄養・食材領域 | 参照基盤 | 食材辞書、栄養fact、制約タグ | `food_item_master`, `food_alias`, `nutrient_master`, `food_nutrient_fact`, `ingredient_category_master`, `ingredient_allergen`, `ingredient_dietary_tag`, `ingredient_price_band` | MealPlanner, BodyMetrics | 高 |
| 17 | 推奨摂取基準領域 | 参照基盤 | 年齢・活動量別の栄養目安 | `nutrition_reference_profile`, `nutrition_reference_item_master`, `nutrition_reference_source`, `nutrition_intake_reference` | MealPlanner, TrainingCoach | 高 |
| 18 | 運動基準領域 | 参照基盤 | 運動辞書、対象部位、注意 | `exercise_master`, `exercise_bodypart_map`, `exercise_caution_template` | TrainingCoach, BodyMetrics | 中〜高 |
| 19 | 生活習慣ベンチマーク領域 | 参照基盤 | 睡眠・歩数・水分などの習慣比較 | `health_population_average`, `health_guidance_template`, 将来 `lifestyle_*` 系 | BodyMetrics, TrainingCoach | 中 |
| 20 | レシピ・献立領域 | 雛形 | レシピ・献立テンプレ | `recipe_template_master`, `recipe_template_item`, `meal_plan_template`, `meal_plan_template_slot` | MealPlanner | 高 |
| 21 | 法務一般整理領域 | 参照基盤 / 雛形 | 法務相談前整理、分類、書類 | `legal_topic_master`, `legal_document_type_master`, `legal_consultation_checklist_template` | LegalSupport | 中 |
| 22 | 相続整理領域 | 参照基盤 / 雛形 | 財産分類、相続チェック | `inheritance_asset_category_master`, `inheritance_checklist_template` | InheritanceSupport | 中 |
| 23 | 終活整理領域 | 参照基盤 / 雛形 | 終活カテゴリ、意思整理 | `end_of_life_preference_category_master` | EndOfLifePlanner | 中 |
| 24 | ライフイベント領域 | 雛形 | ライフイベントごとの準備テンプレ | `life_event_template_master` | LifePlanner, EndOfLifePlanner | 中 |
| 25 | 相談・共通サポート領域 | 固定知識 | legal / medical / general support 本文 | `article`, `faq`, `scope_master`, `route_policy` | consult app, Portal | 高 |

---

## 3. 領域別メモ

### 3-1. 知識コア領域
CX22073JW の正体そのもの。
他領域の多くは最終的にこの core と接続される。

### 3-2. 人物・実体領域
人物・組織・制度・概念を article の外でも構造化保持する領域。
Web検索との差別化に効く。

### 3-3. 関係知識領域
alias / relation があることで、
言い換えや概念接続に強くなる。

### 3-4. 学問分類〜学習導線領域
study app 系の中核。
一般教養、資格、専門学習へ拡張しやすい。

### 3-5. 出典・監修・登録簿領域
品質管理の要。
seed だけでなく、今後の監修・公開判定にも使う。

### 3-6. 健康・栄養・食材・運動領域
LifeOS系アプリの共通参照基盤。
個別ユーザー値は保持せず、
比較・判定・提案の土台だけを持つ。

### 3-7. レシピ・献立領域
MealPlanner の出力基盤。
食材辞書や栄養基準領域との接続が強い。

### 3-8. 法務・相続・終活・ライフイベント領域
第3弾寄りだが、台帳上は独立領域として先に固定しておく価値が高い。

---

## 4. 現時点の採用状態

### 4-1. すでに強い領域
- 知識コア領域
- 人物・実体領域
- 関係知識領域
- 学問分類領域
- 学習導線領域
- 出典・監修領域
- 登録簿・ガバナンス領域
- 健康基準領域
- 健康スコア領域
- 栄養・食材領域
- 推奨摂取基準領域
- レシピ・献立領域

### 4-2. これから強化したい領域
- 運動基準領域
- 生活習慣ベンチマーク領域
- 法務一般整理領域
- 相続整理領域
- 終活整理領域
- ライフイベント領域

---

## 5. CX22073JW に入れないもの

以下は本台帳の対象外とする。

- ユーザー個別の健康実測値
- ユーザー個別の1日摂取実績
- 個別相談本文
- 個別案件本文
- 個別相続財産データ
- 個別家族詳細データ
- 個別レシピ実行履歴
- 個別MealPlanner提案結果
- 個別BodyMetrics算出結果

これらは各アプリ業務スキーマで保持する。

---

## 6. 今後の使い方

本台帳は、次の判断の基準に使う。

1. 新テーブル追加時に、どの領域に属するかを先に決める
2. DDL bundle を作る前に、領域単位でまとまりを確認する
3. seed 設計時に、辞書 / 基準 / 雛形 / ログを分ける
4. アプリ別参照マッピングの正本として使う

---

## 7. 次段候補

本台帳の次に作る候補は以下。

1. `023_CX22073JW_DATA_DOMAIN_ADOPTION_STATUS.md`
2. `024_CX22073JW_DATA_DOMAIN_TO_TABLE_MAPPING.md`
3. `025_CX22073JW_APP_TO_DATA_DOMAIN_MAPPING.md`
4. `026_CX22073JW_PHASE_PRIORITY_LEDGER.md`

