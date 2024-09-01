package mascotas.get;

import com.intuit.karate.junit5.Karate;

public class MascotasGetRunner {

    @Karate.Test
    Karate mascotaGet(){
        return Karate.run().relativeTo(getClass());
    }

}
