
# MealPlanner Table Relation Overview

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. household center
中心は family_profile である。
家族人数、嗜好、制約、予算、目標、private献立、在庫、履歴は household に紐づく。

## 2. planning center
meal_plan が計画ヘッダ、
meal_slot が1食単位、
meal_history が実績である。

monthly -> weekly -> daily は meal_plan.parent_meal_plan_id で表現できる。

## 3. menu center
MealPlanner で直接正本を持つのは user_menu である。
基礎献立は menu_reference_cache、
公開済みユーザー献立は published_user_menu_reference_cache で扱う。

meal_slot / favorite_menu / meal_template_slot は
menu_source_type + menu_reference_id の論理参照で統一する。

## 4. shopping center
shopping_list は meal_plan から生成される。
shopping_list_item は pantry_item 差分結果を含みうる。

## 5. export center
meal_plan_export_job は CSV出力の依頼と生成結果を保持する。
日 / 週 / 月のすべてを target_scope で扱う。

## 6. publish center
user_menu_publish_request は LifeOS 公開フロー境界の保持に使う。
MealPlanner 側は申請状態と結果だけを持ち、審査本体は持たない。

## 7. cache center
ingredient_reference_cache / menu_reference_cache / published_user_menu_reference_cache は
CX22073JW や LifeOS 公開カタログの参照キャッシュである。
これらは正本ではない。
