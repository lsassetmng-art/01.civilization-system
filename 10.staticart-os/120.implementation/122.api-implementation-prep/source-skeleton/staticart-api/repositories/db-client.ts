export interface QueryResultRow {
  [key: string]: unknown;
}

export interface QueryResult<T extends QueryResultRow = QueryResultRow> {
  rows: T[];
  rowCount: number;
}

export interface DbClient {
  query<T extends QueryResultRow = QueryResultRow>(
    sql: string,
    params?: unknown[],
  ): Promise<QueryResult<T>>;
  transaction<T>(fn: (client: DbClient) => Promise<T>): Promise<T>;
}

export interface DbClientFactory {
  createPersonaDbClient(): DbClient;
}

export class EnvDbClientFactory implements DbClientFactory {
  createPersonaDbClient(): DbClient {
    const url = process.env.PERSONA_DATABASE_URL ?? "";
    if (!url) {
      throw new Error("PERSONA_DATABASE_URL is required.");
    }

    return {
      async query<T extends QueryResultRow = QueryResultRow>(): Promise<QueryResult<T>> {
        throw new Error("Bind actual DB query implementation later.");
      },
      async transaction<T>(fn: (client: DbClient) => Promise<T>): Promise<T> {
        return fn(this.createPersonaDbClient());
      },
    };
  }
}
