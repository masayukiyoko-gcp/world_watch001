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

## 4. 仮想サーバ
- ローカル開発用: Python http.server, Node.js serve などでローカルサーバを構築
- Docker等による仮想化も検討可

## 5. 本番サーバ
- GitHub Pages（静的サイト公開）
- 今後、動的サイトの場合はVercel, Netlify, Cloudflare Pages等も検討

## 6. IaC（Infrastructure as Code）
- 開発・本番環境の構成やセットアップ手順をドキュメント化
- 必要に応じてDockerfileやGitHub Actionsワークフロー等で自動化

---
※今後の環境追加や変更はこのファイルに追記・修正してください。