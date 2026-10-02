# EndOfLifePlanner FamilyLegacyAI R4C Questionnaire and UI Copy Draft

FINAL_STATUS=QUESTIONNAIRE_UI_COPY_DRAFT_NOT_IMPLEMENTED
PATCH=NO
DB_CONNECTION=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Purpose

This document defines questionnaire items and UI copy for EndOfLifePlanner FamilyLegacyAI.

R4C focuses on making registrant tendency registration easy for ordinary users while preserving safety, privacy, and person-likeness boundaries.

This is a design draft only. No implementation is performed.

---

## 2. Core UI Copy

Feature label:

- 家族相談AI

Short explanation:

- あなたの記録・価値観・話し方をもとに、家族が将来相談できるAIを作成します。

Disclosure banner:

- 登録者本人の記録・価値観・話し方をもとにしたAIです。
- 本人そのものではありません。

Questionnaire explanation:

- 性格診断ではありません。
- あなたらしい考え方・話し方を残すための質問です。
- 回答が多いほど、相談文にあなたらしさを反映しやすくなります。

Privacy copy:

- 親戚や家族など第三者の個人情報は、必要最小限で登録してください。
- 本人文脈vaultは暗号化して扱います。
- 復号キーはDBに保存しません。

CX copy:

- 知識の補助にCX22073JWを使う場合があります。
- CXの知識は背景情報として使い、本人の記憶としては扱いません。

Emergency copy:

- 重大・緊急の相談では、登録された大人に安全確認の案内を送る場合があります。
- 利用者本人には「通知しました」と表示しません。

---

## 3. Setup Course Selection

Screen title:

- どのくらい登録しますか？

Options:

1. 3分で作る
   - まず最低限の本人らしさを登録します。
   - 選択式10問、短答3問。

2. 10分で作る
   - 相談文に反映しやすい価値観を登録します。
   - 選択式30問、短答10問、相談シーン5個。

3. しっかり作る
   - 手紙、音声、動画、思い出、知識領域、本人文脈vaultまで登録します。

Default recommended:

- 10分で作る

---

## 4. 3-Minute Course Questions

### 4.1 Multiple Choice 10

Q1. 子供や家族が失敗した時、まず何を伝えたいですか？

- まず落ち着いてほしい
- 失敗の原因を整理してほしい
- 何度でもやり直せると伝えたい
- 現実的に次の手を考えてほしい
- 一人で抱えないでほしい

Q2. 励ます時のあなたに近いものは？

- やさしく寄り添う
- 短く背中を押す
- 現実的に整理する
- 多少厳しくても前を向かせる
- 黙って見守る

Q3. お金について大事だと思うことは？

- 無駄遣いしない
- 稼ぐ力をつける
- 借金に気をつける
- 家族を守るために使う
- 経験にもお金を使う

Q4. 仕事について大事だと思うことは？

- 続ける力
- 稼ぐ力
- 信用
- 効率
- 自分で考える力

Q5. 家族について大事だと思うことは？

- 守ること
- 話を聞くこと
- 干渉しすぎないこと
- 困った時に助けること
- 感謝を伝えること

Q6. つらい時にかけたい言葉は？

- 無理しなくていい
- まず休め
- 一人で抱えるな
- 今できることを一つやろう
- 必ず立て直せる

Q7. あまり使ってほしくない言い方は？

- 命令口調
- 説教っぽい言い方
- 軽すぎる励まし
- 冷たい正論
- 大げさな慰め

Q8. 相談への返し方はどちらに近いですか？

- まず共感する
- まず解決策を出す
- 共感してから整理する
- 現実をはっきり言う
- 本人に考えさせる

Q9. 文章の長さは？

- 短く明確
- 普通
- 少し長め
- 手紙のように長め
- 相手の状態に合わせる

Q10. 本人らしさの強さは？

- 低め
- 中くらい
- 高め
- 口調も少し反映
- 口調より価値観重視

### 4.2 Short Answer 3

SA1. 家族に一番残したい言葉は何ですか？

SA2. 子供が落ち込んだ時、あなたなら最初に何と言いますか？

SA3. これだけは言ってほしくない、という言い方はありますか？

---

## 5. 10-Minute Course Additions

### 5.1 Scene-Based Prompts

Scene 1. 仕事で失敗した時

- まず何を伝えたいですか？
- 何をしてほしいですか？
- 何は避けてほしいですか？

Scene 2. 進路で迷っている時

- 自由に選ばせたいですか？
- 現実的に助言したいですか？
- 最後に何を伝えたいですか？

Scene 3. お金に困っている時

- まず確認してほしいことは？
- 絶対に避けてほしいことは？
- 助けを求める相手は誰がよいですか？

Scene 4. 家族と揉めた時

- 謝ることを重視しますか？
- 距離を取ることを重視しますか？
- 関係を戻す時に大事なことは？

Scene 5. 寂しい時、会いたい時

- どんな言葉をかけたいですか？
- 泣いてもよいと伝えますか？
- 現実の家族や友人に話してほしいですか？

### 5.2 Slider Questions

Slider 1.

- やさしく寄り添う
- 現実的に助言する

Slider 2.

- まず共感する
- まず解決策を出す

Slider 3.

- 自由に選ばせる
- しっかり導く

Slider 4.

- 短く言う
- 丁寧に長く伝える

Slider 5.

- 感情を大事にする
- 行動を大事にする

---

## 6. Deep Course Additions

Deep items:

