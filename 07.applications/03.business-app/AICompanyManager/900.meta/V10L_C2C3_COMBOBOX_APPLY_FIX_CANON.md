# AICompanyManager V10L-C2C3 Combobox Apply Fix Canon

## Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: YES
- SERVER_PATCH: NO

## Canon

課長へ送る一括引き渡し先では、課はコンボボックスから1つ選ぶ。

## Assignment department

割り当て先の部門は、選択した課の親部門とする。

Example:

- 対象会社: ウルフ
- 引き渡し先部門: 遠吠え部？
- 引き渡し先課: 遠吠え課？

## Candidate filter

The UI must not show fake fallback section candidates such as plain 「課」.
Only real section candidates from context sections / section_list / section-like organization rows / selected rows with real section fields are allowed.

## Safety

No DB write.
No API POST.
Execution remains locked.
