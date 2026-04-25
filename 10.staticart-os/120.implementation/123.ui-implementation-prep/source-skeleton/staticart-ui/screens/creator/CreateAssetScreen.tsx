import { ScreenShell } from "../../components/common/ScreenShell";

export function CreateAssetScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Create Asset",
        loadState: "ready",
      }}
    >
      <form>
        <label>
          Asset Type
          <input name="asset_type" />
        </label>
        <label>
          Initial Language
          <input name="initial_language_code" />
        </label>
        <label>
          Publisher Id
          <input name="publisher_id" />
        </label>
        <button type="submit">Create</button>
      </form>
    </ScreenShell>
  );
}
