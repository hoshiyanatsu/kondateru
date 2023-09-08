# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [arm64-darwin20]

* Deployment instructions:
terminal or prompt:
1. ```sh
   $ git clone git@github.com:hoshiyanatsu/kondateru.git
   ```
2. ```sh
   $ cd kondateru
   ```
3. ```sh
   $ bundle install
   ```
4. ```sh
   $ rails db:create
   $ rails db:migrate
   ```
5. ```sh
   rails s
   ```
6. access to [https://localhost:3000](http://localhost:3000/)
## エラーが出た場合
* webpacker関係
1. [参考記事①](https://qiita.com/ginger-yell/items/8584e9149496940ea144)
2. [参考記事②](https://qiita.com/Uchibori/items/2f754b370fbbda34a09e)のrails webpacker:compileまでを実行
3. 再度 ```$ rails s```
