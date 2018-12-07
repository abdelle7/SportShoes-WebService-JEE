package example;

import org.apache.log4j.BasicConfigurator;

public class HelloWorld {
  public String sayHelloWorldFrom(String from) {
    BasicConfigurator.configure();
    String result = "Hello, world, from " + from;
    System.out.println(result);
    return result;
  }
}
