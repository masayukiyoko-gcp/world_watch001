# ローカルサーバ起動用スクリプト

# Pythonのhttp.serverを使った簡易サーバ例
# コマンドプロンプトやPowerShellで以下を実行してください。
# 例: srcディレクトリをルートとして起動

python -m http.server 8000 --directory src

# または、Node.jsがインストールされている場合は以下も利用可能
# npx serve src
