# flutter_ddd_riverpod
![hero_riverpod](https://user-images.githubusercontent.com/69064290/151383600-e14ad2c4-a651-4363-a483-993f656a93ec.png)

  
Flutterでhooks_riverpod + state_notifier + freezedを使ってDDDをやってみたサンプルプロジェクトです。

- 簡単な概要図

![スクリーンショット 2022-01-27 23 54 04](https://user-images.githubusercontent.com/69064290/151383389-fca1857b-30a4-467d-b86c-be7c9fbeba33.png)
## 説明記事へのリンク

- [【Flutter】hooks_riverpod+state_notifier+freezedでのドメイン駆動設計 - Qiita](https://qiita.com/tokkun5552/items/5dcb79e5283a67c2b2fe)

- [hooks riverpod + state notifier + freezed でのドメイン駆動設計](https://www.slideshare.net/ShinnosukeTokuda/hooks-riverpod-state-notifier-freezed)

## Tips
- build runner command for freezed
```shell:
flutter pub run build_runner build --delete-conflicting-outputs
```