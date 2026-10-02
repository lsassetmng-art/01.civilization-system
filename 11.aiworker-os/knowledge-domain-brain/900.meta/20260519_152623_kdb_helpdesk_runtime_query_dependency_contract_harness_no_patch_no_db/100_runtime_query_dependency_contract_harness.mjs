import fs from 'node:fs';
import path from 'node:path';

const appRoot = process.env.APP_ROOT;
const resultPath = process.env.RESULT_JSON;

const result = {
  ok: false,
  phase: 'KDB_HELPDESK_RUNTIME_QUERY_DEPENDENCY_CONTRACT_HARNESS_NO_PATCH_NO_DB',
  patch: 'NO',
  dbConnection: 'NO',
  dbWrite: 'NO',
  apiPost: 'NO',
  checks: [],
  counts: {},
  observed: {},
  errors: [],
};

function record(status, name, detail = {}) {
  result.checks.push({ status, name, detail });
}

function pass(name, detail = {}) {
  record('PASS', name, detail);
}

function warn(name, detail = {}) {
  record('WARN', name, detail);
}

function fail(name, errorOrDetail = {}) {
  const detail = errorOrDetail instanceof Error
    ? { message: errorOrDetail.message, name: errorOrDetail.name }
    : errorOrDetail;
  record('FAIL', name, detail);
  result.errors.push({ name, detail });
}

