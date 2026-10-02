# Helpdesk provider static contract context

## Key lines

```js
6:export const HELPDESK_PROVIDER_CODE = "helpdesk";
8:export const HELPDESK_SUPPORTED_DOMAIN_CODES = Object.freeze([
13:const PROVIDER_STATUS = Object.freeze({
16:  skipped: KNOWLEDGE_PROVIDER_RESULT_STATUS.SKIPPED ?? "skipped",
20:const DEFAULT_LOCALE = "ja";
21:const DEFAULT_LIMIT = 20;
22:const HARD_LIMIT = 100;
24:const REQUEST_KIND_DOCUMENT_KIND_MAP = Object.freeze({
34:const DOCUMENT_KIND_WEIGHT = Object.freeze({
45:function normalizeString(value) {
47:  const trimmed = value.trim();
51:function toSnakeString(value) {
55:function clampInteger(value, fallback = DEFAULT_LIMIT, min = 1, max = HARD_LIMIT) {
56:  const parsed = Number.parseInt(String(value ?? ""), 10);
63:function normalizeLocale(value, fallback = DEFAULT_LOCALE) {
67:function normalizeRequestKind(value) {
68:  const normalized = toSnakeString(value) ?? "qa_question";
72:function uniqueStrings(values) {
73:  return [...new Set(values.filter((value) => typeof value === "string" && value.length > 0))];
76:export function normalizeHelpdeskProviderInput(args = {}) {
77:  const runtimeContext = args.runtimeContext && typeof args.runtimeContext === "object"
78:    ? args.runtimeContext
81:  const appCode =
84:    normalizeString(runtimeContext.sourceAppCode) ??
85:    normalizeString(runtimeContext.source_app_code);
87:  const requestKind = normalizeRequestKind(args.requestKind ?? args.request_kind);
89:  const textTerms = uniqueStrings([
93:    normalizeString(args.error_text),
95:    normalizeString(runtimeContext.instructionText),
96:    normalizeString(runtimeContext.instruction_text),
101:    sourceAppCode: normalizeString(args.sourceAppCode) ?? normalizeString(runtimeContext.sourceAppCode) ?? appCode,
102:    locale: normalizeLocale(args.locale ?? runtimeContext.locale),
109:    errorText: normalizeString(args.errorText) ?? normalizeString(args.error_text),
112:    textTerms,
114:    runtimeContext,
118:export function buildHelpdeskRetrievalQuerySpec(inputArgs = {}) {
119:  const input = normalizeHelpdeskProviderInput(inputArgs);
120:  const values = [];
121:  const where = ["is_active = true"];
124:    values.push(input.locale);
125:    where.push(`locale = $${values.length}`);
129:    values.push(input.appCode);
130:    where.push(`(app_code = $${values.length} or app_code is null)`);
134:    values.push(input.documentKinds);
135:    where.push(`document_kind = any($${values.length}::text[])`);
139:    values.push(input.screenCode);
140:    where.push(`(screen_code = $${values.length} or screen_code is null)`);
144:    values.push(input.flowCode);
145:    where.push(`(flow_code = $${values.length} or flow_code is null)`);
149:    values.push(input.errorCode);
150:    where.push(`(error_code = $${values.length} or error_code is null)`);
153:  const searchableTerms = uniqueStrings([
154:    ...input.textTerms,
161:    const termClauses = searchableTerms.slice(0, 5).map((term) => {
162:      values.push(`%${term}%`);
163:      return `(searchable_text ilike $${values.length} or title ilike $${values.length} or body ilike $${values.length})`;
168:  values.push(input.maxMatches);
171:    sql: `
182:  searchable_text,
195:from aiworker.v_helpdesk_retrieval_document
201:limit $${values.length}
203:    values,
206:    source: "aiworker.v_helpdesk_retrieval_document",
210:function rowValue(row, snakeName, camelName) {
215:function asBoolean(value) {
219:function asNumber(value, fallback = 0) {
220:  const parsed = Number(value);
224:export function rankHelpdeskRetrievalDocuments(rows = [], inputArgs = {}) {
225:  const input = normalizeHelpdeskProviderInput(inputArgs);
226:  const terms = input.textTerms.map((term) => term.toLowerCase());
229:    const documentKind = rowValue(row, "document_kind", "documentKind");
230:    const appCode = rowValue(row, "app_code", "appCode");
231:    const locale = rowValue(row, "locale", "locale");
232:    const screenCode = rowValue(row, "screen_code", "screenCode");
233:    const flowCode = rowValue(row, "flow_code", "flowCode");
234:    const errorCode = rowValue(row, "error_code", "errorCode");
235:    const confidenceLevel = rowValue(row, "confidence_level", "confidenceLevel");
236:    const priority = asNumber(rowValue(row, "priority", "priority"), 100);
237:    const searchable = [
240:      rowValue(row, "searchable_text", "searchableText"),
244:    const reasons = [];
276:    for (const term of terms) {
279:        reasons.push("text_match");
309:export function mapHelpdeskRetrievalRowToMatch(row, ranking = {}) {
335:      view: "v_helpdesk_retrieval_document",
340:function buildSafetyCautions(matches = []) {
344:      providerCode: HELPDESK_PROVIDER_CODE,
345:      cautionCode: match.blocksAiAnswer ? "HELPDESK_BLOCKS_AI_ANSWER" : "HELPDESK_ESCALATION_CANDIDATE",
354:function createProviderResult(statusCode, fields = {}) {
355:  const base = createEmptyKnowledgeProviderResult({
356:    providerCode: HELPDESK_PROVIDER_CODE,
357:    supportedDomainCodes: HELPDESK_SUPPORTED_DOMAIN_CODES,
364:    providerCode: HELPDESK_PROVIDER_CODE,
365:    supportedDomainCodes: [...HELPDESK_SUPPORTED_DOMAIN_CODES],
378:export async function resolveHelpdeskKnowledgeContext(args = {}, dependencies = {}) {
379:  const query = dependencies.query;
380:  const normalizedInput = normalizeHelpdeskProviderInput(args);
382:  if (typeof query !== "function") {
383:    return createProviderResult(PROVIDER_STATUS.skipped, {
391:        providerCode: HELPDESK_PROVIDER_CODE,
399:    const querySpec = buildHelpdeskRetrievalQuerySpec(normalizedInput);
400:    const result = await query(querySpec.sql, querySpec.values);
401:    const rows = Array.isArray(result) ? result : Array.isArray(result?.rows) ? result.rows : [];
402:    const ranked = rankHelpdeskRetrievalDocuments(rows, normalizedInput);
403:    const helpdeskMatches = ranked.map((item) => mapHelpdeskRetrievalRowToMatch(item.row, item));
404:    const safetyCautions = buildSafetyCautions(helpdeskMatches);
405:    const statusCode = helpdeskMatches.length > 0 ? PROVIDER_STATUS.ok : PROVIDER_STATUS.empty;
413:        providerCode: HELPDESK_PROVIDER_CODE,
416:        source: querySpec.source,
421:        querySource: querySpec.source,
429:        providerCode: HELPDESK_PROVIDER_CODE,
430:        cautionCode: "HELPDESK_PROVIDER_QUERY_ERROR",
436:        providerCode: HELPDESK_PROVIDER_CODE,
451:export function createHelpdeskProvider(dependencies = {}) {
453:    providerCode: HELPDESK_PROVIDER_CODE,
454:    supportedDomainCodes: [...HELPDESK_SUPPORTED_DOMAIN_CODES],
455:    resolveKnowledgeContext: (args = {}) => resolveHelpdeskKnowledgeContext(args, dependencies),
459:export default createHelpdeskProvider;
```
