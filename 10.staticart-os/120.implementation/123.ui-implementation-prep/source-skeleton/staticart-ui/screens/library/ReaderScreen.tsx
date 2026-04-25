import { ScreenShell } from "../../components/common/ScreenShell";
import { ReaderToolbar } from "../../components/library/ReaderToolbar";

export function ReaderScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Reader",
        loadState: "ready",
      }}
    >
      <ReaderToolbar />
      <section>
        <p>Reader body area.</p>
      </section>
    </ScreenShell>
  );
}
