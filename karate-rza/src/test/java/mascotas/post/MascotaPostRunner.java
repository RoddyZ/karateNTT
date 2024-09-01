package mascotas.post;

import com.intuit.karate.junit5.Karate;

public class MascotaPostRunner {

    @Karate.Test
    Karate mascotaPost(){
        return Karate.run().relativeTo(getClass());
    }
}
