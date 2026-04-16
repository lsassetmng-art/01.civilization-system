# ============================================================
# TRAINING COACH SEED INSERT TRANSFORMATION NOTE
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 120.implementation
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

purpose:
  - seed master row catalog を SQL insert へ変換する際の注意点をまとめる
  - code-based catalog と uuid-based table の橋渡しを整理する
  - 実装前の変換メモとして保持する

transformation_policy:
  - 設計資料では human-readable code を使う
  - DB insert 時には target table の key policy に合わせる
  - code -> id 解決の方法を先に決める
  - guide / safety notice link で参照切れを出さない

candidate_strategies:

strategy_a_natural_key_first:
  description:
    - exercise_category は code をそのまま主キーに使う
    - difficulty_rule も code を自然キーとして扱う候補
  advantage:
    - seed 資料とズレにくい
  caution:
    - rename に弱い

strategy_b_uuid_pk_with_code_column:
  description:
    - 物理PKは uuid
    - catalog code は unique column として持つ
  advantage:
    - 将来の internal reference に強い
  caution:
    - insert 順と id 解決が少し複雑

recommended_direction:
  - master 系は code column を明示的に持つ設計が望ましい
  - join table や guide_content は code 参照の暫定変換表が必要候補
  - 最終決定は DB review で固定する

insert_order_candidate:
  - life.exercise_category
  - life.exercise_item
  - life.exercise_item_safety_notice
  - life.difficulty_rule
  - life.guide_content

transformation_examples:
  exercise_item_code_to_row:
    source:
      - exercise_item_code
      - exercise_category_code
      - exercise_name_key
    target_candidate:
      - exercise_item_id
      - exercise_item_code
      - exercise_category_code
      - exercise_name_key

guide_content_seed_resolution:
  source:
    - guide_content_code
    - exercise_item_code
  target_candidate:
    - resolve exercise_item_id by exercise_item_code
    - insert guide_content row
  caution:
    - locale / version_no / is_active default consistency

link_table_resolution:
  exercise_item_safety_notice:
    source:
      - exercise_item_code
      - safety_notice_code
    target_candidate:
      - resolve exercise_item_id first
      - then insert link row

do_not_rules:
  - ad-hoc manual id mapping を乱立させない
  - 参照先未投入のまま child table を入れない
  - seed catalog と physical insert script の key name を食い違わせない
