:- module(accounts, [account/4, account_desc/2, describe_account/1]).

%% account_level_1(?Code, ?Name, ?English_name, ?Description)
account_level_1('1', 資產, 'Assets', "指因過去事項所產生之資源，該資源由商業控制，並預期帶來經濟效益之流入。
The resources controlled by the business entity as a result of past events and from which future economic benefits are expected to flow to the business entity.").
account_level_1('2', 負債, 'Liabilities',
"指因過去事項所產生之現時義
務，預期該義務之清償，將導
致經濟效益之資源流出。
The present obligations of the
business entity arising from past
events, the settlement of which is
expected to result in an outflow
from the business entity of
resources embodying economic
benefits.").
account_level_1('3', 權益, 'Equity',
"指資產減去負債之剩餘權利。
The residual interest in the assts
of the business entity after
deducting all its liabilities.").
account_level_1('4', 營業收入, 'Operating revenue',
"指本期內因銷售商品或提供勞
務等所獲得之收入。
The revenue earned in the normal
operation of selling goods or
services provided in the current
period.").
account_level_1('5', 營業成本, 'Operating costs',
"指本期內因銷售商品或提供勞
務等而應負擔之成本。
The costs that are borne for
selling goods or providing
services in the current period.").
account_level_1('6', 營業費用, 'Operating expenses',
"指本期內因銷售商品或提供勞
務應負擔之費用（採費用功能
法者，應依費用之功能分類為
推銷費用、管理費用及研發費
用等）。
The expenses that are borne from
selling goods or providing
services in the current period.
(When applying “function of
expense” method, expenses are
classified according to their
function as part of administrative
expenses, and marketing
expenses, R&D expenses.)").
account_level_1('7', 營業外收益及費損, 'Non-operating income and expenses',
"指本期內非因經常營業活動所
發生之收益及費損。
The revenues and expenses which
do not arise from usual operating
activities in the current period.").
account_level_1('8', 綜合損益總額, 'Total comprehensive income', "").

%% account_level_2(?Code, ?Name, ?English_name, ?Description).
account_level_2('11-12', 流動資產, 'Current assets', "指商業預期於其正常營業週期
中實現、意圖出售或消耗之資
產、主要為交易目的而持有之
資產、預期於資產負債表日後
十二個月內實現之資產、現金
或約當現金，但不包括於資產
負債表日後逾十二個月用以交
換、清償負債或受有其他限制
者。
The current assets that the
business entity expects to realize,
or intends to sell or consume, in
its normal operating cycle; holds
the asset primarily for the
purpose of trading; expects to
realize the asset within twelve
months after the date of statement
of financial position; the asset is
cash or a cash equivalent. Unless
the asset is restricted from being
exchanged or used to settle a
liability for at least twelve
months after the date of statement
of financial position.").
account_level_2('13-15', 非流動資產, 'Non-current assets',
"指不能歸屬於流動資產之各類
資產。
The various assets that cannot be
attributed to current assets.").
account_level_2('21-22', 流動負債, 'Current liabilities',
"指商業預期於其正常營業週期
中清償之負債；主要為交易目
的而持有之負債；預期於資產
負債表日後十二個月內到期清
償之負債，即使該負債於資產
負債表日後至通過財務報表前
已完成長期性之再融資或重新
安排付款協議；商業不能無條
件將清償期限遞延至資產負債
表日後至少十二個月之負債。
The liabilities that the business
entity are to be expects to settle
the liability in its normal
operating cycle; it holds the
liability primarily for the purpose
of trading, and are expected to be
settled within twelve months after
the maturity of the debt, even if
the liability at the date of
statement of financial position to
complete the long-term
refinancing prior to the financial
statements or reschedule payment
agreement; it does not have an
unconditional right to defer
settlement of the liability for at
least twelve months after the date
of statement of financial position.").
account_level_2('23', 非流動負債, 'Non-current liabilities',
"指不能歸屬於流動負債之各類
負債。
The liabilities do not belong to
the current liabilities.").
account_level_2('31', '資本(或股本)', 'Capital (Share capital)',
"指業主對商業投入之資本額，
並向主管機關登記者，但不包
括符合負債性質之特別股。
The capital brought into the
business entity by the owner and
registered with a competent
authority; however it does not
include preferred share of liability
nature.").
account_level_2('32', 資本公積, 'Capital surplus',
"指公司因股本交易所產生之權
益。
The equity arising through
company’s trading of equity.").
account_level_2('33', '保留盈餘(或累積虧損)', 'Retained earnings (accumulated deficit)',
"指由營業結果所產生之權益。
The equity resulting from
business operations.").
account_level_2('34', 其他權益, 'Other equity interest',
"指其他造成權益增加或減少之
項目，包括透過其他綜合損益
按公允價值衡量之金融資產未
實現損益、避險工具之損益、
國外營運機構財務報表換算之
兌換差額及 未實現 重估增值
等。
The items causing the increase or
decrease of equity, including
unrealized gains (losses) from
financial assets measured at fair
value through other
comprehensive income, gains
(losses) on hedging instruments,
gains (losses) on the exchange
differences resulting from
translating the financial
statements in foreign operations,
unrealized revaluation surplus,
etc.").
account_level_2('35', 庫藏股票, 'Treasury shares',
"指公司收回已發行股票，尚未
再出售或註銷者。
The shares once issued, later
reacquired and still not resold or
cancelled by the company.").
account_level_2('41', 營業收入, 'Operating revenue', D) :- account_level_1('4', _, _, D).
account_level_2('51', 銷貨成本, 'Cost of sales', "").
account_level_2('61', 營業費用, 'Operating expenses', D) :- account_level_1('6', _, _, D).
account_level_2('71-72', 營業外收益及費損, 'Non-operating income and expenses', D) :- account_level_1('7', _, _, D).
account_level_2('81', '繼續營業單位稅前淨利（或淨損）', 'Profit (loss) from continuing operations before tax', "").
account_level_2('82', '所得稅費用(或利益)', 'Tax expense (income)', 
"指包含於決定本期損益中，與
當期所得稅及遞延所得稅有關
之彙總數。
The aggregate amount included in
the determination of profit or loss
for the period in respect of
current tax and deferred tax.").
account_level_2('83', '繼續營業單位稅後淨利(或淨損）', 'Profit (loss) from continuing operations', "").
account_level_2('84', '停業單位損益(稅後)', 'Profit (loss) from discontinued operations, net of tax', 
"指包括停業單位之稅後損益，
及構成停業單位之資產或處分
群組於按公允價值減出售成本
衡量時或於處分時所認列之稅
後利益或損失。
The post-tax profit or loss of
discontinued operations and the
post-tax gain or loss recognized
on the measurement to fair value
less costs to sell or on the
disposal of the assets or disposal
group(s) constituting the
discontinued operation.").
account_level_2('86', '本期稅後淨利(淨損)', 'Profit (loss)', 
"指本期之稅後盈餘（或虧損）。 The current period’s profit (or
loss).").
account_level_2('87', 本期其他綜合損益, 'Other comprehensive income', 
"指本期變動之其他權益，例如
透過其他綜合損益按公允價值
衡量之權益工具投資未實現損
益、透過其他綜合損益按公允
價值衡量之債務工具投資未實
現損益、避險工具之損益、國
外營運機構財務報表換算之兌
換差額、未實現重估增值及採
用權益法認列之其他綜合損益
等。
The changes of the equity in the
current period, including
unrealized gains (losses) from
investment in equity instrument
measured at fair value through
other comprehensive income,
unrealized gains (losses) from
investment in debt instrument
measured at fair value through
other comprehensive income,
gains (losses) on hedging
instruments, gains (losses) on
exchange differences on
translation of foreign financial
statements, unrealized revaluation
surplus, etc.").
account_level_2('88', 本期綜合損益總額, 'Total comprehensive income', 
"指本期稅後淨利(或淨損)及本期
其他綜合損益之合計數。
The components of the profit (or
loss) for the period and other
comprehensive income.").

%% account_level_3(?Code, ?Name, ?English_name, ?Description).
account_level_3('111', 現金及約當現金, 'Cash and cash equivalents',
"指庫存現金、活期存款及可隨
時轉換成定額現金且價值變動
風險甚小之短期並具高度流動
性之定期存款或投資。
Cash on hand, demand deposits,
and short-term, highly liquid
certificate deposits or investments
that are readily convertible to
known amounts of cash and
which are subject to an
insignificant risk of changes in
value.").
account_level_3('112', '透過損益按公允價值衡量之金融資產—流動',
		'Current financial assets measured at fair value through profit or loss',
"包括指定為透過損益按公允價
值衡量之金融資產—流動、強
制透過損益按公允價值衡量之
金融資產—流動、透過其他綜
合損益按公允價值衡量之權益
工具投資—流動、透過其他綜
合損益按公允價值衡量之債務
工具投資—流動、按攤銷後成
本衡量之金融資產—流動、以
成本衡量之金融資產—流動及
避險之金融資產—流動。
Including current financial assets
designation as measured at fair
value through profit or loss,
current financial assets
mandatorily measured at fair
value through profit or loss,
current equity investments
measured at fair value through
other comprehensive income,
current debt instrument
investments measured at fair
value through other
comprehensive income, current
financial assets measured at
amortized cost, current financial
assets measured at cost, current
financial assets for hedging.").
account_level_3('113', '透過其他綜合損益按公允價值衡量之金融資產—流動', 'Current financial assets measured at fair value through other comprehensive income', D) :- account_level_3('112', _, _, D).
account_level_3('114', '以成本衡量之金融資產—流動', 'Current financial assets measured at cost', D) :- account_level_3('112', _, _, D).
account_level_3('115', '按攤銷後成本衡量之金融資產—流動', 'Current financial assets measured at amortized cost', D) :- account_level_3('112', _, _, D).
account_level_3('117', '避險之金融資產—流動', 'Current financial assets for hedging', D) :- account_level_3('112', _, _, D).
account_level_3('118', 應收票據淨額, 'Notes receivable, net', "指商業應收之各種票據。
The various notes which are
collected by the business entity.").
account_level_3('119', 應收帳款淨額, 'Accounts receivable, net', "指商業因出售商品或勞務等而
發生之債權。
The claim of the business entity
resulting from sale of goods or
services.").
account_level_3('120', 應收建造合約款, 'Construction contracts receivable', D) :- account_level_3('119', _, _, D).
account_level_3('121', 其他應收款, 'Other receivables',
"指不屬於應收票據、應收帳款
及應收建造 合約款 之應收款
項。
The receivables that do not
belong to the notes receivable,
accounts receivable, and
construction contracts receivable.").
account_level_3('122', 本期所得稅資產, 'Current tax assets',
"指已支付所得稅金額超過本期
及前期應付金額之部分。
The portion of the tax amount
already paid in respect of current").
account_level_3('123-124', 存貨, 'Inventories',
"指持有供正 常營業 過程出售
者；或正在製造過程中以供正
常營業過程出售者；或將於製
造過程或勞務提供過程中消耗
之原料或物料。
The held for sale in the ordinary
course of business; or in the
process of production for sale in
the ordinary course of business;
or in the form of materials or
supplies to be consumed in the
production process or in the
rendering of services.").
account_level_3('125', '生物資產—流動', 'Current biological assets',
"指與農業活動有關且具有生命
之動物或植物。在生產性植物
上生長中之農產品亦屬之。
The living animals or plants and
related to agricultural activity,
including produce growing on
bearer plants.").
account_level_3('126-127', 預付款項, 'Prepayments',
"指預為支付 之各項 成本或費
用，包括預付費用及預付購料
款等。
The various costs and expenses
prepaid, including prepaid
expenses and prepayments to
suppliers.").
account_level_3('128', 其他流動資產, 'Other current assets',
"指不能歸屬於前述各類之流動
資產。
The current assets that do not
belong to the above categories.").
account_level_3('131', '透過損益按公允價值衡量之金融資產—非流動', 'Non-current financial assets measured at fair value through profit or loss',
"包括指定為透過損益按公允價
值衡量之金融資產—非流動、
強制透過損益按公允價值衡量
之金融資產—非流動、透過其
他綜合損益按公允價值衡量之
權益工具投資—非流動、透過
其他綜合損益按公允價值衡量
之債務工具投資—非流動、以
成 本 衡 量 之 金 融 資 產—非 流
動、避險之金融資產—非流動
及採用權益法之投資。
Including non-current financial
assets designation as measured at
fair value through profit or loss,
non-current financial assets
mandatorily measured at fair
value through profit or loss, non-
current equity investments
measured at fair value through
other comprehensive income,
non-current debt instrument
investments measured at fair
value through other
comprehensive income, non-
current financial assets measured
at amortized cost,, non-current
financial assets measured at cost,
non-current financial assets for
hedging, and the investments
accounted for using the equity
method.").
account_level_3('132', '透過其他綜合損益按公允價值衡量之金融資產—非流動', 'Non-current financial assets measured at fair value through other comprehensive income', D) :- account_level_3('131', _, _, D).
account_level_3('133', '以成本衡量之金融資產—非流動', 'Non-current financial assets measured at cost', D) :- account_level_3('131', _, _, D).
account_level_3('134', '按攤銷後成本衡量之金融資產—非流動', 'Non-current financial assets measured at amortized cost', D) :- account_level_3('131', _, _, D).
account_level_3('136', '避險之金融資產—非流動', 'Non-current financial assets for hedging', D) :- account_level_3('131', _, _, D).
account_level_3('137', 採用權益法之投資, 'Investments accounted for using equity method',
"指持有具重大影響力或控制能
力之權益工具投資。
Holding an investment in equity
instruments with major influence
or power of control.").
account_level_3('138', 投資性不動產, 'Investment property',
"指為賺取租金或資本增值或兩
者兼具，而由所有者或融資租
賃之承租人所持有之不動產。
The property held by the owner
or by the lessee under a finance
lease to earn rentals or for capital
appreciation or both.").
account_level_3('139-146', '不動產、廠房及設備', 'Property, plant and equipment',
"指用於商品、農業產品或勞務 
之生產或提供、出租予他人或
供管理目的而持有，且預期使
用期間超過一年之有形資產，
包括土地、 建築物 、機器設
備、運輸設備及辦公設備等會
計項目。
The tangible items which are
defined as held for use in the
production or supply of goods,
agricultural produce or services,
for rental to others, or for
administrative purposes and
expected to be used during more
than one period, include land,
buildings, machinery and
equipment, shipping equipment
and office equipment.").
account_level_3('140', Name, Eng_name, Desc) :- account_level_3('139-146', Name, Eng_name, Desc).
account_level_3('141', Name, Eng_name, Desc) :- account_level_3('139-146', Name, Eng_name, Desc).
account_level_3('142', Name, Eng_name, Desc) :- account_level_3('139-146', Name, Eng_name, Desc).
account_level_3('143', Name, Eng_name, Desc) :- account_level_3('139-146', Name, Eng_name, Desc).
account_level_3('144', Name, Eng_name, Desc) :- account_level_3('139-146', Name, Eng_name, Desc).
account_level_3('145', Name, Eng_name, Desc) :- account_level_3('139-146', Name, Eng_name, Desc).
account_level_3('147', 礦產資源淨額, 'Mineral resources, net',
"指蘊藏量將隨開採或其他使用
方法而耗竭之天然礦產。
The natural resources whose
value decreases after extraction or
other means of alteration.").
account_level_3('148', '生物資產—非流動', 'Non-current biological assets',
"生物資產，指與農業活動有關
且具生命之動物或植物。生物
資產應依流動性區分為流動與
非流動，並以公允價值減出售
成本衡量。但取得公允價值需
耗費過當之成本或努力者，得
以其成本減累計折舊及累計減
損後之帳面金額列示。
Biological assets are living
animals or plants and related to
agricultural activity. Biological
assets shall be divided into
current and non-current according
to the liquidity, and measured by
fair value less costs to sell. But
fair value is not readily
determinable without undue cost
or effort, may be carried at its
cost less accumulated
depreciation and accumulated
impairment losses.").
account_level_3('149-155', 無形資產, 'Intangible assets',
"指無實體形式之可辨認非貨幣
性資產及商譽。
The identifiable non-monetary
assets without physical substance
and goodwill.").
account_level_3('150', Name, Eng_name, Desc) :- account_level_3('149-155', Name, Eng_name, Desc).
account_level_3('151', Name, Eng_name, Desc) :- account_level_3('149-155', Name, Eng_name, Desc).
account_level_3('152', Name, Eng_name, Desc) :- account_level_3('149-155', Name, Eng_name, Desc).
account_level_3('153', Name, Eng_name, Desc) :- account_level_3('149-155', Name, Eng_name, Desc).
account_level_3('154', Name, Eng_name, Desc) :- account_level_3('149-155', Name, Eng_name, Desc).
account_level_3('156', 遞延所得稅資產, 'Deferred tax assets',
"指與可減除暫時性差異、未使
用課稅損失遞轉後期及未使用
所得稅抵減遞轉後期有關之未
來期間可回收所得稅金額。
The amounts of income taxes
recoverable in future periods in
respect of deductible temporary
differences; the carryforward of
unused tax losses; and the
carryforward of unused tax
credits.").
account_level_3('157-158', 其他非流動資產, 'Other non-current assets',
"指不能歸屬於前述各類之非流
動資產。
The noncurrent assets that do not
belong to the above categories.").
account_level_3('211', 短期借款, 'Short-term borrowings',
"指向金融機構或他人借入或透
支之款項。
The sum of money that is
borrowed or is an overdraft from
a financial institution or another
party.").
account_level_3('212', 應付短期票券, 'Short-term notes and bills payable',
"指為自貨幣市場獲取資金，而
委託金融機 構發行 之短期票
券，包括應付商業本票及銀行
承兌匯票等。
The short-term notes and bills
issued through a commissioned
financial institution for the
purpose of obtaining funds from
the money market, including
commercial paper payable and
bank acceptances, etc.").
account_level_3('213', '透過損益按公允價值衡量之金融負債—流動', 'Current financial liabilities measured at fair value through profit or loss',
"指持有供交易或原始認列時被
指定為透過損益按公允價值衡
量之金融負債。
The financial liabilities that is
held for trading or designation as
measured at fair value through
profit or loss at initial
recognition.").
account_level_3('214', '避險之金融負債—流動', 'Current financial liabilities for hedging',
"指依避險會計指定且為有效避
險工具之金融負債。
The financial liability that is a
designated and effective hedging
instrument under hedge
accounting requirements.").
account_level_3('215', '以成本衡量之金融負債—流動', 'Current financial liabilities measured at cost',
"指與無活絡市場公開報價之權
益工具連結，並以交付該等權
益工具交割之衍生工具，其公
允價值無法可靠衡量之金融負
債。
The financial liability that is a
derivative instrument linked to
and settled by the delivery of
equity instruments that does not
have a quoted price in an active
market and whose fair value
cannot be reliably measured.").
account_level_3('216', 應付票據, 'Notes payable',
"指商業應付之各種票據。
The various notes payable
handled by the business entity.").
account_level_3('217', 應付帳款, 'Accounts payable',
"指因賖購原物料、商品或勞務
所發生之債務。
The liabilities occurred due to
trade on credit terms purchased of
raw materials, goods or services.").
account_level_3('218', 應付建造合約款, 'Construction contracts payable', "").
account_level_3('219-220', 其他應付款, 'Other payables',
"指不屬於應付票據、應付帳款
及應付建造 合約款 之應付款
項，如應付薪資、應付稅捐、
應付股息紅利等。
Any of the payables that do not
belong to the notes payable ,
accounts payable, and
construction contracts payable,
such as other salary payables,
taxes payables, dividend and
bonus payables, etc.").
account_level_3('221', 本期所得稅負債, 'Current tax liabilities',
"指尚未支付之本期及前期所得
稅。
The unpaid income tax for the
current and prior periods.").
account_level_3('222', 預收款項, 'Advance receipts',
"指預為收納之各種款項。
The amount received in advance.").
account_level_3('223', 一年內到期長期負債, 'Long-term liabilities, current portion', "").
account_level_3('224', '負債準備—流動', 'Current provisions',
"指不確定時點或金額之流動負
債。
The current liabilities of uncertain
timing or amount.").
account_level_3('225', 其他流動負債, 'Other current liabilities',
"指不能歸屬於前述各類之流動
負債。
The current liabilities that do not
belong to the previous categories.").
account_level_3('231', '透過損益按公允價值衡量之金融負債—非流動', 'Non-current financial liabilities measured at fair value through profit or loss', D) :- account_level_2('23', _, _, D).
account_level_3('232', '避險之金融負債—非流動', 'Non-current financial liabilities for hedging', D) :- account_level_2('23', _, _, D).
account_level_3('233', '以成本衡量之金融負債—非流動', 'Non-current financial liabilities measured at cost', D) :- account_level_2('23', _, _, D).
account_level_3('234', 應付公司債, 'Bonds payable',
"指商業發行之債券。
The bonds issued by the business
entity.").
account_level_3('235', 長期借款, 'Long-term borrowings',
"指到期日在一年以上之借款。
The loans payable whose
repayment deadlines are exceeds
one year.").
account_level_3('236', 長期應付票據及款項, 'Long-term notes and accounts payable',
"指付款期間在一年以上之應付
票據、應付帳款。
The notes payables, accounts
payables, etc. whose payment
deadline exceeds one year.").
account_level_3('237', '負債準備—非流動', 'Non-current provisions',
"指不確定時點或金額之非流動
負債。
The non-current liabilities of
uncertain timing or amount.").
account_level_3('238', 遞延所得稅負債, 'Deferred tax liabilities',
"指與應課稅暫時性差異有關之
未來期間應付所得稅。
The amounts of income taxes
payable in future periods in
respect of taxable temporary
differences.").
account_level_3('239', 其他非流動負債, 'Other non-current liabilities',
"指不能歸屬於前述各類之其他
非流動負債。
The other non-current liabilities
that do not belong to the above
categories.").
account_level_3('311', '資本(或股本)', 'Capital (Share capital)', D) :- account_level_2('31', _, _, D).
account_level_3('321', 資本公積, 'Capital surplus', D) :- account_level_2('32', _, _, D).
account_level_3('331', 法定盈餘公積, 'Legal reserve',
"指依公司法或其他相關法律規
定，自盈餘中指撥之公積。
The reserve appropriated from earnings
according to Company Law or other
related regulations.").
account_level_3('332', 特別盈餘公積, 'Special reserve',
"指依法令或盈餘分派之議案，
自盈餘中指撥之公積，以限制
股息及紅利之分派者。
The reserve appropriated from
earnings according to regulations
or the resolution of earnings
distribution for the purpose of
restricting the distribution of
earnings as dividends or bonus.").
account_level_3('335', '未分配盈餘(或待彌補虧損)', 'Unappropriated retained earnings (accumulated deficit)',
"指未經指撥之盈餘(或未經彌補
之虧損)。
The earnings that have not been
appropriated (or the deficit has
not been offset).").
account_level_3('341', 其他權益, 'Other equity interest', D) :- account_level_2('34', _, _, D).
account_level_3('351', 庫藏股票, 'Treasury shares', D) :- account_level_2('35', _, _, D).
account_level_3('411', 銷貨收入, 'Sales revenue', "").
account_level_3('412', 勞務收入, 'Service revenue', "").
account_level_3('413-423', 工程收入, 'Engineering service revenue', "").
account_level_3('414', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('415', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('416', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('417', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('418', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('419', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('420', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('421', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('422', Name, Eng_name, Desc) :- account_level_3('413-423', Name, Eng_name, Desc).
account_level_3('414', 其他營業收入, 'Other operating revenue', "").
account_level_3('511', 銷貨成本, 'Cost of sales', "").
account_level_3('512', 進貨, 'Cost of goods purchased', "").
account_level_3('513', 進料, 'Cost of raw materials purchased', "").
account_level_3('514', 直接人工, 'Direct labor', "").
account_level_3('515-516', 製造費用, 'Overhead', "").
account_level_3('561', 勞務成本, 'Cost of services', "").
account_level_3('581', 工程成本, 'Cost of engineering service sales', "").
account_level_3('591', 其他營業成本, 'Other operating costs', "").
account_level_3('611-613', 營業費用, 'Operating expenses', D) :- account_level_2('61', _, _, D).
account_level_3('612', Name, Eng_name, Desc) :- account_level_3('611-613', Name, Eng_name, Desc).
account_level_3('711', 利息收入, 'Interest revenue', "").
account_level_3('712', 租金收入, 'Rent income', "").
account_level_3('713', 權利金收入, 'Royalty income', "").
account_level_3('714', 股利收入, 'Dividend revenue', "").
account_level_3('715', 利息費用, 'Interest expense', "").
account_level_3('716', '透過損益按公允價值衡量之金融資產(負債)淨損益', 'Net Gain or loss on financial assets (liabilities) measured at fair value through profit or loss', "").
account_level_3('717', 採權益法認列之投資損益, 'Net investment income or loss accounted for using equity method', "").
account_level_3('718', 兌換損益, 'Foreign exchange net gain or loss', "").
account_level_3('719', 處分投資損益, 'Net gain or loss on disposals of investment', "").
account_level_3('720', '處分不動產、廠房及設備損益', 'Net gain or loss on disposals of property, plant and equipment', "").
account_level_3('721', 減損損失, 'Impairment loss', "").
account_level_3('722', 減損迴轉利益, 'Reversal of impairment loss recognised in profit or loss', "").
account_level_3('723-724', 其他營業外收益及費損, 'Other non-operating income and expenses',
"凡不屬於前述各類之營業外收
益及費損皆屬之。
The other non-operating income
and expenses that do not belong
to the above categories.
").
account_level_3('811', '繼續營業單位稅前淨益（或淨損）', 'Profit (loss) from continuing operations before tax', D) :- account_level_2('81', _, _, D).
account_level_3('821', '所得稅費用(或利益)', 'Tax expense (income)', D) :- account_level_2('82', _, _, D).
account_level_3('831', '繼續營業單位稅後淨利(或淨損）', 'Profit (loss) from continuing operations', D) :- account_level_2('83', _, _, D).
account_level_3('841', '停業單位損益(稅後)', 'Profit (loss) from discontinued operations, net of tax', D) :- account_level_2('84', _, _, D).
account_level_3('871', 透過其他綜合損益按公允價值衡量之金融資產未實現損益, 'Unrealized gains (losses) from financial assets measured at fair value through other comprehensive income', D) :- account_level_2('87', _, _, D).
account_level_3('872', 避險工具之損益, 'Gains (losses) on hedging instruments', D) :- account_level_2('87', _, _, D).
account_level_3('873', 國外營運機構財務報表換算之兌換差額, 'Exchange differences on translation of foreign financial statements',  D) :- account_level_2('87', _, _, D).
account_level_3('874', 未實現重估增值, 'Unrealized gains (losses) on revaluation',  D) :- account_level_2('87', _, _, D).
account_level_3('875', 採用權益法認列之其他綜合損益份額, 'Share of other comprehensive income, accounted for using equity method',  D) :- account_level_2('87', _, _, D).
account_level_3('876', 與本期其他綜合損益相關之所得稅, 'Income tax related to components of other comprehensive income',  D) :- account_level_2('87', _, _, D).

%% account_level_4(?Code, ?Name, ?English_name).
account_level_4('1111', 庫存現金, 'Cash on hand').
account_level_4('1112', '零用金／週轉金', 'Petty cash / revolving funds').
account_level_4('1113', 銀行存款, 'Cash in banks').
account_level_4('1114', 在途現金, 'Cash in transit').
account_level_4('1115', 約當現金, 'Cash equivalents').
account_level_4('1121', '指定為透過損益按公允價值衡量之金融資產—流動', 'Current financial assets designation as measured at fair value through profit or loss').
account_level_4('1122', '指定為透過損益按公允價值衡量之金融資產評價調整—流動', 'Adjustments for change in value of current financial assets designation as measured at fair value through profit or loss').
account_level_4('1123', '強制透過損益按公允價值衡量之金融資產—流動', 'Current financial assets mandatorily measured at fair value through profit or loss').
account_level_4('1124', '強制透過損益按公允價值衡量之金融資產評價調整—流動', 'Adjustments for change in value of current financial assets mandatorily measured at fair value through profit or loss').
account_level_4('1131', '透過其他綜合損益按公允價值衡量之權益工具投資—流動', 'Current equity investments measured at fair value through other comprehensive income').
account_level_4('1132', '透過其他綜合損益按公允價值衡量之權益工具投資評價調整—流動', 'Adjustments for change in value of current equity investments measured at fair value through other comprehensive income').
account_level_4('1133', '透過其他綜合損益按公允價值衡量之債務工具投資—流動', 'Current debt instrument investments measured at fair value through other comprehensive income').
account_level_4('1134', '透過其他綜合損益按公允價值衡量之債務工具投資評價調整—流動', 'Adjustments for change in value of current debt instrument investments measured at fair value through other comprehensive income').
account_level_4('1141', '以成本衡量之金融資產—流動', 'Current financial assets measured at cost').
account_level_4('1142', '累計減損—以成本衡量之金融資產—流動', 'Accumulated impairment, current financial assets measured at cost').
account_level_4('1151', '按攤銷後成本衡量之金融資產—流動', 'Current financial assets measured at amortized cost').
account_level_4('1152', '備抵損失—按攤銷後成本衡量之金融資產—流動', 'Loss allowances, current financial assets measured at amortized cost').
account_level_4('1171', '避險之金融資產—流動', 'Current financial assets for hedging').
account_level_4('1172', '避險之金融資產評價調整—流動', 'Adjustments for change in value of current financial assets for hedging').
account_level_4('1181', 應收票據, 'Notes receivable').
account_level_4('1182', 應收票據貼現, 'Discounted notes receivable').
account_level_4('1183', '應收票據—關係人', 'Notes receivable due from related parties').
account_level_4('1184', 其他應收票據, 'Other notes receivable').
account_level_4('1185', '備抵損失—應收票據', 'Loss allowance, notes receivable').
account_level_4('1186', '應收票據貼現—關係人', 'Discounted notes receivable due from related parties').
account_level_4('1187', '其他應收票據—關係人', 'Other notes receivable due from related parties').
account_level_4('1188', '備抵損失—應收關係人票據', 'Loss allowance, notes receivable due from related parties').
account_level_4('1191', 應收帳款, 'Accounts receivable').
account_level_4('1192', 備抵銷售退回及折讓, 'Allowance for sales returns and discounts').
account_level_4('1193', 應收分期帳款, 'Installment accounts receivable').
account_level_4('1194', 未實現利息收入, 'Unrealized interest income').
account_level_4('1195', 應收租賃款, 'Lease payments receivable').
account_level_4('1196', 未賺得融資收益, 'Unearned finance income').
account_level_4('1197', '應收帳款—關係人', 'Accounts receivable due from related parties').
account_level_4('1198', '備抵損失—應收租賃款', 'Loss allowance, lease payments receivable').
account_level_4('1199', '備抵損失—應收帳款及分期帳款', 'Loss allowance, accounts receivable and installment accounts receivables').
account_level_4('119A', '應收分期帳款—關係人', 'Installment accounts receivable due from related parties').
account_level_4('119B', '未實現利息收入—關係人', 'Unrealized interest income due from related parties').
account_level_4('119C', '應收租賃款—關係人', 'Lease payments receivable due from related parties').
account_level_4('119D', '未賺得融資收益—關係人', 'Unearned finance income due from related parties').
account_level_4('119E', '備抵損失—應收關係人款項及分期帳款', 'Loss allowance, accounts receivable and installment accounts receivable due from related parties').
account_level_4('119F', '備抵損失—應收關係人租賃款', 'Loss allowance,lease payments receivable due from related parties').
account_level_4('1201', 應收建造合約款, 'Construction contracts receivable').
account_level_4('1202', '應收建造合約款—關係人', 'Construction contracts receivable due from related parties').
account_level_4('1211', 應收收益, 'Non-operating revenues receivable').
account_level_4('1212', '其他應收款—關係人', 'Other receivables due from related parties').
account_level_4('1213', '其他應收款—其他', 'Other non-operating receivables, others').
account_level_4('1214', '備抵損失—其他應收款', 'Loss allowance, other nonoperating receivables').
account_level_4('1215', '備抵損失—其他應收關係人款', 'Loss allowance, other receivables due from related parties').
account_level_4('1221', 應收所得稅退稅款, 'Income tax refund receivable').
account_level_4('1222', 預付所得稅, 'Prepaid income tax and prior periods that exceed the amount due for those periods.').
account_level_4('1231', 商品存貨, 'Merchandise inventory').
account_level_4('1232', 寄銷品, 'Goods on consignment').
account_level_4('1233', 在途商品, 'Goods in transit').
account_level_4('1234', '備抵存貨跌價(買賣業)', 'Allowance for inventory valuation (for merchandising business)').
account_level_4('1235', 製成品, 'Finished goods').
account_level_4('1236', 副產品, 'By-products').
account_level_4('1237', 在製品, 'Work in progress').
account_level_4('1238', 委外加工, 'Outsourced processing').
account_level_4('1239', 原料, 'Raw materials').
account_level_4('1240', 物料, 'Supplies').
account_level_4('1241', 在途原物料, 'Materials and supplies in transit').
account_level_4('1242', '備抵存貨跌價(製造業)', 'Allowance for inventory valuation (for manufacturing business)').
account_level_4('1243', 農業產品, 'Agricultural produce').
account_level_4('1244', 在建工程, 'Construction in progress').
account_level_4('1251', '生產性生物資產—流動', 'Current bearer biological assets').
account_level_4('1252', '累計折舊—生產性生物資產—流動', 'Accumulated depreciation, current bearer biological assets').
account_level_4('1253', '累計減損—生產性生物資產—流動', 'Accumulated impairment, current bearer biological assets').
account_level_4('1254', '生產性生物資產公允價值減出售成本累計變動數—流動', 'Cumulative change in fair value less costs to sell of current bearer biological assets').
account_level_4('1255', '消耗性生物資產—流動', 'Current consumable biological assets').
account_level_4('1256', '累計折舊—消耗性生物資產—流動', 'Accumulated depreciation, current consumable biological assets').
account_level_4('1257', '累計減損—消耗性生物資產—流動', 'Accumulated impairment, current consumable biological assets').
account_level_4('1258', '消耗性生物資產公允價值減出售成本累計變動數—流動', 'Cumulative change in fair value less costs to sell of current consumable biological assets').
account_level_4('1261', 預付薪資, 'Advance wages and salaries').
account_level_4('1262', 預付租金, 'Prepaid rents').
account_level_4('1263', 預付保險費, 'Prepaid insurance premiums').
account_level_4('1264', 用品盤存, 'Office supplies').
account_level_4('1265', 其他預付費用, 'Other prepaid expenses').
account_level_4('1266', 預付貨款, 'Prepayments to suppliers').
account_level_4('1267', 預付投資款, 'Current prepayments for investments').
account_level_4('1268', 進項稅額, 'Business tax paid (or Input VAT)').
account_level_4('1269', 留抵稅額, 'Excess business tax paid (or Net Input VAT)').
account_level_4('1270', 其他預付款項, 'Other prepayments').
account_level_4('1281', 暫付款, 'Temporary debits').
account_level_4('1282', 代付款, 'Payment on behalf of others').
account_level_4('1283', 員工借支, 'Advances to employees').
account_level_4('1284', 存出保證金, 'Guarantee deposits paid').
account_level_4('1311', '指定為透過損益按公允價值衡量之金融資產—非流動', 'Non-current financial assets designation as measured at fair value through profit or loss').
account_level_4('1312', '指定為透過損益按公允價值衡量之金融資產評價調整—非流動', 'Adjustments for change in value of non-current financial assets designation as measured at fair value through profit or loss').
account_level_4('1313', '強制透過損益按公允價值衡量之金融資產—非流動', 'Non-current financial assets mandatorily measured at fair value through profit or loss').
account_level_4('1314', '強制透過損益按公允價值衡量之金融資產評價調整—非流動', 'Adjustments for change in value of non-current financial assets mandatorily measured at fair value through profit or loss').
account_level_4('1321', '透過其他綜合損益按公允價值衡量之權益工具投資—非流動', 'Non-current equity investments measured at fair value through other comprehensive income').
account_level_4('1322', '透過其他綜合損益按公允價值衡量之權益工具投資評價調整—非流動', 'Adjustments for change in value of non-current equity investments measured at fair value through other comprehensive income').
account_level_4('1323', '透過其他綜合損益按公允價值衡量之債務工具投資—非流動', 'Non-current debt instrument investments measured at fair value through other comprehensive income').
account_level_4('1324', '透過其他綜合損益按公允價值衡量之債務工具投資評價調整—非流動', 'Adjustments for change in value of non-current debt instrument investments measured at fair value through other comprehensive income').
account_level_4('1331', '以成本衡量之金融資產—非流動', 'Non-current financial assets measured at cost').
account_level_4('1332', '累計減損—以成本衡量之金融資產—非流動', 'Accumulated impairment, non-current financial assets measured at cost').
account_level_4('1341', '按攤銷後成本衡量之金融資產—非流動', 'Non-current financial assets measured at amortized cost').
account_level_4('1342', '備抵損失—按攤銷後成本衡量之金融資產—非流動', 'Loss allowances, non-current financial assets measured at amortized cost').
account_level_4('1361', '避險之金融資產—非流動', 'Non-current financial assets for hedging').
account_level_4('1362', '避險之金融資產評價調整—非流動', 'Adjustments for change in value of non-current financial assets for hedging').
account_level_4('1371', 採用權益法之投資, 'Investments accounted for using equity method').
account_level_4('1372', '累計減損—採用權益法之投資', 'Accumulated impairment, investments accounted for using equity method').
account_level_4('1381', '投資性不動產—土地—成本', 'Investment property, land, cost').
account_level_4('1382', '投資性不動產—土地—累計公允價值變動數', 'Accumulated changes in fair value, investment property, land').
account_level_4('1383', '累計減損—投資性不動產—土地', 'Accumulated impairment, investment property, land').
account_level_4('1384', '投資性不動產—建築物—成本', 'Investment property, buildings, cost').
account_level_4('1385', '投資性不動產—建築物—重估增值', 'Investment property, buildings, revaluation increment').
account_level_4('1386', '投資性不動產—建築物—累計公允價值變動數', 'Accumulated changes in fair value, investment property, buildings').
account_level_4('1387', '累計折舊—投資性不動產—建築物', 'Accumulated depreciation, investment property, buildings').
account_level_4('1388', '累計減損—投資性不動產—建築物', 'Accumulated impairment, investment property, buildings').
account_level_4('1391', '土地—成本', 'Land, cost').
account_level_4('1392', '土地—重估增值', 'Land, revaluation increment').
account_level_4('1393', '累計減損—土地', 'Accumulated impairment, land').
account_level_4('1401', '土地改良物—成本', 'Land improvements, cost').
account_level_4('1402', '土地改良物—重估增值', 'Land improvements, revaluation increment').
account_level_4('1403', '累計折舊—土地改良物', 'Accumulated depreciation, land improvements').
account_level_4('1404', '累計減損—土地改良物', 'Accumulated impairment, land improvements').
account_level_4('1411', '房屋及建築—成本', 'Buildings and structures, cost').
account_level_4('1412', '房屋及建築—重估增值', 'Buildings and structures, revaluation increment').
account_level_4('1413', '累計折舊—房屋及建築', 'Accumulated depreciation, buildings and structures').
account_level_4('1414', '累計減損—房屋及建築', 'Accumulated impairment, buildings and structures').
account_level_4('1421', '機器設備—成本', 'Machinery and equipment, cost').
account_level_4('1422', '累計折舊—機器設備', 'Accumulated depreciation, machinery and equipment').
account_level_4('1423', '累計減損—機器設備', 'Accumulated impairment, machinery and equipment').
account_level_4('1431', '辦公設備—成本', 'Office equipment, cost').
account_level_4('1432', '累計折舊—辦公設備', 'Accumulated depreciation, office equipment').
account_level_4('1433', '累計減損—辦公設備', 'Accumulated impairment, office equipment').
account_level_4('1441', '租賃資產—成本', 'Leased assets, cost').
account_level_4('1442', '累計折舊—租賃資產', 'Accumulated depreciation, leased assets').
account_level_4('1443', '累計減損—租賃資產', ' Accumulated impairment, leased assets').
account_level_4('1451', '出租設備—成本', 'Rental assets, cost').
account_level_4('1452', '累計折舊—出租設備', 'Accumulated depreciation, rental assets').
account_level_4('1453', '累計減損—出租設備', 'Accumulated impairment, rental assets').
account_level_4('1461', '租賃權益改良—成本', 'Leasehold improvements, cost').
account_level_4('1462', '累計折舊—租賃權益改良', 'Accumulated depreciation, leasehold improvements').
account_level_4('1463', '累計減損—租賃權益改良', 'Accumulated impairment, leasehold improvements').
account_level_4('1464', 未完工程及待驗設備, 'Unfinished construction and equipments pending acceptance').
account_level_4('1466', '生產性植物—成本', 'Bearer plants, cost').
account_level_4('1467', '累計折舊—生產性植物', 'Accumulated depreciation, bearer plants').
account_level_4('1468', '累計減損—生產性植物', 'Accumulated impairment, bearer plants').
account_level_4('1471', '礦產資源—成本', 'Mineral resources, cost').
account_level_4('1472', '礦產資源—重估增值', 'Mineral resources, revaluation increment').
account_level_4('1473', '累計折耗—礦產資源', 'Accumulated depletion, mineral resources').
account_level_4('1474', '累計減損—礦產資源', 'Accumulated impairment, mineral resources').
account_level_4('1481', '生產性生物資產—非流動', 'Non-current bearer biological assets').
account_level_4('1482', '累計折舊—生產性生物資產—非流動', 'Accumulated depreciation, non-current bearer biological assets').
account_level_4('1483', '累計減損—生產性生物資產—非流動', 'Accumulated impairment, non-current bearer biological assets').
account_level_4('1484', '生產性生物資產公允價值減出售成本累計變動數—非流動', 'Accumulated change in fair value less costs to sell of non-current bearer biological assets').
account_level_4('1485', '消耗性生物資產—非流動', 'Non-current consumable biological assets').
account_level_4('1486', '累計折舊—消耗性生物資產—非流動', 'Accumulated depreciation, non-current consumable biological assets').
account_level_4('1487', '累計減損—消耗性生物資產—非流動', 'Accumulated impairment, non-current consumable biological assets').
account_level_4('1488', '消耗性生物資產公允價值減出售成本累計變動數—非流動', 'Accumulated change in fair value less cost to sell of non-current consumable biological assets').
account_level_4('1491', '商標權—成本', 'Trademarks, cost').
account_level_4('1492', '商標權—重估增值', 'Trademarks, revaluation increment').
account_level_4('1493', '累計攤銷—商標權', 'Accumulated amortization, trademarks').
account_level_4('1494', '累計減損—商標權', 'Accumulated impairment, trademarks').
account_level_4('1501', '專利權—成本', 'Patents, cost').
account_level_4('1502', '專利權—重估增值', 'Patents, revaluation increment').
account_level_4('1503', '累計攤銷—專利權', 'Accumulated amortization, patents').
account_level_4('1504', '累計減損—專利權', 'Accumulated impairment, patents').
account_level_4('1511', '特許權—成本', 'Franchise, cost').
account_level_4('1512', '特許權—重估增值', 'Franchise, revaluation increment').
account_level_4('1513', '累計攤銷—特許權', 'Accumulated amortization, franchise').
account_level_4('1514', '累計減損—特許權', 'Accumulated impairment, franchise').
account_level_4('1521', '著作權—成本', 'Copyright, cost').
account_level_4('1522', '著作權—重估增值', 'Copyright, revaluation increment').
account_level_4('1523', '累計攤銷—著作權', 'Accumulated amortization, copyright').
account_level_4('1524', '累計減損—著作權', 'Accumulated impairment, copyright').
account_level_4('1531', '電腦軟體—成本', 'Computer software, cost').
account_level_4('1532', '電腦軟體—重估增值', 'Computer software, revaluation increment').
account_level_4('1533', '累計攤銷—電腦軟體', 'Accumulated amortization, computer software').
account_level_4('1534', '累計減損—電腦軟體', 'Accumulated impairment, computer software').
account_level_4('1541', '商譽—成本', 'Goodwill, cost').
account_level_4('1542', '累計攤銷—商譽', 'Accumulated amortization, goodwill').
account_level_4('1543', '累計減損—商譽', 'Accumulated impairment, goodwill').
account_level_4('1551', 其他無形資產, 'Other intangible assets, net').
account_level_4('1552', '累計攤銷—其他無形資產', 'Accumulated amortization, other intangible assets').
account_level_4('1553', '累計減損—其他無形資產', 'Accumulated impairment, other intangible assets').
account_level_4('1561', 遞延所得稅資產, 'Deferred tax assets').
account_level_4('1571', 長期應收票據, 'Long-term notes receivable').
account_level_4('1572', 長期應收款, 'Long-term accounts receivables').
account_level_4('1573', 催收款項, 'Overdue receivables').
account_level_4('1574', '備抵損失—長期應收票據及款項', 'Loss Allowance, long-term notes and accounts receivable').
account_level_4('1575', '備抵損失—催收款項', 'Loss Allowance, overdue receivables').
account_level_4('1576', '長期應收票據及款項—關係人', 'Long-term notes and accounts receivable due from related parties').
account_level_4('1577', '催收款項—關係人', 'Overdue receivables from related parties').
account_level_4('1578', 長期預付租金, 'Long-term prepaid rents').
account_level_4('1579', 長期預付保險費, 'Long-term prepaid insurance premiums').
account_level_4('1580', 預付投資款, 'Non-current prepayments for investments').
account_level_4('1581', 預付退休金, 'Prepaid pension cost').
account_level_4('1582', 預付設備款, 'Prepayments for business facilities').
account_level_4('1583', 存出保證金, 'Guarantee deposits paid').
account_level_4('1584', '業主(股東)往來', 'Owner (shareholder) accounts, debit').
account_level_4('1585', 同業往來, 'Accounts with the trade, debit').
account_level_4('1586', '其他非流動資產—其他', 'Other non-current assets, others').
account_level_4('1587', 人壽保險現金解約價值, 'Cash surrender value of life insurance').
account_level_4('1588', '備抵損失—長期應收關係人票據及款項', 'Loss Allowance, long-term notes and accounts receivable due from related parties').
account_level_4('1589', '備抵損失—催收關係人款項', 'Loss Allowance, overdue receivables from related parties').
account_level_4('2111', 銀行透支, 'Bank overdrafts').
account_level_4('2112', 銀行借款, 'Bank loan').
account_level_4('2113', '短期借款—業主', 'Short-term borrowings from owners').
account_level_4('2114', '短期借款—員工', 'Short-term borrowings from employees').
account_level_4('2115', '短期借款—關係人', 'Short-term borrowings from related parties').
account_level_4('2116', '短期借款—其他', 'Short-term borrowings, others').
account_level_4('2121', 應付商業本票, 'Commercial papers payable').
account_level_4('2122', 銀行承兌匯票, 'Bank acceptances').
account_level_4('2123', 其他應付短期票券, 'Other short-term notes and bills payable').
account_level_4('2124', 應付短期票券折價, 'Discount on short-term notes and bills payable').
account_level_4('2131', '指定為透過損益按公允價值衡量之金融負債—流動', 'Current financial liabilities designation as measured at fair value through profit or loss').
account_level_4('2132', '指定為透過損益按公允價值衡量之金融負債評價調整—流動', 'Adjustments for change in value of current financial liabilities designation as measured at fair value through profit or loss').
account_level_4('2133', '持有供交易之金融負債—流動', 'Current financial liabilities held for trading').
account_level_4('2134', '持有供交易之金融負債評價調整—流動', 'Adjustments for change in value of current financial liabilities held for trading').
account_level_4('2141', '避險之金融負債—流動', 'Current financial liabilities for hedging').
account_level_4('2142', '避險之金融負債評價調整—流動', 'Adjustments for change in value of current financial liabilities for hedging').
account_level_4('2151', '以成本衡量之金融負債—流動', 'Current financial liabilities measured at cost').
account_level_4('2161', 應付票據, 'Notes payable').
account_level_4('2162', '應付票據—關係人', 'Notes payable to related parties').
account_level_4('2163', 其他應付票據, 'Other notes payable').
account_level_4('2171', 應付帳款, 'Accounts payable').
account_level_4('2172', '應付租賃款—流動', 'Current lease obligations payable').
account_level_4('2173', '應付帳款—關係人', 'Accounts payable to related parties').
account_level_4('2191', 應付薪資, 'Wages and salaries payable').
account_level_4('2192', 應付租金, 'Rents payable').
account_level_4('2193', 應付利息, 'Interest payable').
account_level_4('2194', 應付營業稅, 'Business tax payable').
account_level_4('2195', '應付稅捐—其他', 'Other tax payable').
account_level_4('2196', 應付退休金費用, 'Pension expense payable').
account_level_4('2197', 其他應付費用, 'Other accrued expenses').
account_level_4('2198', 應付土地房屋款, 'Payable on land and building purchased').
account_level_4('2199', 應付設備款, 'Payable on machinery and equipment').
account_level_4('2200', '其他應付款—關係人', 'Other payables to related parties').
account_level_4('2201', 應付股利, 'Dividends payable').
account_level_4('2202', 應付員工酬勞, 'Employee compensation payable').
account_level_4('2203', 應付董監事酬勞, 'Compensation due to directors and supervisors').
account_level_4('2204', 銷項稅額, 'Business tax received (or Output VAT)').
account_level_4('2205', '其他應付款—股份基礎給付', 'Other payables, share-based payments').
account_level_4('2206', '其他應付款—其他', 'Other payables, others').
account_level_4('2211', 本期所得稅負債, 'Current tax liabilities').
account_level_4('2221', 預收貨款, 'Advance sales receipts').
account_level_4('2222', 預收收入, 'Unearned revenue').
account_level_4('2223', 其他預收款, 'Other advance receipts').
account_level_4('2231', 一年內到期應付公司債, 'Bonds payable, current portion').
account_level_4('2232', 一年內到期長期借款, 'Long-term borrowings, current portion').
account_level_4('2233', 一年內到期長期應付票據及款項, 'Long-term notes and accounts payable, current portion').
account_level_4('2234', '一年內到期長期應付票據及款項—關係人', 'Long-term notes and accounts payable to related parties, current portion').
account_level_4('2235', 一年內到期其他長期負債, 'Other long-term liabilities, current portion').
account_level_4('2241', 保固之短期負債準備, 'Short-term warranty provision').
account_level_4('2242', 虧損性合約之短期負債準備, 'Short-term onerous contracts provision').
account_level_4('2243', '除役、復原及修復成本之短期負債準備', 'Short-term provision for decommissioning, restoration and rehabilitation costs').
account_level_4('2244', 保證合約之短期負債準備, 'Short-term guarantee contracts provision').
account_level_4('2245', 銷貨退回及折讓之短期負債準備, 'Short-term provision for sales returns and discounts').
account_level_4('2246', 其他短期負債準備, 'Other short-term provisions').
account_level_4('2251', 暫收款, 'Temporary credits').
account_level_4('2252', 代收款, 'Receipts under custody').
account_level_4('2311', '指定為透過損益按公允價值衡量之金融負債—非流動', 'Non-current financial liabilities designation as measured at fair value through profit or loss').
account_level_4('2312', '指定為透過損益按公允價值衡量之金融負債評價調整—非流動', 'Adjustments for change in value of non-currentfinancial liabilities designation as measured at fair value through profit or loss').
account_level_4('2313', '持有供交易之金融負債—非流動', 'Non-current financial liabilities held for trading').
account_level_4('2314', '持有供交易之金融負債評價調整—非流動', 'Adjustments for change in value of non-current financial liabilities held for
trading').
account_level_4('2321', '避險之金融負債—非流動', 'Non-current financial liabilities for hedging').
account_level_4('2322', '避險之金融負債評價調整—非流動', 'Adjustments for change in value of non-current financial liabilities for hedging').
account_level_4('2331', '以成本衡量之金融負債—非流動', 'Non-current financial liabilities measured at cost').
account_level_4('2341', 應付公司債, 'Bonds payable').
account_level_4('2342', '應付公司債溢(折)價', 'Premium (discount) on bonds payable').
account_level_4('2351', 長期銀行借款, 'Long-term bank loans').
account_level_4('2352', '長期借款—業主', 'Long-term borrowings from owners').
account_level_4('2353', '長期借款—員工', 'Long-term borrowings from employees').
account_level_4('2354', '長期借款—關係人', 'Long-term borrowings from related parties').
account_level_4('2355', '長期借款—其他', 'Long-term borrowings, others').
account_level_4('2361', 長期應付票據, 'Long-term notes payable').
account_level_4('2362', 長期應付帳款, 'Long-term accounts payable').
account_level_4('2363', '應付租賃款—非流動', 'Non-current lease obligations payable').
account_level_4('2364', '長期應付票據及款項—關係人', 'Long-term notes and accounts payable to related parties').
account_level_4('2365', 其他長期應付款項, 'Others long-term accounts payable').
account_level_4('2371', 虧損性合約之長期負債準備, 'Long-term onerous contracts provision').
account_level_4('2372', '除役、復原及修復成本之長期負債準備', 'Long-term provision for decommissioning, restoration and rehabilitation costs').
account_level_4('2373', 保證合約之長期負債準備, 'Long-term guarantee contracts provision').
account_level_4('2374', 保固之長期負債準備, 'Long-term warranty provision').
account_level_4('2381', '遞延所得稅負債—土地增值稅', 'Deferred tax liabilities, land value increment tax').
account_level_4('2382', '遞延所得稅負債—所得稅', 'Deferred tax liabilities, income tax').
account_level_4('2391', 遞延收入, 'Unearned revenue').
account_level_4('2392', 存入保證金, 'Guarantee deposits received').
account_level_4('2393', '業主(股東)往來', 'Owner (shareholder) accounts, credit').
account_level_4('2394', 同業往來, 'Accounts with the trade, credit').
account_level_4('2395', '其他非流動負債—股份基礎給付', 'Other non-current liabilities, share-based payment').
account_level_4('3111', 普通股股本, 'Ordinary share').
account_level_4('3112', 特別股股本, 'Preference share').
account_level_4('3113', 預收股本, 'Advance receipts for ordinary share').
account_level_4('3114', 待分配股票股利, 'Stock dividend to be distributed').
account_level_4('3211', '資本公積—普通股股票溢價', 'Capital surplus, additional paid-in capital arising from ordinary share').
account_level_4('3212', '資本公積—特別股股票溢價', 'Capital surplus, additional paid-in capital arising from preference share').
account_level_4('3213', '資本公積—庫藏股票交易', 'Capital surplus, treasury share transactions').
account_level_4('3214', '資本公積—股份基礎給付', 'Capital surplus, share-based payments').
account_level_4('3215', '資本公積—受贈資產', 'Capital surplus, donated assets received').
account_level_4('3216', '資本公積—採用權益法認列關聯企業及合資股權淨值變動數', 'Capital surplus, changes in equity of investment in associates and joint ventures accounted for using equity method').
account_level_4('3217', '資本公積—實際取得或處分子公司股權價格與帳面價值差額', 'Capital surplus, difference between consideration and carrying amount of subsidiaries acquired or disposed').
account_level_4('3218', '資本公積—認列對子公司所有權權益變動數', 'Capital surplus, changes in ownership interests in subsidiaries').
account_level_4('3219', '資本公積—認股權', 'Capital surplus, share option').
account_level_4('3220', '資本公積—其他', 'Capital surplus, others').
account_level_4('3311', 法定盈餘公積, 'Legal reserve').
account_level_4('3321', 特別盈餘公積, 'Special reserve').
account_level_4('3351', 累積盈虧, 'Accumulated profit and loss').
account_level_4('3352', 追溯適用及追溯重編之影響數, 'Effect of retrospective application and retrospective restatement').
account_level_4('3353', 本期損益, 'Current profit and loss').
account_level_4('3411', 透過其他綜合損益按公允價值衡量之金融資產未實現損益, 'Unrealized gains (losses) from financial assets measured at fair value through other comprehensive income').
account_level_4('3412', 避險工具之損益, 'Gains (losses) on hedging instruments').
account_level_4('3413', 國外營運機構財務報表換算之兌換差額, 'Exchange differences on translation of foreign financial statements').
account_level_4('3414', 未實現重估增值, 'Unrealized revaluation surplus').
account_level_4('3415', '其他權益—其他', 'Other equity interest, others').
account_level_4('3511', 庫藏股票, 'Treasury shares').
account_level_4('4111', 銷貨收入, 'Sales revenue').
account_level_4('4112', 分期付款銷貨收入, 'Installment sales').
account_level_4('4113', 銷貨退回, 'Sales returns').
account_level_4('4114', 銷貨折讓, 'Sales discounts and allowances').
account_level_4('4121', 勞務收入, 'Service revenue').
account_level_4('4131', 工程收入, 'Engineering revenue').
account_level_4('4232', 工程收入退回及折讓, 'Return and allowance for engineering revenue').
account_level_4('4141', 其他營業收入, 'Other operating revenue').
account_level_4('5111', 銷貨成本, 'Cost of sales').
account_level_4('5112', 分期付款銷貨成本, 'Cost of installment sales').
account_level_4('5121', 進貨, 'Purchase of goods').
account_level_4('5122', 進貨費用, 'Purchasing expense').
account_level_4('5123', 進貨退出, 'Purchases returns').
account_level_4('5124', 進貨折讓, 'Purchases discounts and allowances').
account_level_4('5131', 進料, 'Purchase of raw materials').
account_level_4('5132', 進料費用, 'Raw materials purchasing expense').
account_level_4('5133', 進料退出, 'Raw materials purchase returns').
account_level_4('5134', 進料折讓, 'Raw materials purchase discounts and allowances').
account_level_4('5141', 直接人工, 'Direct labor').
account_level_4('5151', 間接人工, 'Indirect labor').
account_level_4('5152', 租金支出, 'Rent expense').
account_level_4('5153', 文具用品, 'Stationery supplies').
account_level_4('5154', 旅費, 'Traveling Expense').
account_level_4('5155', 運費, 'Freight').
account_level_4('5156', 郵電費, 'Postage expenses').
account_level_4('5157', 修繕費, 'Repairs and maintenance expense').
account_level_4('5158', 包裝費, 'Packing expenses').
account_level_4('5159', 水電瓦斯費, 'Utilities expense').
account_level_4('5160', 保險費, 'Insurance expense').
account_level_4('5161', 加工費, 'Processing expense').
account_level_4('5162', 稅捐, 'Taxes').
account_level_4('5163', 折舊, 'Depreciations').
account_level_4('5164', 各項耗竭及攤提, 'Depletions and amortizations').
account_level_4('5165', 伙食費, 'Meal expense').
account_level_4('5166', 職工福利, 'Employee benefits/welfare').
account_level_4('5167', 訓練費, 'Training expense').
account_level_4('5168', 間接材料, 'Indirect materials').
account_level_4('5169', 其他製造費用, 'Other overheads').
account_level_4('5611', 勞務成本, 'Cost of services').
account_level_4('5811', 工程成本, 'Cost of engineering service sales').
account_level_4('5911', 其他營業成本, 'Other operating costs').
account_level_4('6111', 薪資支出, 'Wages and salaries').
account_level_4('6112', 租金支出, 'Rent expense').
account_level_4('6113', 文具用品, 'Stationery supplies').
account_level_4('6114', 旅費, 'Traveling Expense').
account_level_4('6115', 運費, 'Freight').
account_level_4('6116', 郵電費, 'Postage expenses').
account_level_4('6117', 修繕費, 'Repairs and maintenance expense').
account_level_4('6118', 廣告費, 'Advertisement expense').
account_level_4('6119', 水電瓦斯費, 'Utilities expense').
account_level_4('6120', 保險費, 'Insurance expense').
account_level_4('6121', 交際費, 'Entertainment expense').
account_level_4('6122', 捐贈, 'Donation expense').
account_level_4('6123', 稅捐, 'Taxes').
account_level_4('6124', 呆帳損失, 'Losses on doubtful debts').
account_level_4('6125', 折舊, 'Depreciations').
account_level_4('6126', 各項耗竭及攤提, 'Depletions and amortizations').
account_level_4('6127', 外銷損失, 'Losses on export sales').
account_level_4('6128', 伙食費, 'Meal expense').
account_level_4('6129', 職工福利, 'Employee benefits/welfare').
account_level_4('6130', 研究發展費用, 'Research and development expense').
account_level_4('6131', 佣金支出, 'Commissions expense').
account_level_4('6132', 訓練費, 'Training expense').
account_level_4('6133', 勞務費, 'Services expense').
account_level_4('6134', 其他營業費用, 'Other operating expenses').
account_level_4('7111', 利息收入, 'Interest revenue').
account_level_4('7121', 租金收入, 'Rent income').
account_level_4('7131', 權利金收入, 'Royalty income').
account_level_4('7141', 股利收入, 'Dividend revenue').
account_level_4('7151', 利息費用, 'Interest expense').
account_level_4('7161', '透過損益按公允價值衡量之金融資產(負債)利益', 'Gains on financial assets (liabilities) measured at fair value through profit or loss').
account_level_4('7162', '透過損益按公允價值衡量之金融資產(負債)損失', 'Losses on financial assets (liabilities) measured at fair value through profit or loss').
account_level_4('7171', 採權益法認列之投資利益, 'Investment income accounted for using equity method').
account_level_4('7172', 採權益法認列之投資損失, 'Investment loss accounted for using equity method').
account_level_4('7181', 兌換利益, 'Foreign exchange gains').
account_level_4('7182', 兌換損失, 'Foreign exchange losses').
account_level_4('7191', 處分投資性不動產利益, 'Gains on disposals of investment property').
account_level_4('7192', 處分投資性不動產損失, 'Losses on disposals of investment property').
account_level_4('7193', 處分投資利益, 'Gains on disposals of investments').
account_level_4('7194', 處分投資損失, 'Losses on disposals of investments').
account_level_4('7201', '處分不動產、廠房及設備利益', 'Gains on disposals of property, plant and equipment').
account_level_4('7202', '處分不動產、廠房及設備損失', 'Losses on disposals of property, plant and equipment').
account_level_4('7211', 金融資產減損損失, 'Impairment loss on financial assets').
account_level_4('7212', 投資性不動產減損損失, 'Impairment loss recognized in profit or loss, investment property').
account_level_4('7213', '不動產、廠房及設備減損損失', 'Impairment loss recognized in profit or loss, property, plant and equipment').
account_level_4('7214', 無形資產減損損失, 'Impairment loss recognised in profit or loss, intangible assets other than goodwill').
account_level_4('7215', 生物資產減損損失, 'Impairment loss recognized in profit or loss, biological assets').
account_level_4('7221', 金融資產減損迴轉利益, 'Reversal of impairment loss recognized in profit or loss, financial assets').
account_level_4('7222', 投資性不動產減損迴轉利益, 'Reversal of impairment loss recognized in profit or loss, investment property').
account_level_4('7223', '不動產、廠房及設備減損迴轉利益', 'Reversal of impairment loss recognized in profit or loss, property, plant and equipment').
account_level_4('7224', 無形資產減損迴轉利益, 'Reversal of impairment loss recognized in profit or loss, intangible assets').
account_level_4('7225', 生物資產減損迴轉利益, 'Reversal of impairment loss recognised in profit or loss, biological assets').
account_level_4('7231', 捐贈收入, 'Donation revenue').
account_level_4('7232', 佣金收入, 'Commissions revenue').
account_level_4('7233', 處分無形資產利益, 'Gains on disposals of intangible assets').
account_level_4('7234', 出售下腳及廢料收入, ' Income from sale of scraps').
account_level_4('7235', 呆帳轉回利益, 'Gains on doubtful debt recoveries').
account_level_4('7236', 手續費收入, 'Fee income').
account_level_4('7237', 廉價購買利益, 'Gain recognized in bargain purchase transaction').
account_level_4('7238', 當期原始認列生物資產之利益, 'Gains on initial recognition of biological assets for current period').
account_level_4('7239', 生物資產當期公允價值減出售成本之變動之利益, 'Gains on changes in fair value less costs to sell of biological assets for current period').
account_level_4('7240', 處分無形資產損失, 'Losses on disposals of intangible assets other than goodwill').
account_level_4('7241', 停工損失, 'Losses on work stoppages').
account_level_4('7242', 災害損失, 'Losses on disaster').
account_level_4('7243', 手續費支出, 'Fee expense').
account_level_4('7244', 虧損性合約損失, 'Onerous contracts losses').
account_level_4('7245', 當期原始認列生物資產之損失, 'Losses on initial recognition of biological assets for current period').
account_level_4('7246', 生物資產當期公允價值減出售成本之變動之損失, 'Losses on changes in fair value less costs to sell of biological assets for current period').
account_level_4('8211', '所得稅費用(或利益)', 'Tax expense (income)').
account_level_4('8411', '停業單位資產或處分群組處分損益（稅後）', 'Gain (loss) on disposal of assets or disposal groups constituting discontinued operation, net of tax').
account_level_4('8412', '停業單位資產或處分群組按公允價值減出售成本衡量損益（稅後）', 'Gain (loss) recognized on measurement to fair value less costs to sell of assets or disposal groups constituting discontinued operation, net of tax').
account_level_4('8711', 透過其他綜合損益按公允價值衡量之權益工具投資未實現損益, 'Unrealized gains (losses) from investment in equity instrument measured at fair value through other comprehensive income').
account_level_4('8712', 透過其他綜合損益按公允價值衡量之債務工具投資未實現損益, 'Unrealized gains (losses) from investment in debt instrument measured at fair value through other comprehensive income').
account_level_4('8721', 避險工具之損益, 'Gains (losses) on hedging instruments').
account_level_4('8731', 國外營運機構財務報表換算之兌換差額, 'Exchange differences on translation of foreign financial statements').
account_level_4('8741', 未實現重估增值, 'Unrealized gains (losses) on revaluation').
account_level_4('8751', 採用權益法認列之透過其他綜合損益按公允價值衡量之金融資產未實現損益, 'Unrealized gains (losses) from investment in equity instrument measured at fair value through other comprehensive income, accounted for using equity method').
account_level_4('8752', 採用權益法認列之避險工具之損益, 'Gains (losses) on hedging instruments, accounted for using equity method').
account_level_4('8753', 採用權益法認列之國外營運機構財務報表換算之兌換差額, 'Exchange differences on translation of foreign financial statements, accounted for using equity method').
account_level_4('8754', 採用權益法認列之未實現重估增值, 'Unrealized gains (losses) on revaluation, accounted for using equity method').
account_level_4('8761', 與本期其他綜合損益相關之所得稅, 'Income tax related to components of other comprehensive income').

account_desc('1541',
"指自企業合併取得之不可辨認
及未單獨認列未來經濟效益之
無形資產。
The unidentifiable and not
separately recognized future
economic benefits of intangible
assets that acquired in a business
combination.") :- !.
account_desc('1542', D) :- account_desc('1541', D).
account_desc('1543', D) :- account_desc('1541', D).
account_desc(A, D) :- account_level_4(A, _, _), !, atom_prefix(A,P), atom_length(P,3),
		      ( account_level_3(P,_,_,D), !
		      ; account_level_3(A2,_,_,D),
			atom_prefix(A2,P2),
			( P=P2, !
			; atomic_concat(P2, P, A2)
			)).
account_desc(A, D) :- atom_length(A,3), !, account_level_3(A,_,_,D).
account_desc(A, D) :- atom_length(A,2), !, account_level_2(A,_,_,D).
account_desc(A, D) :- account_level_1(A,_,_,D).

account(Account, Name, Eng_name, Desc) :- account_level_4(Account, Name, Eng_name), account_desc(Account, Desc).
account(Account, Name, Eng_name, Desc) :- account_level_3(Account, Name, Eng_name, Desc).
account(Account, Name, Eng_name, Desc) :- account_level_2(Account, Name, Eng_name, Desc).
account(Account, Name, Eng_name, Desc) :- account_level_1(Account, Name, Eng_name, Desc).

describe_account(Account) :- account(Account, Name, Eng_name, Desc), format("~a~n~a~n~a~n~a~n", [Account, Name, Eng_name, Desc]).
