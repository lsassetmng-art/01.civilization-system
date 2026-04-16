# MealPlanner State Transition Design

## 1. purpose
MealPlanner の主要状態を、実装前に exact に固定する。

## 2. design_scope
- meal_plan
- meal_slot.actual_status
- shopping_list.purchase_status
- user_menu.publication_status
- user_menu_publish_request.submission_status
- meal_plan_export_job.export_status

## 3. common_principles
- 状態は enum に準拠する
- 状態遷移は自由遷移にしない
- private / household / lifeos_public の境界を壊す遷移は禁止
- 公開審査本体は LifeOS 側責務
- MealPlanner 側は申請状態と反映状態を持つ
- 実績は原則巻き戻しより追記で扱う

## 4. meal_plan state

### state_definition
- draft
- active
- completed
- archived

### meaning
- draft:
  - 生成直後または編集中
- active:
  - 今後使う計画
  - 現在運用中の計画
- completed:
  - 期間終了済み
- archived:
  - 長期保管対象
  - 通常導線から外す

### allowed_transitions
- draft -> active
- draft -> archived
- active -> completed
- active -> archived
- completed -> archived

### forbidden_transitions
- archived -> draft
- completed -> active
- archived -> active

### transition_triggers
- generate_plan_success:
  - draft 作成
- user_confirm_use:
  - draft -> active
- target_end_date_passed:
  - active -> completed
- archive_action:
  - draft/active/completed -> archived

## 5. meal_slot actual_status state

### state_definition
- planned
- changed
- skipped
- eating_out
- convenience_food

### meaning
- planned:
  - 計画どおり
- changed:
  - 献立差し替え済み
- skipped:
  - 食事枠を飛ばした
- eating_out:
  - 外食へ置換
- convenience_food:
  - 市販品 / 簡易食へ置換

### allowed_transitions
- planned -> changed
- planned -> skipped
- planned -> eating_out
- planned -> convenience_food
- changed -> eating_out
- changed -> convenience_food
- changed -> skipped

### notes
- 実績変更時は meal_history を追記する
- actual_status の変更だけで履歴を代用しない

## 6. shopping_list purchase_status state

### state_definition
- draft
- active
- completed
- archived

### meaning
- draft:
  - 生成直後
- active:
  - 買い物中
- completed:
  - 買い物完了
- archived:
  - 保管状態

### allowed_transitions
- draft -> active
- active -> completed
- completed -> archived
- draft -> archived

### transition_triggers
- shopping_generate:
  - draft 作成
- first_check_action:
  - draft -> active
- all_items_checked_or_user_complete:
  - active -> completed
- archive_action:
  - completed -> archived

## 7. user_menu publication_status state

### state_definition
- private
- draft
- review_pending
- published
- rejected

### meaning
- private:
  - household 内のみ利用
  - 公開申請前
- draft:
  - 公開準備中
- review_pending:
  - LifeOS 公開審査待ち
- published:
  - 公開済み
- rejected:
  - 公開却下済み

### allowed_transitions
- private -> draft
- draft -> review_pending
- review_pending -> published
- review_pending -> rejected
- rejected -> draft

### forbidden_transitions
- private -> published
- draft -> published
- rejected -> published directly

### transition_triggers
- user_prepare_publish:
  - private -> draft
- submit_publish_request:
  - draft -> review_pending
- lifeos_approved:
  - review_pending -> published
- lifeos_rejected:
  - review_pending -> rejected
- user_revise_after_reject:
  - rejected -> draft

## 8. user_menu_publish_request submission_status state

### state_definition
- draft
- requested
- review_pending
- approved
- rejected
- published

### meaning
- draft:
  - 申請情報作成中
- requested:
  - 送信直後
- review_pending:
  - 審査待ち
- approved:
  - 承認済みだが反映待ちを含みうる
- rejected:
  - 却下
- published:
  - 公開反映完了

### allowed_transitions
- draft -> requested
- requested -> review_pending
- review_pending -> approved
- review_pending -> rejected
- approved -> published

### notes
- user_menu.publication_status と submission_status は同一ではない
- submission_status は申請フロー状態
- publication_status は献立公開状態

## 9. meal_plan_export_job export_status state

### state_definition
- requested
- generated
- failed

### meaning
- requested:
  - 出力依頼済み
- generated:
  - CSV 生成完了
- failed:
  - 生成失敗

### allowed_transitions
- requested -> generated
- requested -> failed

### retry_policy
- failed の場合は新規 export_job を作る
- 同一 job を巻き戻さない

## 10. visibility_scope state intent

### scope_definition
- private
- household
- lifeos_public

### rules
- create 時の既定は private
- household は app 内共有
- lifeos_public は publish flow 通過後のみ
- lifeos_public を request で直接確定しない

## 11. free_paid_interaction_notes
- free / paid は状態そのものではない
- state transition を課金で増やさず、使える行為を変える
- 例:
  - pantry_inventory の full edit は paid
  - family shared check は paid
  - state model 自体は共通

## 12. non_goals
- 状態遷移に実装手順を混ぜない
- DB trigger 詳細を書かない
- LifeOS 審査内部状態を MealPlanner に持ち込まない
