# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.6.2
* System dependencies

* Configuration

* Database creation
```
rails db:create
rails db:migrate
```
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## コミット前にやること
rubocopのチェックをして違反している場合は修正する

### rubocopのチェック
```
bundle exec rubocop
```

### 禁止事項
- `--auto-gen-config`
- `--auto-correct`
