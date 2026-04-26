# AICompanyManager DB DDL Review Notes

phase: Phase AX
status: ddl-review-notes
reviewer: 佐藤（DB担当）
db_apply: false

## 佐藤レビュー観点

1. schemaをbusinessに置く方針でよいか
2. aiworker_robot_idを物理FKにしない方針でよいか
3. 会社共通ルールを単一ルール箱にする方針でよいか
4. 部門別タスク台帳をManager受領台帳に限定する方針でよいか
5. Leader/Worker分解をworkflow_run/stepに寄せる方針でよいか
6. CSV preview/importをbatch/rowに分ける方針でよいか
7. review_item/review_action/delivery_candidateの分離でよいか
8. status値をCHECK制約で持つか、enum tableに分けるか
9. updated_atの自動更新triggerを別Phaseで追加するか
10. RLSは別Phaseで設計する

## DB適用条件

Bossが明示的に DB OK と言うまで適用しない。

## 適用時の想定

Persona側DBで行う可能性が高い場合:
- PERSONA_DATABASE_URL

ERP側DBではない。
