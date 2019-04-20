# shuffle_bg
まずはじめに、以下は単純なシェルスクリプトです。  
GauMusさんの作成したHydraPaperを一定周期で動かすことによってマルチディスプレイかつスライドショーを実現しています。  
Mac,Windowsはこの機能は標準搭載らしいのですが、linux mintはなかったので作りました。

## HydraPaperのインストール
以下はUbuntu系OSの場合です。
```
sudo apt update
sudo apt upgrade
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gabmus.hydrapaper
```
## shuffle_bgの起動
以上のコマンドよりHydrapaperがインストールされたはずです。  
アプリケーション一覧よりHydrapaperが起動できるか確認してください。

HydrapaperはGUIより壁紙の変更を行いますが、スライドショーの機能はついていません。  
しかし、Hydrapaperは端末からの操作も可能です。  
以下のコマンドでHydrapaperが起動するか確認してください
```
flatpak run org.gabmus.hydrapaper
```
確認後、壁紙フォルダへのPATHを修正し、shuffle_bg.shを実行してください。
また、停止する際はstop_shuffle.shを実行してください。

参考URL:  
http://m77.hatenablog.com/entry/2018/05/25/223128  
https://github.com/GabMus/HydraPaper
