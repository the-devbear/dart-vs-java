package feature_7_spread;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cascade {

    public static void main(String[] args) {
        List<Integer> list1 = Arrays.asList(1, 2, 3);
        List<Integer> list2 = Arrays.asList(4, 5, 6);

        // Kombinieren von list1 und list2
        List<Integer> combinedList = new ArrayList<>(list1);
        // Hier wäre auch cascade super
        // new ArrayList<>(list1)..addAll(list2);
        combinedList.addAll(list2);

        // Ausgeben der kombinierten Liste
        System.out.println(combinedList); // Ausgabe: [1, 2, 3, 4, 5, 6]

        // Erstellen einer neuen Liste mit zusätzlichen Elementen
        List<Integer> newList = new ArrayList<>();
        newList.add(0);
        newList.addAll(list1);
        newList.add(7);
        newList.add(8);

        // Ausgeben der neuen Liste
        System.out.println(newList); // Ausgabe: [0, 1, 2, 3, 7, 8]

        // Definieren von zwei Maps
        Map<String, Integer> map1 = new HashMap<>();
        map1.put("a", 1);
        map1.put("b", 2);
        map1.put("c", 3);

        Map<String, Integer> map2 = new HashMap<>();
        map2.put("d", 4);
        map2.put("e", 5);

        // Kombinieren von map1 und map2
        Map<String, Integer> combinedMap = new HashMap<>(map1);
        combinedMap.putAll(map2);

        // Ausgeben der kombinierten Map
        System.out.println(combinedMap); // Ausgabe: {a=1, b=2, c=3, d=4, e=5}

    }
}
