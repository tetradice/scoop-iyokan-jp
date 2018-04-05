iyokan-jp bucket
================
[![Join the chat at https://gitter.im/scoop-iyokan-jp/ja](https://badges.gitter.im/scoop-iyokan-jp/ja.svg)](https://gitter.im/scoop-iyokan-jp/ja?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

iyokan-jpは、[Scoop][]にインストール可能なソフトウェアリストを追加するための追加bucketです。

iyokan-jpは下記のポリシーに従ってソフトウェアを登録しています。

* 日本語環境に最適化されたbucket
    * 日本語環境に対応したソフトウェアのみを収録
    * <code>scoop home</code> で表示されるWebサイトも日本語
* インストールに管理者権限が必要なものは対象としない


追加方法
-------
コマンドラインから下記のコマンドを入力してください。

    c:\> scoop bucket add iyokan-jp https://github.com/tetradice/scoop-iyokan-jp

これでiyokan-jpに登録されたソフトウェアを、scoopでインストールできるようになります。

    c:\> scoop install mery
    c:\> scoop install winmerge-jp
    c:\> scoop install tablacus-explorer
    c:\> scoop install crystaldiskmark


登録ソフトウェア (2018/4/5 現在)
------------------------------
* [bluewind](http://www.web-ghost.net/bluewind/) - コマンドラインランチャー
* [ckw](http://ckw-mod.github.io/) - 端末ソフトウェア (コマンドプロンプト代替ツール)
* [CrystalDiskInfo](https://crystalmark.info/ja/software/crystaldiskinfo/) - HDD, SSDの健康状態をチェックするツール
    * Shizuku Edition, Kurei Kei Edition 含む
* [CrystalDiskMark](https://crystalmark.info/ja/software/crystaldiskmark/) - HDD, SSD, USBメモリなどの速度を測定するベンチマークツール
    * Shizuku Edition 含む
* [MassiGra](http://www.massigra.net/) - 画像ビューア
* [Mery](https://www.haijin-boys.com/wiki/) - テキストエディタ
* [NYAGOS](https://github.com/zetamatta/nyagos/blob/master/readme_ja.md) - コマンドラインシェル
* [NYAOS 3.x](http://www.nyaos.org/index.cgi?p=NYAOS+3000) - コマンドラインシェル
* [Opera](https://www.opera.com/) - Webブラウザ
* [Putty-ranvis](http://www.ranvis.com/putty) - SSHクライアント (ranvis氏によるカスタムビルド版)
* [SSP](http://ssp.shillest.net/) - デスクトップマスコット・クライアント
* [Tablacus Explorer](https://tablacus.github.io/explorer.html) - タブ型ファイラー
* [WinMerge 日本語版](http://www.geocities.co.jp/SiliconValley-SanJose/8165/winmerge.html)  - 差分比較/マージツール (日本語対応＋独自拡張版)

ここに登録していないソフトウェアについては、ほかのbucketを探してみてください。
私のお勧めは、Scoop公式の[extras bucket](https://github.com/lukesampson/scoop-extras)と、jfut氏によって作成された[jfut bucket][]です。

    c:\> scoop bucket add extras
    c:\> scoop bucket add jfut https://github.com/jfut/scoop-jfut.git

また、[awesome-scoop][]で、現在github上にアップロードされている全bucketとソフトウェアのリストを確認することができます。

※awesome-scoopに掲載されていないソフトウェアで、iyokan-jpに登録してほしいものがありましたら、[Issues](https://github.com/tetradice/scoop-iyokan-jp/issues)、[Twitter](https://twitter.com/tetradice)、[gitter](https://gitter.im/scoop-iyokan-jp/ja)のどれかでご連絡ください。



謝辞
----

Windows向けの素晴らしいパッケージ管理ソフトウェア、[Scoop][]を開発したlukesampson氏に感謝します。

本bucketに登録しているいくつかのmanifestファイルは、他のbucketに登録されているmanifestファイルを元に制作させていただきました。

* CrystalDiskMark, CrystalDiskInfo - [jfut-bucket][] (Created by jfut)
* NYAGOS - [yutahaga/scoop-bucket](https://github.com/yutahaga/scoop-bucket/) (Created by yutahaga)



manifestの作成方針 (2018/4/5現在)
-----------------
* 原則、パッケージ名に"jp"や"ja"はつけない
    * ただし、日本語版独自の改良が行われており、実質的に別バージョンの場合は例外とする（例：WinMerge 日本語版）
* すべてのアプリはコマンドラインから実行可能なように登録する (manifest内で "bin" を必ず指定する)
* すべてのアプリはWindowsのスタートメニューから選択できるようにする (manifest内で "shortcuts" を必ず指定する) 
    * ただし、GUIを全く持たず、完全にCUIのみツールの場合は例外とする
* アプリのフォルダ内にデータファイルを作るものは、できるかぎりpersist対応する（バージョンアップによってデータが失われないようにする）



連絡先
------
@tetradice ([Twitter](https://twitter.com/tetradice)、[gitter](https://gitter.im/scoop-iyokan-jp/ja))

[Scoop]: http://scoop.sh/
[awesome-scoop]: https://github.com/tapanchandra/awesome-scoop
[jfut-bucket]: https://github.com/jfut/scoop-jfut
