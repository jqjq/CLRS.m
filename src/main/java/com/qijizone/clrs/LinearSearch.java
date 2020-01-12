package com.qijizone.clrs;

import java.util.Arrays;

public class LinearSearch {

    public LinearSearch() {
    }

    // p.22 2.1-3
    public static int indexOf(int[] a, int key) {
        int n = a.length;
        for (int i = 0; i < n; i++) {
            if (a[i] == key) {
                return i;
            }
        }
        return -1;
    }

    public static void main(String[] args) {
        int[] l = { 1, 3, 6, 8, 2, 0, 4 };
        System.out.println(Arrays.toString(l));
        int i = indexOf(l, 13);
        System.out.println(i);
    }

}
