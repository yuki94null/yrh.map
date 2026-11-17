# yrh.map 実装仕様

対象は Minecraft Java Edition 26.3。対応リソースパックと併用する。

## 構造

- data/yrh.map/function/function は共通関数。関数IDは yrh.map:function/…。
- worldmap は設置、参照位置、表示キュー、キャッシュ、権限、寿命管理。
- worldmap/controller は足元UI、input はadvancementからのクリック配送。
- worldmap/waypoint/appearance はアイコンとカスタム外見。
- worldmap/waypoint/markers は盤面表示。public/ は公開ピンの分割走査、作者判定、更新通知。
- ui/radial_menu は視点選択とシェーダーの状態切り替え。
- debug は手動操作と診断用の入口。
- scripts は関数生成と構文検証。生成ファイルの修正は生成元にも反映する。
- resource_pack_overlay はリソースパック向けの作業用ファイル。ゲームが読むリソースパックへの反映が必要。

## データと描画

地形スキャンはプレイヤーを基準にキュー処理する。地図は保存済みデータを参照して描画する。
アンカーの yrh_map_ax/az は表示中心、yrh_map_hx/hz はホームの参照座標。
物理的な設置位置と参照座標は独立する。部品の所属は yrh_map_id で特定する。
所有者は data.yrhmap.Owner、地図の公開は Public、固定は Pinned。
盤面のクリック保護は背景と同じ寿命で管理し、サイズ変更時に幅を更新する。

## ウェイポイント

yrh.map:waypoints の players.p_<UUIDの4整数>.s1〜s12 に個人ピン、public 配列に公開ピンを保存する。
主な値は x/z、item、custom、author/author_uuid、slot。
サイドは12件単位のページ表示。盤面の個人ピンはページに依存しない。
HideOtherWaypoints が無効なら公開ピンを走査し、盤面内の他者のピンを追加する。
公開走査は1ティック最大16件、対象地図1件。進捗は地図ごとの yrh_map_wp_public。
個人マーカー番号は1〜12、公開ピンは配列位置+13。作者判定で自分の公開ピンの二重描画を避ける。
ページ変更はサイドのプレビューを更新する。参照・表示設定・公開データ変更は盤面更新を予約する。
公開地図のゲストは盤面とサイドから中心移動できる。編集・削除は所有者判定を通す。

## 負荷とスコア

一時値は yrh_map_tmp の名前付きスコアを共有する。
複数ティック、プレイヤー、地図をまたぐ値は専用objectiveで保持する。
共有ピン変更時は地図検索1回から各アンカーの更新要否を判定する。
更新中のサイド更新が立てた盤面再更新要求は、その更新内で消化する。
マクロ関数の結果判定は execute store result … run function … with … を使う。

登録objective一覧

- yrh_map_ax — dummy
- yrh_map_az — dummy
- yrh_map_floor_wait — dummy
- yrh_map_hx — dummy
- yrh_map_hz — dummy
- yrh_map_id — dummy
- yrh_map_scan_i — dummy
- yrh_map_tmp — dummy
- yrh_map_tx — dummy
- yrh_map_tz — dummy
- yrh_map_use — minecraft.used:minecraft.carrot_on_a_stick
- yrh_map_wp_public — dummy
- yrh_rad_cursor — dummy
- yrh_rad_effect — dummy
- yrh_rad_pitch — dummy
- yrh_rad_seen — dummy
- yrh_rad_yaw — dummy

## 検証

scripts/check_minecraft_syntax.py は26.3で読み込みとマクロのサンプル展開を検証する。
ゲーム内の表示、マルチプレイ操作、実測MSPTは別途確認する。今回の整理は全体の性能測定を含まない。
