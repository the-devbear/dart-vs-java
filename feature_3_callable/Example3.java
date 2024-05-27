package feature_3_callable;

public class Example3 {
    public static void main(String[] args) {

    }
}

interface Usercase<T> {
    T execute();
}

class Example3Usercase implements Usercase<String> {
    @Override
    public String execute() {
        return "Hello World";
    }
}