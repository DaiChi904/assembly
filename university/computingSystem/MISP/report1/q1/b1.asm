.text
main:
    # s0に値を設定
    li   $s0, 0x03020104

    # $s0から8ビットずつ4つの値を抽出し、$t0-$t3に格納
    andi $t0, $s0, 0xFF       # バイト0
    srl  $t1, $s0, 8
    andi $t1, $t1, 0xFF       # バイト1
    srl  $t2, $s0, 16
    andi $t2, $t2, 0xFF       # バイト2
    srl  $t3, $s0, 24
    andi $t3, $t3, 0xFF       # バイト3

    # ループカウンタ
    li   $t5, 0

sort:
    # 3回ループしたらソートは完了するのでcombineにジャンプ
    # (4要素のバブルソートは最大3パスで完了するため)
    beq  $t5, 3, combine

    # --- バブルソートの1パス分 (降順) ---
    # 隣り合うペアを比較し、小さい方が右に来るように交換する

    # if (t0 < t1) then swap(t0, t1)
    bge  $t0, $t1, next1
    move $t4, $t0; move $t0, $t1; move $t1, $t4

next1:
    # if (t1 < t2) then swap(t1, t2)
    bge  $t1, $t2, next2
    move $t4, $t1; move $t1, $t2; move $t2, $t4

next2:
    # if (t2 < t3) then swap(t2, t3)
    bge  $t2, $t3, end_of_pass
    move $t4, $t2; move $t2, $t3; move $t3, $t4

end_of_pass:
    # ループカウンタをインクリメント
    addi $t5, $t5, 1
    j    sort

combine:
    # $t0-$t3の値を結合して$s1に格納
    sll  $s1, $t3, 8
    or   $s1, $s1, $t2
    sll  $s1, $s1, 8
    or   $s1, $s1, $t1
    sll  $s1, $s1, 8
    or   $s1, $s1, $t0

    jr   $ra
