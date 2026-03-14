# Update GitHub issues: append Dependencies and Checklist sections
$repo = 'masayukiyoko-gcp/world_watch001'

# Define dependencies and checklist per issue number
$spec = @{
    1 = @{deps = @(); checklist = @("Create wireframe image or markdown","Add file to docs/design")}
    2 = @{deps = @(1); checklist = @("Define JSON/YAML schema","Add example data to docs")}
    3 = @{deps = @(2); checklist = @("Evaluate libraries (luxon,moment,Intl)","Add chosen lib to package.json")}
    4 = @{deps = @(2,3); checklist = @("Implement time calc functions","Implement day/night detection","Write unit tests stubs")}
    5 = @{deps = @(1,4); checklist = @("Implement SVG/Canvas clock","Support multiple instances","Hook to time logic")}
    6 = @{deps = @(1,2,5); checklist = @("Integrate map background","Render city pins","Pin click focuses clock")}
    7 = @{deps = @(2,5); checklist = @("Add i18n resource files","Wire language selector to UI","Translate city names")}
    8 = @{deps = @(5); checklist = @("UI controls for add/remove","Enforce 2-8 limit","Persist state in localStorage")}
    9 = @{deps = @(4); checklist = @("Write unit tests for time calc","Measure coverage and reach C0/C1 100%")}
    10 = @{deps = @(5,6,7,8); checklist = @("Cypress test for page render","Add screenshot comparison test")}
    11 = @{deps = @(9,10); checklist = @("Create GitHub Actions workflow for unit tests","Create workflow for Cypress tests and coverage")}
    12 = @{deps = @(1,2,3,4,5,6,7,8,9,10,11); checklist = @("Update docs/design","Update docs/spec and environment.md","Add links to issue artifacts")}
}

foreach ($num in $spec.Keys | Sort-Object) {
    Write-Host "Updating issue #$num"
    $current = & 'C:\Program Files\GitHub CLI\gh.exe' issue view $num --repo $repo --json body --jq .body
    if ($LASTEXITCODE -ne 0) { Write-Host "Failed to read issue #$num"; continue }

    $entry = $spec[$num]
    $deps = $entry.deps
    $depsText = ""
    if ($deps.Count -gt 0) {
        $depsText = "**Dependencies:**`n"
        foreach ($d in $deps) { $depsText += "- Depends on #$d`n" }
    }

    $checklistText = "`n**Checklist:**`n"
    foreach ($item in $entry.checklist) { $checklistText += "- [ ] $item`n" }

    $newBody = $current + "`n`n" + $depsText + $checklistText

    # Update issue body
    & 'C:\Program Files\GitHub CLI\gh.exe' issue edit $num --repo $repo --body $newBody
    if ($LASTEXITCODE -ne 0) { Write-Host "Failed to update issue #$num" }
}

Write-Host "All issues updated with dependencies and checklists."
