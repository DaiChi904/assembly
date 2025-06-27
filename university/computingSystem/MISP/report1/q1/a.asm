# oddprime.s: 
#  store all odd primes up to $s0 in memory 
#  starting at address in $t0


.data
prompt: .asciiz "素数探索の上限値を入力してください: "

.text
main:
  # プロンプト表示
  li   $v0, 4
  la   $a0, prompt
  syscall

  # 上限値入力
  li   $v0, 5
  syscall
  move $s0, $v0        # $s0 = 上限値

  # 上限値+2までチェックする
  addi $s0, $s0, 2

  #  s3を2で初期化。前回の素数。
  li $s3, 2

  li $t0, 0x1000A000  # base address to store primes
  li $s1, 0
  li $s2, 3           # start from 3

loop:
  bgt   $s2, $s0, end # if $s2 > $s0 goto end
  li    $t1, 3        # divide by >= 3
is_prime:             # check whether $s2 is prime
  # bge   $t1, $s2, store # if $t1 >= $s2 go to store
  bge   $t1, $s2, hutago # if $t1 >= $s2 go to hutago
  rem   $t2, $s2, $t1 # $t2 = $s2 % $t1 ($t2 = reminder)
  beq   $t2, $zero, skip  # if $t2==0 then $s2 is not prime
  addi  $t1, $t1, 2   # add 2 to $t1  
  j     is_prime      # go back to is_prime
hutago:
  addi $t3, $s3, 2
  # 現在調べている数が前回調べているものの+2ならstoreへ飛ぶ
  beq $t3, $s2 store
  move $s3, $s2
  j skip

store:
  # 前回の素数を追加
  sw    $s3, 0($t0)   # store $s2 (since it is prime)
  addi  $t0, $t0, 4   # increment address
  # 個数を+1
  addi $s1, $s1, 1
  move $s3, $s2

skip:                 
  addi  $s2, $s2, 2   # to the next odd number
  j     loop

end:
  jr    $ra
  