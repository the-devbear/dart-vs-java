import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

public class Example1 {
  public static CompletableFuture<String> getHello() {
    System.out.println("waiting for data");

    // Das könnte auch ein HTTP Request sein
    return CompletableFuture.supplyAsync(() -> {
      try {
        TimeUnit.SECONDS.sleep(2);
        System.out.println("data received");
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
      return "Hello World!";
    });
  }

  public static void main(String[] args) {
    CompletableFuture<String> future = getHello();

    try {
      var value = future.get();
      System.out.println("got value: " + value);
    } catch (InterruptedException | ExecutionException e) {
      e.printStackTrace();
    }
  }

}
