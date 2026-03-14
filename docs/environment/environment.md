# 開発環境まとめ（environment.md）

## 1. Python
- バージョン: 3.x
- 利用用途: ローカルサーバ起動、スクリプト実行、テスト自動化など
- 仮想環境: venvやconda等の利用を推奨

## 2. GitHub
- リポジトリ: https://github.com/masayukiyoko-gcp/world_watch001.git
- バージョン管理、CI/CD、GitHub Pagesによる本番公開

## 3. VS Code
- 拡張機能: Python, GitHub Pull Requests, Prettier, ESLint など
- ターミナル: bash, PowerShell
- 推奨設定: .vscode/settings.jsonでプロジェクト固有の設定管理

## 3.1 Node.js/NPM
- Node.js, npmを利用（パッケージ管理・フロントエンド開発・テスト自動化）
- package.jsonで依存管理

## 3.2 PowerShell実行ポリシー
- npmコマンド利用のため、PowerShellの実行ポリシーをRemoteSignedに設定
	- 設定例: `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned`

## 4. 仮想サーバ
- ローカル開発用: Python http.server, Node.js serve などでローカルサーバを構築
- Docker等による仮想化も検討可

## 4.1 テスト自動化・表示系テスト
- Cypressを導入し、UI表示の自動テストが可能
- インストール: `npm install --save-dev cypress`
- テストはcypressディレクトリ配下に記述

## 5. 本番サーバ
- GitHub Pages（静的サイト公開）
- 今後、動的サイトの場合はVercel, Netlify, Cloudflare Pages等も検討

## 6. IaC（Infrastructure as Code）
- 開発・本番環境の構成やセットアップ手順をドキュメント化
- 必要に応じてDockerfileやGitHub Actionsワークフロー等で自動化

---
※今後の環境追加や変更はこのファイルに追記・修正してください。
