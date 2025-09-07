# Flutter Template

Flutterアプリケーション開発のためのテンプレートプロジェクトです。Melosを使用したモノレポ構造で、効率的な開発環境を提供します。

## 📋 プロジェクト概要

このプロジェクトは以下の特徴を持っています：

- **Melosモノレポ**: 複数のパッケージを効率的に管理
- **Flutter 3.8.1+**: 最新のFlutter SDKに対応
- **マルチプラットフォーム**: iOS、Android、Web、Desktop対応
- **開発環境**: VS Code設定付き
- **Riverpodアーキテクチャ**: Clean Architecture + Riverpodによる状態管理

## 🏗️ アーキテクチャ

このテンプレートは、PlantUMLシーケンス図に基づいたRiverpodアーキテクチャを採用しています：

### 3層アーキテクチャ
- **Presentation層**: UIとユーザーインタラクション
- **Domain層**: ビジネスロジックとエンティティ
- **Infrastructure層**: 外部データソースとの通信

### Riverpodパターン
- **Query/Subscription**: `ref.watch`によるデータ取得・購読
- **Refresh**: `ref.refresh`によるデータの再取得
- **Mutation**: `ref.read`によるデータの変更

詳細については、[ARCHITECTURE.md](./ARCHITECTURE.md)を参照してください。

## 🚀 新しいプロジェクトを作成

このテンプレートから新しいプロジェクトを作成する方法については、[TEMPLATE_USAGE.md](./TEMPLATE_USAGE.md)を参照してください。

### クイックスタート

```bash
# 自動スクリプトを使用（推奨）
./scripts/create_project.sh my_awesome_app

# 作成されたプロジェクトに移動
cd my_awesome_app
code .
```

## 🏗️ プロジェクト構造

```
flutter_template/
├── .vscode/                 # VS Code設定
├── packages/
│   └── flutter_app/        # メインFlutterアプリケーション
│       ├── lib/
│       ├── android/
│       ├── ios/
│       ├── web/
│       ├── linux/
│       ├── macos/
│       ├── windows/
│       └── pubspec.yaml
├── melos.yaml              # Melos設定
├── pubspec.yaml            # ルートpubspec
└── README.md
```

## 🚀 セットアップ

### 前提条件

- Flutter SDK 3.8.1以上
- Dart SDK 3.0.0以上
- Melos 6.3.3以上

### インストール手順

1. **リポジトリをクローン**
   ```bash
   git clone <repository-url>
   cd flutter_template
   ```

2. **Melosをインストール**
   ```bash
   dart pub global activate melos
   ```

3. **依存関係をインストール**
   ```bash
   melos bootstrap
   ```

4. **Flutter依存関係を取得**
   ```bash
   melos exec -- "flutter pub get"
   ```

## 🎯 アプリケーションの実行

### VS Codeから実行

1. VS Codeでプロジェクトを開く
2. `F5`キーを押すか、デバッグパネル（Ctrl+Shift+D）を開く
3. ドロップダウンメニューから **"flutter_template_app"** を選択
4. 緑の再生ボタンをクリック

### ターミナルから実行

```bash
# アプリディレクトリに移動
cd packages/flutter_app

# アプリを実行
flutter run
```

### 特定のプラットフォームで実行

```bash
# iOSシミュレーター
flutter run -d ios

# Androidエミュレーター
flutter run -d android

# Webブラウザ
flutter run -d chrome

# macOS
flutter run -d macos

# Linux
flutter run -d linux

# Windows
flutter run -d windows
```

## 🧪 テストの実行

```bash
# 全パッケージのテストを実行
melos test

# 特定のパッケージのテストを実行
cd packages/flutter_app
flutter test
```

## 📱 アプリケーションのビルド

### リリースビルド

```bash
cd packages/flutter_app

# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release

# macOS
flutter build macos --release

# Linux
flutter build linux --release

# Windows
flutter build windows --release
```

## 🛠️ 開発ツール

### Meloコマンド

```bash
# 全パッケージの依存関係を更新
melos clean
melos bootstrap

# 全パッケージでコマンドを実行
melos exec -- "flutter pub get"
melos exec -- "flutter analyze"
melos exec -- "flutter test"
 
# パッケージ・依存関係のインデックスを表示
melos index
```

`melos index` は、ワークスペース内の全パッケージ・依存関係・スクリプトなどの一覧を表示します。パッケージの全体像や依存関係を素早く把握したいときに便利です。

### コード分析

```bash
# 全パッケージでコード分析を実行
melos exec -- "flutter analyze"
```

## 📦 パッケージ管理

このプロジェクトはMelosを使用してモノレポを管理しています：

- **melos.yaml**: ワークスペース設定
- **pubspec.yaml**: ルート依存関係
- **packages/flutter_app/pubspec.yaml**: アプリ依存関係

新しいパッケージを追加する場合は、`packages/`ディレクトリ内に作成し、`melos.yaml`に追加してください。

## 🔧 設定ファイル

### VS Code設定 (.vscode/launch.json)

- **flutter_template**: ルートディレクトリから起動
- **flutter_template_app**: `packages/flutter_app`ディレクトリから起動

### 分析設定 (analysis_options.yaml)

Flutter Lintsを使用したコード品質チェックが有効になっています。

## 📄 ライセンス

このプロジェクトはMITライセンスの下で公開されています。

## 🤝 コントリビューション

1. このリポジトリをフォーク
2. 機能ブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add some amazing feature'`)
4. ブランチにプッシュ (`git push origin feature/amazing-feature`)
5. プルリクエストを作成

## 📞 サポート

問題や質問がある場合は、GitHubのIssuesページでお知らせください。

---

**Happy Fluttering! 🚀**
