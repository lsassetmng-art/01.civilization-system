# ============================================================
# APPLICATION COMMON COMPONENT OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

overview:
  - このフォルダは application 共通部品の正本置き場とする
  - OS側文書は起点・候補・監査・出所を持つ
  - 共通部品として扱う正本設計はこのフォルダへ集約する

placement_rule:
  - OS固有設計は各OS配下に置く
  - 共通部品正本は 07.applications/00.application-common-components に置く
  - StaticArt 起点でも、共通部品化した時点で本フォルダ側を正本参照点にする

current_origin_groups:
  - StaticArt-origin common components
