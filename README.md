# Pdf2Ppt
PDFをPowerPointプレゼンテーションに変換します。

# 注意
対応しているOSは **Windows 10 または 11** です。

また、実行環境として **Anaconda** を用います。

# はじめに
Anaconda をあらかじめインストールしておいてください。  
（インストール方法は他のサイトを参照してください）

Anaconda Prompt を起動してください。  
このリポジトリをクローンしたディレクトリに移動したあと、以下のコマンドを実行してください。（ `pdf2ppt-env` というconda環境が作成されます）

```bash
conda env create -f ./.scripts/environment.yml
```

# 実行方法
`/Main.pptm` を開き、そこに書かれている通りに進めてください。

また、エラーが生じる場合、ライブラリが最新でないことに起因している可能性があります。エクスプローラーで `/update/UpdateLibs.bat` をダブルクリックして実行し、ライブラリを更新してください。

# 作成者
Kanta Yasuda (@kyasuda516)

# ライセンス
This software is released under the MIT License, see LICENSE.
