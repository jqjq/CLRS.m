package clrs

/**
 * p.22
 * 2.1-3
 * Consider the searching problem:
 * Input: A sequence of n numbers A = [a_1, a_2, ..., a_n] and a value v.
 * Output: An index i such that v = A[i] or the special value nil if v does not appear in A.
 * Write pseudocode for linear search, which scans through the sequence, looking for v. Using a loop invariant, prove
 * that your algorithm is correct. Make sure that your loop invariant fulfills the three necessary properties.
 */
class LinearSearch {

    static indexOf(a, v) {
        for (i in 0..<a.size)
            if (a[i] == v)
                return i
    }
}
