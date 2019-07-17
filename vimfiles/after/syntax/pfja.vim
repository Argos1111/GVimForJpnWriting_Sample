scriptencoding utf-8

" 助詞のダブリを誤りとして検出
syn match missSpell /はは/
syn match missSpell /でで/
syn match missSpell /をを/
syn match missSpell /のの/
syn match missSpell /にに/

" 半角スペースを検出
syn match missSpell /(/
syn match missSpell /)/

" 全角数字を検出
syn match missSpell /[０１２３４５６７８９]/

" 似ているが意味が異なる言葉を「caution」（注意）に設定
syn match caution /作成/
syn match caution /作製/

" カギカッコなどの始めから終わりまでをマーク
syn region serifu start=+「+ end=+」+ contains=ALL
syn region serifu start=+“+ end=+”+ contains=ALL
syn region serifu start=+（+ end=+）+ contains=ALL

" 全角スペース、半角スペースともに検出
syn match ZenkakuSpace /　/
syn match HankakuSpace /\s/

" 各構文グループを色付け
hi missSpell gui=undercurl guifg=Red guibg=White
hi caution guifg=Black guibg=Yellow
hi serifu gui=undercurl guifg=Black
hi ZenkakuSpace guifg=LightGrey guibg=LightGrey
hi HankakuSpace gui=undercurl guifg=Blue
