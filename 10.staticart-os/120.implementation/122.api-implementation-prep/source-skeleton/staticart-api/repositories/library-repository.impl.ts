import type {
  FavoriteResponseDto,
  ReaderProgressRequestDto,
  ViewerProgressRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import type { LibraryRepository } from "../services/library-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_LIBRARY_SQL } from "./sql/staticart-library-sql";

export class LibraryRepositoryImpl implements LibraryRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async getLibrary(
    actorUserId: Uuid,
    _cursor?: string | null,
    limit = 30,
  ): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.selectLibrary, [
      actorUserId,
      limit,
    ]);

    return {
      items: result.rows,
      nextCursor: null,
    };
  }

  async getContinueReading(
    actorUserId: Uuid,
    _cursor?: string | null,
    limit = 20,
  ): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.selectContinueReading, [
      actorUserId,
      limit,
    ]);

    return {
      items: result.rows,
      nextCursor: null,
    };
  }

  async getContinueViewing(
    actorUserId: Uuid,
    _cursor?: string | null,
    limit = 20,
  ): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.selectContinueViewing, [
      actorUserId,
      limit,
    ]);

    return {
      items: result.rows,
      nextCursor: null,
    };
  }

  async saveReaderProgress(
    assetId: Uuid,
    input: ReaderProgressRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.upsertReaderProgress, [
      meta.actorUserId,
      assetId,
      input.current_locator,
      input.progress_percent,
      input.sync_version,
      input.last_device_type ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async saveViewerProgress(
    assetId: Uuid,
    input: ViewerProgressRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.upsertViewerProgress, [
      meta.actorUserId,
      assetId,
      input.current_frame_ref ?? null,
      input.current_page_no ?? null,
      input.zoom_ratio ?? null,
      input.sync_version,
      input.last_device_type ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async addFavorite(
    assetId: Uuid,
    meta: RequestMeta,
  ): Promise<FavoriteResponseDto> {
    const db = this.dbFactory.createPersonaDbClient();

    await db.query(STATICART_LIBRARY_SQL.addFavorite, [
      meta.actorUserId,
      assetId,
    ]);

    return {
      asset_id: assetId,
      favorite_state: true,
    };
  }

  async deleteFavorite(
    assetId: Uuid,
    meta: RequestMeta,
  ): Promise<FavoriteResponseDto> {
    const db = this.dbFactory.createPersonaDbClient();

    await db.query(STATICART_LIBRARY_SQL.deleteFavorite, [
      meta.actorUserId,
      assetId,
    ]);

    return {
      asset_id: assetId,
      favorite_state: false,
    };
  }

  async createAnnotation(
    assetId: Uuid,
    input: Record<string, unknown>,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();

    const result = await db.query(STATICART_LIBRARY_SQL.insertAnnotation, [
      crypto.randomUUID(),
      meta.actorUserId,
      assetId,
      input.annotation_type ?? "bookmark",
      input.locator ?? "",
      JSON.stringify(input.payload_json ?? {}),
    ]);

    return result.rows[0] ?? {};
  }
}
