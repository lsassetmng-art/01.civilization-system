# MealPlanner Published Menu Search Sort Policy

## 1. purpose
公開済み献立を含む検索 / 提案時の並び順ルールを固定する。

## 2. candidate_source_scope
- cx22073jw_base
- user_private
- user_published

## 3. default_priority_by_context

### direct_search_context
priority_order:
- text_match_strength
- filter_match_strength
- source_priority_contextual
- quality_score
- freshness
- version_recency

### suggestion_context
priority_order:
- dietary_fit
- budget_fit
- pantry_fit
- household_preference_fit
- source_priority_contextual
- quality_score
- freshness

## 4. source_priority_contextual

### when user searches own household context
priority_preference:
- user_private
- cx22073jw_base
- user_published

### when user searches broad inspiration
priority_preference:
- cx22073jw_base
- user_published
- user_private

### when exact keyword hits own menu strongly
priority_preference:
- strongest exact match wins regardless of source

## 5. published menu ranking factors
- exact keyword match
- dietary compatibility
- budget compatibility
- season compatibility
- household preference compatibility
- quality_score_reference
- reviewed_flag
- locale_validity_scope
- version recency
- deprecated_flag penalty

## 6. penalties
- deprecated_flag=true:
  - strong penalty
- locale mismatch:
  - moderate penalty
- stale version when latest exists:
  - moderate penalty
- incomplete metadata:
  - penalty
- rejected / non-published:
  - excluded from published search results

## 7. display_rules
- latest published version is default visible representative
- older versions are not default top results
- older versions may remain reachable by explicit version view in future
- search result card should show source_type
- published result may show reviewed / quality hint later

## 8. tie_breaker_rules
if scores are close:
- exact match wins
- then household preference fit
- then cheaper option in saving mode
- then fresher published version
- then stable base menu

## 9. free_paid_relation
- free:
  - same core ranking logic
- paid:
  - richer context may improve ranking because pantry / nutrition / integrations exist

## 10. non_goals
- social popularity feed 化
- 広告優先順位
- arbitrary manual promotion in MealPlanner
