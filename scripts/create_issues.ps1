# Create GitHub issues for the world_watch001 project (English fallback to avoid encoding issues)
$repo = 'masayukiyoko-gcp/world_watch001'

$tasks = @(
    @{title = 'UI wireframe (create)'; labels = 'design'; body = "Create a UI wireframe for the world map with clocks layout and add it to docs/design.\n\nAcceptance: wireframe file or markdown layout added to docs/design."},
    @{title = 'City data model design'; labels = 'backend'; body = "Design the city data model (display name, timezone id, coordinates, localization labels).\n\nAcceptance: example JSON/YAML and spec in docs."},
    @{title = 'Timezone library selection and install'; labels = 'backend'; body = "Select and install timezone library for browser/Node (e.g. luxon, moment-timezone, Intl).\n\nAcceptance: rationale in docs and dependency added to package.json."},
    @{title = 'Clock logic implementation (time calc and day/night)'; labels = 'backend,logic'; body = "Implement time calculation, periodic updates, and day/night detection for cities.\n\nAcceptance: logic implemented with unit-testable functions."},
    @{title = 'Analog clock component (UI)'; labels = 'frontend'; body = "Implement analog clock component (SVG/Canvas/HTML) that can be displayed multiple times and follows time updates.\n\nAcceptance: multiple clocks render and update correctly."},
    @{title = 'Map background and city pins'; labels = 'frontend'; body = "Display world map as background and show city pins/labels; clicking a pin focuses the corresponding clock.\n\nAcceptance: map with clickable city labels."},
    @{title = 'Localization (i18n) support'; labels = 'frontend,i18n'; body = "Add language selection (Japanese, English, Thai, Indonesian) and localize UI strings and city names.\n\nAcceptance: UI and city names switch by language."},
    @{title = 'Add/remove clock feature'; labels = 'frontend'; body = "Allow users to add/remove clocks (2-8 range) and persist state (e.g., localStorage).\n\nAcceptance: add/remove operations work and state persists."},
    @{title = 'Unit tests for logic (C0/C1 coverage)'; labels = 'test'; body = "Create unit tests for logic (time calc, day/night) and ensure C0 and C1 coverage targets are met.\n\nAcceptance: tests run and coverage scripts available."},
    @{title = 'E2E visual tests with Cypress'; labels = 'test,e2e'; body = "Create Cypress tests for UI rendering and screenshot comparisons.\n\nAcceptance: cypress tests added and runnable locally/CI."},
    @{title = 'CI workflow (tests and coverage)'; labels = 'ci'; body = "Add GitHub Actions workflows to run unit tests, Cypress tests, and coverage on PRs.\n\nAcceptance: workflows in .github/workflows that run on PR."},
    @{title = 'Documentation update (specs and env)'; labels = 'docs'; body = "Update docs with design, environment, and links to task artifacts.\n\nAcceptance: docs updated under docs/ with links."}
)

foreach ($t in $tasks) {
    Write-Host "Creating issue: $($t.title)"
    & 'C:\Program Files\GitHub CLI\gh.exe' issue create --repo $repo --title $t.title --body $t.body --label $t.labels
}

Write-Host "All issues submitted."
