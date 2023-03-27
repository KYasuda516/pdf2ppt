# Pdf2Ppt
PDFをPowerPointプレゼンテーションに変換します。

# 注意
対応しているOSは **Windows 10 または 11** です。

また、実行環境として **Anaconda** を用います。

# インストール
右上の Code ボタンからZIPファイルをダウンロードして解凍するなどして、このリポジトリをローカル環境に複製してください。

また、あらかじめ [Anaconda をインストール](https://www.anaconda.com/products/distribution#:~:text=Anaconda%20Installers,Windows "Anaconda | Anaconda Distribution")しておいてください。

そのうえで、`/setup/Install.bat` を実行してください。`pdf2ppt-env` というconda環境が構築されると同時に、ライブラリがインストールされます。

# 実行方法
`/Main.pptm` を開き、そこに書かれている通りに進めてください。

また、エラーが生じる場合、ライブラリが最新でないことに起因している可能性があります。`/setup/Refresh.bat` を実行することで、ライブラリを更新してください。

# アンインストール
`/setup/Uninstall.bat` を実行してください。ライブラリを含め、conda環境が削除されます。

# 作成者
Kanta Yasuda (@kyasuda516)

# ライセンス
This software is released under the MIT License, see LICENSE.
