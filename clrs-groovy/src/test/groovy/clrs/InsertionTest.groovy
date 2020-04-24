package clrs

import org.junit.Test

class InsertionTest {

    /**
     * p.22
     * Exercise 2.1-1
     * Using Figure 2.2 as a model, illustrate the operation of InsertionSort on the array
     * A = [31, 41, 59, 26, 41, 58].
     */
    @Test
    void testSort() {
        def a = [31, 41, 59, 26, 41, 58]
        Insertion.sort(a)
        assert a == [26, 31, 41, 41, 58, 59]
    }
}