- 手紙を登録
- 音声を登録
- 動画を登録
- 思い出を登録
- 家族へのメッセージを登録
- 知識領域を登録
- 本人文脈vaultを登録
- NG表現を登録
- 死後に見せたい節目メッセージを登録

Milestone message prompts:

- 10歳になった時
- 中学生になった時
- 高校生になった時
- 18歳になった時
- 20歳になった時
- 就職した時
- 結婚した時
- 子供が生まれた時
- 仕事で失敗した時
- 大きな決断で迷った時

---

## 7. Knowledge Domain UI Copy

Screen title:

- 詳しかった分野を登録

Explanation:

- どの分野に詳しかったかも、本人らしさの一部です。
- 詳しかった分野では少し深く、専門外の分野では慎重に返答します。

Depth labels:

1. 少し知っている
2. 家族に話せる
3. 相談に乗れる
4. 仕事で使っていた
5. 人に教えられる
6. 専門家レベル

CX permission copy:

- この分野では、CX22073JWの知識を背景情報として使う。
- 背景情報は本人の記憶としては扱いません。

Sensitive domain warning:

- 医療・法律・相続・契約については、断定せず専門家への相談を促します。

---

## 8. Private Context Vault UI Copy

Screen title:

- 本人文脈vault

Explanation:

- 親戚、家族、友人、好きな芸能人、作品、趣味、場所などを登録できます。
- 相談文を本人らしくするための補助情報です。

Entity categories:

- 親戚
- 家族
- 友人
- 恩師
- 好きな芸能人
- 好きなスポーツ選手
- 好きなアーティスト
- 好きな歴史上の人物
- 好きな作品
- 音楽
- 映画
- アニメ
- 漫画
- 本
- 趣味
- 場所
- ブランド
- 食べ物

Public figure caution:

- 好きだった対象として話題や例えに使えます。
- 芸能人本人になりすましたり、公認関係があるようには表示しません。

Vault encryption copy:

- この情報は暗号化して扱います。
- 平文の第三者情報をサーバーに保存しません。
- 復号キーはDBに保存しません。

---

## 9. Emergency Contact UI Copy

Screen title:

- 緊急連絡先

Explanation:

- 重大・緊急の相談があった場合、登録された大人に安全確認の案内を送る場合があります。
- 利用者本人には「通知しました」と表示しません。
- 通知先には、自然な声かけ方法や相談先を案内します。

Contact fields:

- 名前
- 続柄
- 通知方法
- 優先順位
- 通知するリスク

Risk flags:

- 未成年の安全
- 自傷リスク
- 他害リスク
- 医療緊急
- 虐待/DV/支配関係の疑い

Abuse/DV warning:

- 通知先が危険人物の可能性がある場合、通常通知は止め、別の対応に切り替えます。

---

## 10. Backup and Restore UI Copy

Screen title:

- バックアップ/復元

Backup copy:

- 本人文脈vaultを暗号化してバックアップできます。
- 機種変更や死後の復元に備えます。

Options:

- 端末内に保存
- アプリDBに暗号化バックアップ
- Driveに暗号化ファイルを保存
- 復元キットを作成
- 信頼できる人と分散キーを設定

Key warning:

- 復号キーはDBに保存しません。
- 復元キーを失うと復元できない場合があります。

Minor restore warning:

- 未成年が復元する場合は、保護者または後見人の承認が必要です。

Adult restore copy:

- 成人後は、本人ログインと復元キーで復元できます。

---

## 11. Chat Screen Copy

Screen title:

- 相談する

Persistent disclosure:

- 登録者本人の記録・価値観・話し方をもとにしたAIです。
- 本人そのものではありません。

Input placeholder:

- 今の気持ちや相談したいことを書いてください。

Source hint:

- この返答は、登録された価値観・知識領域・本人文脈を参考にしています。

Emergency-safe supportive text examples:

- 一人で抱えなくていい。
- 今すぐ全部を決めなくていい。
- 近くに信頼できる人がいるなら、少しだけ話してみて。

Do not show:

- 緊急連絡先に通知しました。
- 保護者に連絡しました。
- 家族に知らせました。

---

## 12. Preview Review Copy

Screen title:

- 相談プレビュー

Actions:

- この返し方でよい
- もっと優しく
- もっと現実的に
- 短く
- 長く
- この言い方は使わない
- 参考にした内容を確認

Preview warning:

- プレビューでは実際の緊急通知は送りません。
- 安全判定のみ確認します。

---

## 13. Implementation Test Markers for Future

Future UI tests should check:

- disclosure banner is outside message bubble
- message body does not repeat not-person disclaimer every time
- minor use is blocked without guardian consent
- emergency screen says notification is not shown to the user
- chat screen never displays "通知しました"
- vault screen shows encryption and key separation
- backup screen supports DB encrypted backup and Drive encrypted file
- public figure copy prohibits impersonation and endorsement implication
- knowledge domain screen says CX is background reference only
- preview mode does not send real emergency notifications

---

## 14. R4C Decision

Decision:

- QUESTIONNAIRE_UI_COPY_READY_FOR_UI_DESIGN_OR_RUNTIME_IMPLEMENTATION_PREP
- NOT_READY_FOR_IMPLEMENTATION
- NOT_READY_FOR_DB_APPLY
- NOT_READY_FOR_API_POST

Recommended next:

- R7 implementation readiness bundle
- or R4A readonly DB/schema inventory
- or R8 UI prototype after explicit implementation GO
