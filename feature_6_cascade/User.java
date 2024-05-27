package feature_6_cascade;

public class User {
    private String name;
    private int age;
    private int height;
    private double weight;

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void print() {
        System.out.println(this);
    }

    public User setNameWithThis(String name) {
        this.name = name;
        return this;
    }

    public User setAgeWithThis(int age) {
        this.age = age;
        return this;
    }

    public User printWithThis() {
        System.out.println(this);
        return this;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", height=" + height +
                ", weight=" + weight +
                '}';
    }

    public static void main(String[] args) {
        User user = new User();
        user.print();
        user.setName("Alice");
        user.setAge(42);
        user.print();

        User user2 = new User();
        user2
                .printWithThis()
                .setNameWithThis("Bob")
                .setAgeWithThis(24)
                .printWithThis();
    }
}
