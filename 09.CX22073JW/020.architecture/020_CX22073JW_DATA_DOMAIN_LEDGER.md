# CX22073JW Data Domain Ledger
- project: CX22073JW
- document_type: data-domain-ledger
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document lists the major data domains of CX22073JW.

## 2. Data Domain List

| No | Domain Name | Data Nature | Main Role | Main Tables | Main Consumers | Priority |
|----|-------------|-------------|-----------|-------------|----------------|----------|
| 1 | Knowledge Core | Fixed knowledge | article / chunk / faq / scope / caller core | `domain_master`, `space_master`, `scope_master`, `article`, `chunk`, `faq`, `caller_master`, `route_policy` | Portal, OS, app, worker | High |
| 2 | Entity / Character | Fixed knowledge | entities, characters, organizations | `entity_master`, `character_profile` | Portal, lore, app support | High |
| 3 | Relation Knowledge | Fixed knowledge | alias / relation / article bindings | `entity_alias`, `relation_master`, `article_entity_binding` | search, RAG, concept linkage | High |
| 4 | Academic Classification | Fixed knowledge | discipline / topic organization | `discipline_master`, `topic_master`, `article_discipline_binding`, `article_topic_binding` | study apps | High |
| 5 | Audience / Difficulty | Reference base | output segmentation | `difficulty_profile_master`, `audience_profile_master`, `article_profile_binding` | study / support | High |
| 6 | Summaries | Fixed knowledge | short summaries | `space_summary`, `scope_summary`, `topic_summary` | Portal, helpdesk | Medium |
| 7 | Learning Path | Template | learning order / prerequisites | `prerequisite_relation`, `learning_path`, `learning_path_item` | study apps | High |
| 8 | Source / Review | Reference base | source / review / trust management | `source_master`, `article_source`, `review_status_master`, `article_review_log` | all domains | High |
| 9 | Timeline / History | Fixed knowledge | event timeline and relations | `timeline_event`, `event_relation`, `event_entity_binding` | history / lore | Medium |
| 10 | Retrieval Strategy | Reference base | retrieval profile | `retrieval_profile`, `scope_retrieval_binding` | AI search | High |
| 11 | Answer Style | Reference base | answer style and template | `answer_style_profile`, `response_template`, `scope_style_binding` | helpdesk / consult | High |
| 12 | Improvement / Analytics | Operation log | question patterns / gaps | `session_log`, `answer_source_log`, `question_pattern`, `knowledge_gap_log` | improvement ops | High |
| 13 | Registry / Governance | Reference base | dataset / taxonomy / version governance | `dataset_registry`, `source_registry`, `taxonomy_registry`, `publication_review_registry`, `version_history_registry` | governance | High |
| 14 | Health Reference | Reference base | health comparison bands | `health_metric_master`, `health_reference_range`, `health_measurement_condition_master`, `health_reference_profile`, `health_reference_source` | BodyMetrics, TrainingCoach | High |
| 15 | Health Score | Reference base | scoring / labels / comments | `health_score_profile`, `health_score_metric_weight`, `health_score_rule_set`, `health_score_metric_band`, `health_score_total_band`, `health_score_comment_template`, `health_score_composite_rule` | BodyMetrics | High |
| 16 | Food / Nutrition | Reference base | food dictionary / nutrition fact / tags | `food_item_master`, `food_alias`, `nutrient_master`, `food_nutrient_fact`, `ingredient_category_master`, `ingredient_allergen`, `ingredient_dietary_tag`, `ingredient_price_band` | MealPlanner, BodyMetrics | High |
| 17 | Intake Reference | Reference base | recommended nutrient targets | `nutrition_reference_profile`, `nutrition_reference_item_master`, `nutrition_reference_source`, `nutrition_intake_reference` | MealPlanner, TrainingCoach | High |
| 18 | Exercise Reference | Reference base | exercise dictionary / body parts / caution | `exercise_master`, `exercise_bodypart_map`, `exercise_caution_template` | TrainingCoach | Medium-High |
| 19 | Lifestyle Benchmark | Reference base | habit / benchmark / guidance | current `health_population_average`, `health_guidance_template`, future `lifestyle_*` | BodyMetrics | Medium |
| 20 | Recipe / Meal Plan | Template | recipe / meal plan template | `recipe_template_master`, `recipe_template_item`, `meal_plan_template`, `meal_plan_template_slot` | MealPlanner | High |
| 21 | Legal Support | Reference / Template | legal topic / document / checklist | `legal_topic_master`, `legal_document_type_master`, `legal_consultation_checklist_template` | LegalSupport | Medium |
| 22 | Inheritance Support | Reference / Template | inheritance category / checklist | `inheritance_asset_category_master`, `inheritance_checklist_template` | InheritanceSupport | Medium |
| 23 | End-of-Life Support | Reference / Template | end-of-life category | `end_of_life_preference_category_master` | EndOfLifePlanner | Medium |
| 24 | Life Event Template | Template | life event preparation templates | `life_event_template_master` | LifePlanner | Medium |

