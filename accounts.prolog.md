# 商業會計項目表

### 用法
```Prolog
?- [/path/to/accounts.prolog].
true.

?- accounts:account('1111', Name, Eng_name, Desc).
%% 查詢項目 1111 的名稱、英譯名稱與項目說明。

?- accounts:account_desc('1111', Desc).
%% 查詢項目 1111 的項目說明。

?- accounts:describe_account('1111')
%% 印出項目 1111 的內容。
```