function isReadonlySqlShape(sql) {
  const s = String(sql || '')
    .replace(/\/\*[\s\S]*?\*\//g, '')
    .replace(/--.*$/gm, '')
    .trim()
    .toLowerCase();

  if (!s) return false;
  if (s.startsWith('select ')) return true;
  if (s.startsWith('with ')) return true;
  return false;
}

function normalizeQueryArgs(sqlOrConfig, params) {
  if (typeof sqlOrConfig === 'string') {
    return { text: sqlOrConfig, values: Array.isArray(params) ? params : [] };
  }

  if (sqlOrConfig && typeof sqlOrConfig === 'object') {
    return {
      text: sqlOrConfig.text || sqlOrConfig.sql || sqlOrConfig.query || '',
      values: Array.isArray(sqlOrConfig.values)
        ? sqlOrConfig.values
        : Array.isArray(sqlOrConfig.params)
          ? sqlOrConfig.params
          : [],
    };
  }

  return { text: '', values: [] };
}

const queryCalls = [];

async function mockReadonlyQuery(sqlOrConfig, params) {
  const q = normalizeQueryArgs(sqlOrConfig, params);
  queryCalls.push({
    textPrefix: String(q.text || '').trim().slice(0, 160),
    valueCount: Array.isArray(q.values) ? q.values.length : 0,
    readonlyShape: isReadonlySqlShape(q.text),
    mentionsHelpdeskView: /aiworker\.v_helpdesk_retrieval_document/i.test(String(q.text || '')),
  });

  if (!isReadonlySqlShape(q.text)) {
    throw new Error('mockReadonlyQuery rejected non-readonly SQL shape');
  }

  if (!/aiworker\.v_helpdesk_retrieval_document/i.test(String(q.text || ''))) {
    throw new Error('mockReadonlyQuery expected aiworker.v_helpdesk_retrieval_document');
  }

  return {
    rowCount: 2,
    rows: [
      {
        document_code: 'mock-helpdesk-001',
        domain_code: 'helpdesk',
        title: 'Mock Helpdesk Document 1',
        summary_text: 'Mock summary 1',
        body_text: 'Mock body 1',
        retrieval_text: 'Mock Helpdesk Document 1 Mock body 1',
        safety_caution_text: null,
        requires_human_review: false,
      },
      {
        document_code: 'mock-helpdesk-002',
        domain_code: 'app_support',
        title: 'Mock Helpdesk Document 2',
        summary_text: 'Mock summary 2',
        body_text: 'Mock body 2',
        retrieval_text: 'Mock Helpdesk Document 2 Mock body 2',
        safety_caution_text: 'Mock caution',
        requires_human_review: true,
      },
    ],
  };
}

try {
  const provider = await import(path.join(appRoot, 'lib/knowledge-domain-brain/helpdesk-provider.mjs'));
  const index = await import(path.join(appRoot, 'lib/knowledge-domain-brain/index.mjs'));

  const requiredExports = [
    'HELPDESK_PROVIDER_CODE',
    'HELPDESK_SUPPORTED_DOMAIN_CODES',
    'normalizeHelpdeskProviderInput',
    'buildHelpdeskRetrievalQuerySpec',
    'rankHelpdeskRetrievalDocuments',
    'mapHelpdeskRetrievalRowToMatch',
    'createHelpdeskProvider',
    'resolveHelpdeskKnowledgeContext',
  ];

  for (const key of requiredExports) {
    if (key in provider) pass(`provider_export_${key}_present`);
    else fail(`provider_export_${key}_missing`);
  }

  for (const key of requiredExports) {
    if (key in index) pass(`index_reexport_${key}_present`);
    else fail(`index_reexport_${key}_missing`);
  }

  if (provider.HELPDESK_PROVIDER_CODE === 'helpdesk') {
    pass('provider_code_is_helpdesk');
  } else {
    fail('provider_code_unexpected', { value: provider.HELPDESK_PROVIDER_CODE });
  }

  const supported = provider.HELPDESK_SUPPORTED_DOMAIN_CODES || [];
  if (Array.isArray(supported) && supported.includes('helpdesk') && supported.includes('app_support')) {
    pass('supported_domain_codes_include_helpdesk_and_app_support', { supported });
  } else {
    fail('supported_domain_codes_missing_expected_values', { supported });
  }

  if (typeof provider.buildHelpdeskRetrievalQuerySpec === 'function') {
    const inputs = [
      { query: '操作 QA', domainCodes: ['helpdesk'], limit: 5 },
      { queryText: '操作 QA', domainCodes: ['helpdesk'], limit: 5 },
      { text: '操作 QA', domainCodes: ['helpdesk'], limit: 5 },
    ];

    let specOk = false;

    for (const input of inputs) {
      try {
        const spec = provider.buildHelpdeskRetrievalQuerySpec(input);
        const q = normalizeQueryArgs(spec);
        const readonlyShape = isReadonlySqlShape(q.text);
        const mentionsView = /aiworker\.v_helpdesk_retrieval_document/i.test(String(q.text || ''));

        result.observed.querySpecShape = Object.keys(spec || {}).sort();
        result.observed.querySpecReadonlyShape = readonlyShape;
        result.observed.querySpecMentionsHelpdeskView = mentionsView;

        if (readonlyShape && mentionsView) {
          specOk = true;
          pass('buildHelpdeskRetrievalQuerySpec_returns_readonly_helpdesk_view_query', {
            shape: result.observed.querySpecShape,
            valueCount: Array.isArray(q.values) ? q.values.length : 0,
          });
          break;
        }
      } catch (error) {
        result.observed.querySpecLastError = error.message;
      }
    }

    if (!specOk) {
      fail('buildHelpdeskRetrievalQuerySpec_contract_not_confirmed', {
        observed: result.observed.querySpecShape || null,
        lastError: result.observed.querySpecLastError || null,
      });
    }
  } else {
    fail('buildHelpdeskRetrievalQuerySpec_not_function');
  }

  if (typeof provider.resolveHelpdeskKnowledgeContext === 'function') {
    const candidateCalls = [
      [
        {
          query: '操作 QA',
          domainCodes: ['helpdesk'],
          primaryDomainCode: 'helpdesk',
          limit: 5,
          dependencies: { query: mockReadonlyQuery },
          queryDependency: mockReadonlyQuery,
        },
      ],
      [
        {
          queryText: '操作 QA',
          domainCodes: ['helpdesk'],
          primaryDomainCode: 'helpdesk',
          limit: 5,
          dependencies: { query: mockReadonlyQuery },
          queryDependency: mockReadonlyQuery,
        },
      ],
      [
        {
          runtimeRequest: {
            query: '操作 QA',
            domainCodes: ['helpdesk'],
            primaryDomainCode: 'helpdesk',
          },
          dependencies: { query: mockReadonlyQuery },
          queryDependency: mockReadonlyQuery,
        },
      ],
      [
        {
          query: '操作 QA',
          domainCodes: ['helpdesk'],
          primaryDomainCode: 'helpdesk',
          limit: 5,
        },
        { query: mockReadonlyQuery },
      ],
      [
        {
          queryText: '操作 QA',
          domainCodes: ['helpdesk'],
          primaryDomainCode: 'helpdesk',
          limit: 5,
        },
        { query: mockReadonlyQuery },
      ],
    ];

    let resolvedOk = false;
    let lastError = null;

    for (const args of candidateCalls) {
      try {
        const resolved = await provider.resolveHelpdeskKnowledgeContext(...args);

        if (resolved && typeof resolved === 'object') {
          const matches = resolved.matches || resolved.helpdeskMatches || resolved.documents || resolved.items || [];
          const status = resolved.status || resolved.statusCode || resolved.providerStatus || null;

          result.observed.resolveStatus = status;
          result.observed.resolveKeys = Object.keys(resolved).sort();
          result.observed.resolveMatchCount = Array.isArray(matches) ? matches.length : null;

          pass('resolveHelpdeskKnowledgeContext_accepts_query_dependency', {
            status,
            keys: result.observed.resolveKeys,
            matchCount: result.observed.resolveMatchCount,
          });

          resolvedOk = true;
          break;
        }
      } catch (error) {
        lastError = error;
      }
    }

    if (!resolvedOk) {
      fail('resolveHelpdeskKnowledgeContext_query_dependency_contract_not_confirmed', {
        message: lastError?.message || null,
      });
    }
  } else {
    fail('resolveHelpdeskKnowledgeContext_not_function');
  }

  if (queryCalls.length > 0) {
    pass('mock_query_dependency_was_called', { queryCallCount: queryCalls.length });
  } else {
    warn('mock_query_dependency_not_called', { queryCallCount: 0 });
  }

  result.counts.queryCallCount = queryCalls.length;
  result.counts.queryCallsReadonlyShapeCount = queryCalls.filter((q) => q.readonlyShape).length;
  result.counts.queryCallsHelpdeskViewCount = queryCalls.filter((q) => q.mentionsHelpdeskView).length;
  result.observed.queryCalls = queryCalls;

  const failCount = result.checks.filter((c) => c.status === 'FAIL').length;
  result.ok = failCount === 0;
} catch (error) {
  fail('top_level_harness_error', error);
} finally {
  fs.writeFileSync(resultPath, JSON.stringify(result, null, 2));
  if (!result.ok) process.exitCode = 1;
}
