package definitions;

import cucumber.api.java.en.Given;
import org.openqa.selenium.WebDriver;

import static support.TestContext.getDriver;

public class WebDriverDefinitions {
    @Given("I go to {string}")
    public void iGoTo(String url) {
        getDriver().get(url);
    }
}
