# specification.md

本プロジェクトではEnglishWordsのCRUDアプリを開発します。

## 実現したいこと

EnglishWordsのCRUDアプリでは、以下のことを行いたいです。

- 表示言語として日本語と英語を利用したい
- EnglishWordsを登録したい
- EnglishWordsを一覧画面で確認したい
  - 登録した単語の英英辞典での検索結果へのリンクを表示したい
  - 登録した単語のyouglishでの検索結果へのリンクを表示したい
- EnglishWordsを詳細画面で確認したい
- EnglishWordsの情報を更新したい
- EnglishWordsを削除したい
- EnglishWordsにコメントをつけたい
- EnglishWordsにステータス（未着手・着手・完了）を付与したい
- EnglishWordsにラベル（ユーザーが文言を登録可能）を付与して分類したい
- 一覧画面でEnglishWordsをソートしたい
- 一覧画面でEnglishWordsを検索したい
- ユーザー登録してサインインすると、自分が登録したEnglishWordsだけを確認できるようにしたい
- ユーザーの情報を詳細画面で確認したい
- ユーザーの情報を更新したい
- 管理ユーザーを登録してサインインすると、全ユーザー情報やEnglishWordsを確認できるようにしたい
- EnglishWordsをリストに登録したい
- EnglishWordsのリストを確認したい

## サポートブラウザ

サポートブラウザはmacOS/Chrome各最新版を想定しています。

## アプリの構成について

以下の言語・ミドルウェア（最新の安定バージョン）を使って開発します。

- Ruby
- Ruby on Rails
- PostgreSQL

## デプロイについて

Renderにデプロイします。
