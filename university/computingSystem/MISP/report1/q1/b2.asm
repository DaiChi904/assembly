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

step1:
    # --- ステップ1: 隣接するペアをそれぞれソート ---
    # ($t0, $t1)のペアを降順に
    bge  $t0, $t1, step1_next
    move $t4, $t0; move $t0, $t1; move $t1, $t4

step1_next:
    # ($t2, $t3)のペアを降順に
    bge  $t2, $t3, step2
    move $t4, $t2; move $t2, $t3; move $t3, $t4

step2:
    # --- ステップ2: 外側と内側のペアをソート ---
    # ($t0, $t2)のペアを降順に
    bge  $t0, $t2, step2_next
    move $t4, $t0; move $t0, $t2; move $t2, $t4

step2_next:
    # ($t1, $t3)のペアを降順に
    bge  $t1, $t3, step3
    move $t4, $t1; move $t1, $t3; move $t3, $t4

step3:
    # --- ステップ3: 中央のペアをソート ---
    # ($t1, $t2)のペアを降順に
    bge  $t1, $t2, combine
    move $t4, $t1; move $t1, $t2; move $t2, $t4

combine:
    # $t0-$t3の値を結合して$s1に格納
    sll  $s1, $t3, 8
    or   $s1, $s1, $t2
    sll  $s1, $s1, 8
    or   $s1, $s1, $t1
    sll  $s1, $s1, 8
    or   $s1, $s1, $t0

    jr   $ra
