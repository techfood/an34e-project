package utilities;
import java.util.Random;

public class GeradorRandom {
    
    public static String geradorCod(){
        Random r = new Random();
        String aux = String.valueOf(r.nextInt(1000)) + String.valueOf(r.nextInt(1000));
        System.out.println(aux);
        return aux;
    }
}

