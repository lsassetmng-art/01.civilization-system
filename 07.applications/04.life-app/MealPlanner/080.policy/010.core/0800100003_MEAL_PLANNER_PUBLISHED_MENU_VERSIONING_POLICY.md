# MealPlanner Published Menu Versioning Policy

## 1. purpose
公開済み user_menu の版管理方針を実装前に固定する。

## 2. core_principles
- private と published は同じ意味で扱わない
- 公開済み献立は直接上書きしない
- 公開後の修正は新しい版として扱う
- 参照安定性を優先する
- 元作成者情報を保持する
- 公開審査本体は LifeOS 側責務とする

## 3. versioning_units
- source private menu:
  - user_menu
- publish flow unit:
  - user_menu_publish_request
- published catalog unit:
  - published_user_menu_catalog entry
- published version unit:
  - published_user_menu_version

## 4. state_intent
- private:
  - household 内で編集可能な元データ
- published:
  - 公開済み参照版
- revised_next_version:
  - 公開済みを元にした次版候補

## 5. version_rules
- 初回公開時:
  - version_no = 1
- 公開済み献立の修正時:
  - 既存 published を直接更新しない
  - private 側で修正版を作る
  - 再申請後、承認されれば version_no を +1 する
- 古い公開版:
  - 参照整合のため保持可能
- catalog の既定表示:
  - 最新 approved / published 版を優先する

## 6. identity_rules
- origin_user_id:
  - 元作成者を保持
- origin_menu_id:
  - 元の private user_menu 系列識別子を保持
- published_menu_reference_id:
  - 公開カタログ側の参照ID
- version_no:
  - 系列内の版番号

## 7. edit_rules
- private user_menu:
  - 作成者 household 内で編集可
- published menu:
  - 直接上書き不可
- revise published menu:
  - 新しい private working copy を作る
- other users:
  - 公開献立は参照候補として使えるが、元公開版そのものの上書き編集はしない

## 8. visibility_rules
- private:
  - household 内のみ
- household:
  - app 内共有
- lifeos_public:
  - publish flow 通過後のみ

## 9. approval_flow_relation
- MealPlanner:
  - 公開申請を出す
  - 申請状態を表示する
  - 反映結果を受け取る
- LifeOS:
  - 審査
  - 承認 / 却下
  - 公開カタログ反映
- CX22073JW:
  - 公開知識としての参照基盤を担う可能性がある

## 10. replacement_rules
- suggestion default:
  - 最新 published version を優先
- existing meal_slot snapshots:
  - 旧版を使っていても snapshot を保持する
- favorite / template:
  - version 固定参照にするか、最新追従にするかは将来詳細化対象
  - 現時点では snapshot 優先で崩れない設計を取る

## 11. reject_rules
- rejected version:
  - published にしない
  - private draft 系列に戻して再修正可能
- rejected reason:
  - review_note で保持可

## 12. non_goals
- 公開審査内部ロジックの詳細化
- ライセンス条項の詳細設計
- 収益分配設計
