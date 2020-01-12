package com.qijizone.clrs;

public class Binary {

    public Binary() {
    }

    public static int[] add(int[] a, int[] b) {
        int n = a.length;
        int carry = 0;
        int[] result = new int[n + 1];
        for (int i = n - 1; i >= 0; i--) {
            int tmp = a[i] + b[i] + carry;
            result[i + 1] = tmp % 2;
            carry = tmp / 2;
        }
        result[0] = carry;
        return result;
    }
}
