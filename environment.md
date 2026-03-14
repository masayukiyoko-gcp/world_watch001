# 環境情報

以下はこのリポジトリで確認・変更されたテスト用環境の要点です（2026-03-15 現在）。

- OS: Windows（開発作業環境）
- Node.js: 20 系で開発を想定（実際のランタイムは `node -v` を参照）
- npm: `package.json` / `package-lock.json` による依存管理（両ファイルはリポジトリにコミット済み）

- テスト・自動化:
  - Cypress: E2E 用に導入済み（`cypress/e2e` に spec を配置）
  - Playwright: スクリーンショット取得用に導入済み（devDependency、ブラウザバイナリをローカルにダウンロード済み）
    - ダウンロード先例: `%LOCALAPPDATA%\\ms-playwright\\`（Windows）
  - スクリーンショット取得スクリプト: `scripts/screenshot.js` をリポジトリに追加済み

- ローカルサーバ・公開:
  - ローカルで `public/` を静的サーバで提供して動作確認（例: `http://localhost:8080`）
  - GitHub Pages: `gh-pages` ブランチで公開済み（公開 URL: https://masayukiyoko-gcp.github.io/world_watch001/）

- リポジトリ管理ポリシー（現在の運用）:
  - `node_modules/` を `.gitignore` に追加して無視（コミット対象外）
  - Pages の生成物（例: `pages_index.html`、`artifacts/`、`assets/screenshots/`）は無視する設定を追加
  - スクリプト等のソース（`scripts/screenshot.js` 等）はコミットする

- 追加メモ:
  - `public/index.html` の資産参照を相対パスに修正済み（Pages とローカルで同一表示されるように調整）
  - CI ワークフローと PR ルールは表示系の変更にスクリーンショット添付を要求する運用に沿っている

必要であればこのファイルにさらに詳細な環境準備手順（Node のインストール手順、Playwright のブラウザ再インストールコマンド、Cypress の起動方法など）を追記します。どの項目を展開しますか？
