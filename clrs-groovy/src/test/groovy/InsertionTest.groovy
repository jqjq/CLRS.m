import org.junit.Test

import com.clrs.Insertion

class InsertionTest {

    @Test
    void test() {
        def a = [1,6,7789,23,4675,9,8,0]
        Insertion.sort(a)
        println a
    }
}
