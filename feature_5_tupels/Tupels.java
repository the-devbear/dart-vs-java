package feature_5_tupels;

public class Tupels {

    static Tupel<String, Integer> createTupel() {
        return new Tupel<String, Integer>("Hello", 42);
    }

    public static void main(String[] args) {
        // Tupel
        Tupel<String, Integer> tupel = new Tupel<>("Hello", 42);
        System.out.println(tupel.first());
        System.out.println(tupel.second());

    }
}

record Tupel<T, U>(T first, U second) {
}