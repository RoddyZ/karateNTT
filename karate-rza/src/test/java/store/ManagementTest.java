package store;

import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;
public class ManagementTest {
    @Test
    void testParallel(){
        Runner.path("classpath:store").tags("~@ignore").parallel(1);
    }
}




