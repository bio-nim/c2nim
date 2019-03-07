int loop() {
    int n = 0;
    int i = 2;
    while (i-- > 0) {
        if (i == 1) continue;
        n += i;
    }

    for (n=0, i=2; i>0; i--) {
        if (i == 1) continue;
        n += i;
    }
    return n;
}
