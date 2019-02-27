def move(k, start, yobi, end):
    if k >= 2:
        move(k-1, start, end, yobi)
    print(start, '軸の円盤を',end,'軸へ移動')

    if k >= 2:
        move(k-1, yobi, start, end)

move(2,1,2,3)
