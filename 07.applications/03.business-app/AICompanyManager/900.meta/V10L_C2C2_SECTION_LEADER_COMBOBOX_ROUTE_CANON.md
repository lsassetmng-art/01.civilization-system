# AICompanyManager V10L-C2C2 Section / Leader Combobox Route Canon

## Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: YES
- SERVER_PATCH: NO
- Purpose: section/Leader route selection UI polish only

## Canonical UI rule

課の選択はボタン群ではなくコンボボックスで行う。

理由:

- 課が増えた時にボタン群では見づらい
- 一括選択の意図が分かりにくい
- 選択状態が分かりづらい
- 実運用では複数課が想定される

## Operation

1. 選択済み大項目を選ぶ
2. 課長へ送るを押す
3. 課コンボボックスから1つ選ぶ
4. 課を適用する
5. Leaderが1人なら自動確定
6. Leaderが複数ならLeaderコンボボックスから1人選ぶ
7. payload previewで同じsection/Leaderが全行へ入ることを確認する

## Safety

C2C2 does not POST.
C2C2 does not write DB.
Actual execution remains locked.
