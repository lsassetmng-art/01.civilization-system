# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER UPGRADE AND GUIDE COPY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 080.copy-state
owner: Boss
prepared_by: Zero
schema: life

pricing_guide_copy:

  hero_title: "あなたの人生計画を、ひとりでも家族でも。"
  hero_body: "LifePlannerは、人生設計を分かりやすく整理する月額利用型アプリです。"

  free_title: "Free"
  free_price: "無料"
  free_body: "まずは自分の人生計画を整理したい方向け"

  family_title: "Family"
  family_price: "月額500円"
  family_body: "家族と一緒に将来設計を進めたい方向け"

upgrade_prompts:
  family_share_block:
    title: "家族と一緒に整理するにはFamily"
    body: "共有や共同編集は、Familyプランで利用できます。"
    cta: "Familyを見る"

  scenario_compare_block:
    title: "将来案の比較はFamilyで利用できます"
    body: "複数のシナリオを並べて見比べる機能です。"
    cta: "Familyを見る"

  age_view_block:
    title: "年齢別ビューはFamilyで利用できます"
    body: "将来の見通しを年齢軸で整理したいときに役立ちます。"
    cta: "Familyを見る"

guide_copy:
  start_small_title: "最初から全部決めなくて大丈夫です"
  start_small_body: "まずは気になる分野を1つ決めて、少しずつ計画を育てていけます。"
