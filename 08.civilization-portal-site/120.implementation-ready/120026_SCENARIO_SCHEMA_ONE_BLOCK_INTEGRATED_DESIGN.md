# ============================================================
# scenario 設計書
# ワンブロック統合版
# ============================================================

status: canonical-draft
schema: scenario
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
ストーリーモード再生正本 schema である
scenario の設計を
単独で参照できるように統合整理した文書である。

本書の目的は次の通りとする。

- scenario schema の役割を固定する
- scenario が持つべきテーブルを固定する
- chapter / scene / choice / branch / trigger の責務を固定する
- portal との境界を固定する
- 人物情報や知識本文を複製しない原則を固定する

# ============================================================
# 2. schema 名
# ============================================================

シナリオ再生正本 schema 名は次とする。

- scenario

# ============================================================
# 3. scenario の位置づけ
# ============================================================

scenario は、
ストーリーモードの再生構造を保持する正本 schema である。

これは知識本文の正本ではなく、
次を扱う。

- シナリオ本体
- バージョン
- チャプター
- シーン
- シーン内ノード
- 選択肢
- 分岐条件
- トリガー
- 再生プロファイル
- 進行条件
- シナリオ内の人物参照
- シナリオ内のイベント参照
- シナリオ内のアセット参照

# ============================================================
# 4. scenario の責務
# ============================================================

scenario は次を担う。

- ストーリーの再生順管理
- バージョン単位の構成固定
- chapter / scene の階層構成
- 選択肢による分岐
- 条件式による分岐
- シーンごとの表示・再生要素保持
- 再生プロファイル保持
- 進行ルール保持
- 人物 / イベント / アセットの参照

# ============================================================
# 5. scenario に入れないもの
# ============================================================

scenario は再生構造正本であり、
次は正本として持たない。

- 人物本文
- 世界観本文
- 歴史解説本文
- FAQ
- 学問知識
- 法律知識
- 医療知識
- アプリ解説本文
- OS解説本文

原則:
- 再生構造は scenario
- 知識本文は別知識基盤
- scenario は必要な対象を参照する

# ============================================================
# 6. scenario の主要テーブル
# ============================================================

- scenario.scenario_master
- scenario.scenario_version
- scenario.scenario_chapter
- scenario.scenario_scene
- scenario.scenario_scene_node
- scenario.scenario_choice
- scenario.scenario_branch_rule
- scenario.scenario_trigger
- scenario.scenario_playback_profile
- scenario.scenario_character_binding
- scenario.scenario_event_binding
- scenario.scenario_asset_binding
- scenario.scenario_progress_rule

# ============================================================
# 7. scenario_master
# ============================================================

purpose:
- シナリオ本体の識別子
- シナリオ全体の表示名
- シナリオ全体の概要
- 公開状態の保持

columns:
- scenario_master_id uuid not null
- scenario_code text not null
- display_name text not null
- summary text null
- canonical_article_id uuid null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique:
- scenario_code

# ============================================================
# 8. scenario_version
# ============================================================

purpose:
- シナリオの版管理
- どの構成を現在採用するかの基準

columns:
- scenario_version_id uuid not null
- scenario_master_id uuid not null
- scenario_version_code text not null
- version_no integer not null
- release_status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_master_id -> scenario_master.scenario_master_id

unique:
- scenario_version_code

# ============================================================
# 9. scenario_chapter
# ============================================================

purpose:
- シナリオを章単位で区切る

columns:
- scenario_chapter_id uuid not null
- scenario_version_id uuid not null
- chapter_code text not null
- chapter_no integer not null
- display_name text not null
- summary text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_version_id -> scenario_version.scenario_version_id

unique:
- chapter_code

# ============================================================
# 10. scenario_scene
# ============================================================

purpose:
- 実際の再生単位
- テキスト / 演出 / 次遷移の基準点

columns:
- scenario_scene_id uuid not null
- scenario_version_id uuid not null
- scenario_chapter_id uuid null
- scene_code text not null
- scene_no integer not null
- display_name text not null
- scene_type text not null
- playback_text text null
- next_scene_code text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_version_id -> scenario_version.scenario_version_id
- scenario_chapter_id -> scenario_chapter.scenario_chapter_id

