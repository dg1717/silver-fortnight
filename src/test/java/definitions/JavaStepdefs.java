package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class JavaStepdefs {
    @Given("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello World!");
    }

    @When("I print {string}")
    public void iPrint(String text) {
        System.out.println();

        System.out.println(text);
    }
}
