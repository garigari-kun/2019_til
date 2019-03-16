## スロークエリをどう解決しようか？

- インデックスをはる
- クエリを変更する（結果はもちろん以前と同じように）

## 実行計画をみる

'''
EXPLAIN SELECT * FROM hoge WHERE,,,,,
'''

select_type, typeあたりから見ていくといいらしい

type=ALLとかになってると、インデックスまったく使えてないので、この辺からインデックス貼ってみるといい

## 設定の確認とか
'''
mysql> show variables like 'slow%';
+---------------------+----------------+
| Variable_name       | Value          |
+---------------------+----------------+
| slow_launch_time    | 2              |
| slow_query_log      | OFF            |
| slow_query_log_file | mysql-slow.log |
+---------------------+----------------+
'''

'''
mysql> set global slow_query_log_file = '/tmp/mysql-slow.log';
mysql> set global long_query_time = 5;
mysql> set global slow_query_log = ON;
'''


my.cnfの場合
'''
[mysqld]
slow_query_log
slow_query_log-file = /var/log/mysql/mysql-slow.sql
long_query_time = 5
'''


集計する
'''
mysqldumpslow -s t /var/log/mysql/mysql-slow.sql
'''



