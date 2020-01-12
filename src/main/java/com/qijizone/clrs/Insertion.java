package com.qijizone.clrs;

import java.util.Arrays;

public class Insertion {
	private Insertion() {
	}

	@SuppressWarnings("rawtypes")
	public static void sort(Comparable[] a) {
		int n = a.length;
		for (int j = 1; j < n; j++) {
			Comparable key = a[j];
			int i;
			for (i = j - 1; i >= 0 && less(key, a[i]); --i)
				a[i + 1] = a[i];
			a[i + 1] = key;
		}
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	private static boolean less(Comparable x, Comparable y) {
		return x.compareTo(y) < 0;
	}

	public static void main(String[] args) {
		Integer[] l = new Integer[] { 1, 3, 6, 8, 2, 0, 4 };
		System.out.println(Arrays.toString(l));
		sort(l);
		System.out.println(Arrays.toString(l));
	}

}
