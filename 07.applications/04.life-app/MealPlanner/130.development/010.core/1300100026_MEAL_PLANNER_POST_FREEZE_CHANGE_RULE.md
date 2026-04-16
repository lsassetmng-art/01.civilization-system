# MealPlanner Post Freeze Change Rule

## 1. purpose
freeze candidate 後に設計変更が必要になった時の扱いを決める。

## 2. rule_summary
- freeze 後も変更禁止ではない
- ただし変更は軽く扱わない
- major / medium / low の3段階で扱う

## 3. change_levels

### low
examples:
- copy 微修正
- overview の言い回し整理
- typo 修正
required_action:
- detail との整合確認だけでよい

### medium
examples:
- UI flow 微修正
- CSV optional columns の見直し
- notification field の軽微修正
required_action:
- integrated
- related detail docs
- consistency matrix
- traceability matrix
を見直す

### major
examples:
- pricing 変更
- schema 変更
- CX22073JW 境界変更
- support mode 変更
- plan_horizon 変更
- publish policy 変更
required_action:
- cross-document audit 再実施
- freeze candidate 再評価
- Boss 判断で再承認

## 4. forbidden_shortcuts
- integrated だけ直して終える
- detail を更新せずに policy を変える
- traceability を無視する
- implementation都合で rule を黙って変える

## 5. review_rule_after_change
- medium 以上は review signoff template を使う
- major は freeze declaration draft を見直す

## 6. note
freeze candidate は停止ではなく、設計変更のハードルを正しく上げるためのもの
