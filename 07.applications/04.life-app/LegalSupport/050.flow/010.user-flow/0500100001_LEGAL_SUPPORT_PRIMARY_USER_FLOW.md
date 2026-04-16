# ============================================================
# LEGAL SUPPORT PRIMARY USER FLOW
# ============================================================

status: draft-formal
system: LegalSupport
layer: flow
subdomain: user-flow

primary_flow:
  step_01:
    title: 相談案件を作成する
    details:
      - 案件名を入れる
      - 分野を選ぶ
      - 優先度を設定する

  step_02:
    title: テンプレートを選ぶ
    details:
      - 相続
      - 離婚
      - 契約
      - 消費者トラブル
      - 住まい
      - その他

  step_03:
    title: 事実メモを入力する
    details:
      - 事実を書く
      - 推測は分ける
      - 未確認事項を残す

  step_04:
    title: 時系列を整理する
    details:
      - 日付順に並べる
      - 概算日付も登録する
      - 出来事の抜け漏れ確認をする

  step_05:
    title: 関係者と書類を整理する
    details:
      - 関係者を追加する
      - 書類の有無を記録する
      - 不足書類を把握する

  step_06:
    title: 相談前質問を作る
    details:
      - 聞きたいことを並べる
      - 優先順位を付ける
      - 保留事項を明確にする

  step_07:
    title: 相談後履歴を記録する
    details:
      - 相談日時
      - 相手
      - 要点
      - 宿題
      - 次回確認事項

  step_08:
    title: 次回アクションと期限を設定する
    details:
      - やること登録
      - 期限登録
      - 通知設定

  step_09:
    title: 必要に応じて共有する
    details:
      - 家族共有設定
      - PDF出力
      - 共有範囲確認

flow_rules:
  - 共有前に必ず共有範囲確認を入れる
  - 相談内容は事実と結論を混同しない
  - Free では基本記録導線を中心にする
  - PlusFamily では共有・期限・要約を強化する
