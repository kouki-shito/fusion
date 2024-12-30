## RXSwift + Coordinator + Split Storyboard

# 手順

1. プロジェクト作成する
   `pod init`

   pod ファイルに記入

   ```
   pod 'RxSwift'
   pod 'RxCocoa'
   pod 'SwiftLint'
   ```

   `pod install`

2. プロジェクトを編集
   workspace を開く

   以下を削除

   - ViewController
   - AppDelegate
   - SceneDelegate
   - Storyboard

   Info 設定の storyboard Main を削除

   info.plist の Storyboard Main を削除

   ファイル構造は以下とする
   ├── Base.lproj
   │ └── LaunchScreen.storyboard
   ├── Info.plist
   ├── Resource
   │ └── Assets.xcassets
   └── Scene
   ├── App
   │ ├── AppDelegate.swift
   │ ├── Coordinator.swift
   │ ├── SceneDelegate.swift
   │ └── Storyboarded.swift
   ├── RootView
   │ ├── Root.storyboard
   │ ├── RootViewController.swift
   │ ├── RootViewCoordinator.swift
   │ └── RootViewModel.swift
   └── Second
   │ ├── SecondView.storyboard
   │ ├── SecondViewController.swift
   │ ├── SecondViewCoordinator.swift
   │ └── SecondViewModel.swift

   App ディレクトリに NewFile.. から RXCore を作成
   RootView ディレクトリに NewFile.. から RXRootView を作成
   Second 以降ディレクトリに NewFile.. から RX を作成

   build settings の User script sandbox...を No にする
   
   Targetに注意すること（最低限のターゲットにしないとエラーを吐く）
