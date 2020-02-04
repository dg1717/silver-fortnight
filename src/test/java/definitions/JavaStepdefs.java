package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class JavaStepdefs {
    @Given("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello World");
    }

    @When("I print {string}")
    public void iPrint(String text) {
        System.out.println(text);
    }

    @Given("I work with strings")
    public void iWorkWithStrings() {
        String firstName = "Kenneth";
        String lastName = "Chan";
        String myOccupation = "Program Manager";
        System.out.println("Hello, I am "+firstName+" "+lastName);
        System.out.println("My occupation is "+myOccupation);
    }
}