## 3. Boundary Reminder
CX22073JW stores reusable fixed/reference/template knowledge only.
User-specific records are out of scope.

## 8. 追加候補（2026-04-15）

### 8-1. 追加したいデータ領域

| No | 領域名 | 区分 | 役割 | 主要テーブル候補 | 主な利用先 | 優先度 |
|---:|---|---|---|---|---|---|
| 26 | 多言語・用語辞書領域 | 参照基盤 | locale / translation / term alias / 表示名切替を管理 | `locale_master`, `translation_key_master`, `translation_text`, `term_alias_dictionary`, `display_name_locale_variant` | 全アプリ, Portal, MealPlanner, LegalSupport | 高 |
| 27 | 通貨・金額参照領域 | 参照基盤 | currency / rounding / locale別金額表示 / 参考為替を管理 | `currency_master`, `currency_display_rule`, `locale_currency_preference`, `currency_rounding_rule`, `fx_reference_rate` | MoneyPlanner, LifePlanner, Portal | 高 |
| 28 | 単位・換算・地域表示領域 | 参照基盤 | measure unit / 正規化 / 換算 / locale別単位表示を管理 | `unit_master`, `unit_category_master`, `unit_conversion_rule`, `purchasable_unit_reference`, `locale_unit_preference` | MealPlanner, BodyMetrics, TrainingCoach | 高 |
| 29 | 法域・地域制度差分領域 | 参照基盤 | jurisdiction / 地域制度差分 / 手続き窓口差分を管理 | `jurisdiction_master`, `region_master`, `legal_region_requirement`, `procedure_scope_master`, `public_office_reference` | LegalSupport, InheritanceSupport, EndOfLifePlanner | 高 |
| 30 | 公開知識カタログ・採用品質領域 | 登録簿 / 参照基盤 | 公開知識の採用可否、品質、公開範囲、版管理を整理 | `published_knowledge_master`, `published_knowledge_version`, `publication_quality_score`, `publication_visibility_scope`, `adoption_decision_log` | MealPlanner, Portal, 全体統制 | 中〜高 |
| 31 | 適合性・除外条件領域 | 参照基盤 | 対象者適合、非推奨条件、注意文、免責文を管理 | `compatibility_rule_master`, `restriction_tag_master`, `audience_exclusion_rule`, `caution_template`, `disclaimer_template` | MealPlanner, TrainingCoach, LegalSupport | 中〜高 |
| 32 | 共通テンプレート部品領域 | 雛形 / 参照基盤 | checklist / intake question / 文書section部品の再利用基盤 | `checklist_fragment_master`, `question_intake_template`, `document_section_template`, `summary_template_part`, `guidance_phrase_template` | LifePlanner, LegalSupport, InheritanceSupport, EndOfLifePlanner | 中 |
| 33 | 季節・年中行事・時期参照領域 | 参照基盤 | seasonality / annual events / 時期タグ / 準備時期窓を管理 | `season_master`, `annual_event_master`, `region_season_binding`, `timing_window_reference`, `seasonal_tag_master` | MealPlanner, LifePlanner, EndOfLifePlanner | 中 |

### 8-2. 採用優先メモ

先行採用優先は以下とする。

1. 多言語・用語辞書領域
2. 通貨・金額参照領域
3. 単位・換算・地域表示領域
4. 法域・地域制度差分領域

### 8-3. 補足

- No.26〜29 は、複数アプリで横断再利用される可能性が高く、先に台帳固定する価値が高い。
- No.30〜33 は、公開知識品質、説明責任、テンプレ共通化、季節性対応の強化に有効。
- 個別ユーザー値、個別相談本文、個別実行履歴は引き続き各アプリ業務スキーマ側で保持する。

