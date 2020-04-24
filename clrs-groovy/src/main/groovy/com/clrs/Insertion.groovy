package com.clrs

class Insertion {

    static void sort(a) {
        for (j in (2..<a.size)) {
            def key = a[j]
            def i
            for (i = j - 1; i >= 0 && a[i] > key; i--)
                a[i+1] = a[i]
            a[i+1] = key
        }
    }
}
