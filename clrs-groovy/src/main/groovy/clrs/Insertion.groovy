package clrs

/**
 * p.16
 * Chapter 2 Getting Started
 * 2.1 Insertion sort
 */
class Insertion {

    /**
     * p.18
     * @param a
     */
    static void sort(a) {
        for (j in (1..<a.size)) {
            def key = a[j]
            def i
            for (i = j - 1; i >= 0 && a[i] > key; i--)
                a[i+1] = a[i]
            a[i+1] = key
        }
    }

    /**
     * p.22
     * 2.1-2
     * Rewrite the InsertionSort procedure to sort into nonincreasing instead of nondecreasing order.
     * @param a
     * @param c
     */
    static void sort(a, Comparator c) {
        for (j in (1..<a.size)) {
            def key = a[j]
            def i
            for (i = j - 1; i >= 0 && c.compare(a[i], key) > 0; i--)
                a[i+1] = a[i]
            a[i+1] = key
        }
    }
}