unique:
- scene_code

# ============================================================
# 11. scenario_scene_node
# ============================================================

purpose:
- 1 scene の中の細かい構成単位
- 行、演出、表示ブロック、制御ブロックを分ける

columns:
- scenario_scene_node_id uuid not null
- scenario_scene_id uuid not null
- node_no integer not null
- node_type text not null
- display_text text null
- payload_json jsonb null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_scene_id -> scenario_scene.scenario_scene_id

unique:
- (scenario_scene_id, node_no)

# ============================================================
# 12. scenario_choice
# ============================================================

purpose:
- ユーザー選択肢
- choice による次シーン遷移

columns:
- scenario_choice_id uuid not null
- scenario_scene_id uuid not null
- choice_code text not null
- choice_no integer not null
- display_text text not null
- next_scene_code text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_scene_id -> scenario_scene.scenario_scene_id

unique:
- choice_code

# ============================================================
# 13. scenario_branch_rule
# ============================================================

purpose:
- 条件式による分岐制御

columns:
- scenario_branch_rule_id uuid not null
- branch_rule_code text not null
- scenario_scene_id uuid not null
- condition_type text not null
- condition_json jsonb not null
- pass_next_scene_code text null
- fail_next_scene_code text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_scene_id -> scenario_scene.scenario_scene_id

unique:
- branch_rule_code

# ============================================================
# 14. scenario_trigger
# ============================================================

purpose:
- シーン到達時などに発火するトリガー

columns:
- scenario_trigger_id uuid not null
- trigger_code text not null
- scenario_scene_id uuid not null
- trigger_type text not null
- trigger_payload_json jsonb null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_scene_id -> scenario_scene.scenario_scene_id

unique:
- trigger_code

# ============================================================
# 15. scenario_playback_profile
# ============================================================

purpose:
- 再生スタイル定義
- 表示速度 / 演出方針 / UI制御のプロファイル

columns:
- scenario_playback_profile_id uuid not null
- playback_profile_code text not null
- display_name text not null
- description text null
- playback_json jsonb null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique:
- playback_profile_code

# ============================================================
# 16. scenario_character_binding
# ============================================================

purpose:
- scene と人物の紐付け
- scene 内での役割を保持

columns:
- scenario_character_binding_id uuid not null
- scenario_scene_id uuid not null
- character_entity_id uuid not null
- role_in_scene text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_scene_id -> scenario_scene.scenario_scene_id

# ============================================================
# 17. scenario_event_binding
# ============================================================

purpose:
- scene とイベントの紐付け

columns:
- scenario_event_binding_id uuid not null
- scenario_scene_id uuid not null
- timeline_event_id uuid not null
- binding_role text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_scene_id -> scenario_scene.scenario_scene_id

# ============================================================
# 18. scenario_asset_binding
# ============================================================

purpose:
- scene とアセットの紐付け

columns:
- scenario_asset_binding_id uuid not null
- scenario_scene_id uuid not null
- asset_code text not null
- asset_role text not null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_scene_id -> scenario_scene.scenario_scene_id

# ============================================================
# 19. scenario_progress_rule
# ============================================================

purpose:
- version 単位の進行条件
- 開放条件や完了条件の保持

columns:
- scenario_progress_rule_id uuid not null
- progress_rule_code text not null
- scenario_version_id uuid not null
- rule_type text not null
- rule_json jsonb not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- scenario_version_id -> scenario_version.scenario_version_id

unique:
- progress_rule_code

# ============================================================
# 20. 基本関係
# ============================================================

- scenario_master 1 --- n scenario_version
- scenario_version 1 --- n scenario_chapter
- scenario_version 1 --- n scenario_scene
- scenario_chapter 1 --- n scenario_scene
- scenario_scene 1 --- n scenario_scene_node
- scenario_scene 1 --- n scenario_choice
- scenario_scene 1 --- n scenario_branch_rule
- scenario_scene 1 --- n scenario_trigger
- scenario_scene 1 --- n scenario_character_binding
- scenario_scene 1 --- n scenario_event_binding
- scenario_scene 1 --- n scenario_asset_binding
- scenario_version 1 --- n scenario_progress_rule
