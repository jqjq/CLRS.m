package com.qijizone.clrs;

import java.util.Arrays;
import java.util.Comparator;

public class Insertion {

    private Insertion() {
    }

    // p.18
    @SuppressWarnings({ "rawtypes", "unchecked" })
    public static void sort(Comparable[] a) {
        int n = a.length;
        for (int j = 1; j < n; j++) {
            Comparable key = a[j];
            int i;
            for (i = j - 1; i >= 0 && a[i].compareTo(key) > 0; --i)
                a[i + 1] = a[i];
            a[i + 1] = key;
        }
    }

    // p.22 2.1-2
    @SuppressWarnings({ "rawtypes", "unchecked" })
    public static void sort(Object[] a, Comparator comparator) {
        int n = a.length;
        for (int j = 1; j < n; j++) {
            Object key = a[j];
            int i;
            for (i = j - 1; i >= 0 && comparator.compare(a[i], key) > 0; --i)
                a[i + 1] = a[i];
            a[i + 1] = key;
        }
    }

    // p.22
    public static void main(String[] args) {
        // 2.1-1
        Integer[] a = { 31, 41, 59, 26, 41, 58 };
        sort(a);
        System.out.println(Arrays.toString(a));
        // 2.1-2
        Comparator<Integer> cmp = new Comparator<Integer>() {
            @Override
            public int compare(Integer a, Integer b) {
                return b - a;
            }
        };
        sort(a, cmp);
        System.out.println(Arrays.toString(a));
    }
}
