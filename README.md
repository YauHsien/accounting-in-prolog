# 以 Prolog 製作的會計系統軟體
以 Prolog 格式簿記，並以 Prolog 的推論能力，自動謄寫總帳，並產生報表。

### 程式檔
+ 商業會計項目表 [accounts.prolog](accounts.prolog)
  + 原始資料：[商業會計項目表.pdf](data_source/商業會計項目表.pdf)
  + 會計項目表模組說明檔 [accounts.prolog.md](accounts.prolog.md)
+ [ ] 簿記基本程式
+ [ ] 謄帳程式
+ [ ] 產製報表程式
+ [ ] 分錄作業規範

## 簿記之綱要
一頁 Prolog 程式文件是會計期間的一本帳。

在 Prolog 程式裡以下列敘述表達一筆分錄：

```Prolog
%% 載入商業會計項目表。
:- [accounts.prolog].

%% 載入簿記基本程式
:- [bookkeeping.prolog].

%% 分錄資料 transaction(+Transaction_No, +Date, +Description).
transaction(1, 2026/1/7, "銷貨").

%% 借方 debit(+Transaction_No, +Account, +Rate).
debit(1, '1111', 525).

%% 貸方 credit(+Transaction_No, +Account, +Rate).
credit(1,    '1231', 500).
create(1,    '2204',  25). % 消費稅 500 x 0.05 = 25

%% 在分錄尾端立即核對兩平；如果非兩平，在讀取本頁時 Prolog 程序將提示資料錯誤。
:- check_balance_tx(1).
```

令以上一頁 Prolog 程式文件名為 `bk_2026.prolog`，則以下列程式進行謄帳，產製報表：

```Prolog
?- [bk_2026.prolog]. % 載入帳本
true.

?- [accounting.prolog]. % 載入會計程式
true.

?- check_balance(). % 檢查整本帳都兩平
true.

?- ledger('1111'). % 列出分類帳
...

?- general_ledger(). % 列出總分類帳
...

?- balance_sheet(). % 列出資產負債表
...

?- income_statement(). % 列出損益表
...

?- cash_flow_statement(). % 列出現金流量表
...

?- equity_change_statement(). % 列出業主權益變動表
...
```
