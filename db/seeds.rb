# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8
Meal.create!(name: '生姜焼き', feeling: 'ガッツリ', ingredient: '肉', time: '夜', kinds: '和', user_id: '1', dish: '主菜')
Meal.create(name: 'ホットケーキ', feeling: 'チル', ingredient: '卵', time: 'おやつの時間', kinds: 'おやつ', user_id: '1')
Meal.create(name: 'やきそば', feeling: 'ガッツリ', ingredient: '野菜', time: 'いつでも', kinds: '和', user_id: '1', dish: '主食')
Meal.create(name: '麻婆豆腐', feeling: 'ガッツリ', ingredient: '肉', time: '夜', kinds: '中', user_id: '1', dish: '主菜')
Meal.create(name: 'チャーハン', feeling: 'ガッツリ', ingredient: '米', time: 'いつでも', kinds: '中', user_id: '1', dish: '主食')
Meal.create(name: '鍋', feeling: 'あたたまる', ingredient: 'なんでも', time: '夜', kinds: 'なんでも', user_id: '1', dish: '主菜')
Meal.create(name: 'シチュー', feeling: 'あたたまる', ingredient: '肉', time: '夜', kinds: '洋', user_id: '1', dish: '主菜')
Meal.create(name: 'カレー', feeling: 'ガッツリ', ingredient: '肉', time: '夜', kinds: '洋', user_id: '1', dish: '主食')
Meal.create(name: '肉じゃが', feeling: 'ガッツリ', ingredient: '肉', time: '夜', kinds: '和', user_id: '1', dish: '主菜')