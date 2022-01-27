# flutter_ddd_riverpod

Flutterでhooks_riverpod + state_notifier + freezedを使ってDDDをやってみたサンプルプロジェクトです。

## 説明記事へのリンク

- [【Flutter】hooks_riverpod+state_notifier+freezedでのドメイン駆動設計 - Qiita](https://qiita.com/tokkun5552/items/5dcb79e5283a67c2b2fe)

## このプロジェクトをサンプルとして紹介している資料

<iframe src="//www.slideshare.net/slideshow/embed_code/key/5IEfUN8mbfyfQM" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/ShinnosukeTokuda/hooks-riverpod-state-notifier-freezed" title="hooks riverpod + state notifier + freezed でのドメイン駆動設計" target="_blank">hooks riverpod + state notifier + freezed でのドメイン駆動設計</a> </strong> from <strong><a href="//www.slideshare.net/ShinnosukeTokuda" target="_blank">ShinnosukeTokuda</a></strong> </div>

## Tips
- build runner command for freezed
```shell:
flutter pub run build_runner build --delete-conflicting-outputs
```