package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebElement;
import support.TestContext;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class MarketStepdefs {


    @Given ("I go to {string} page")
    public void iGoToPage(String site) {
        switch (site) {
            case "quote":
                TestContext.getDriver().get("https://skryabin.com/market/quote.html");
                break;
            case "google":
                TestContext.getDriver().get("https://www.google.com/");
                break;
            default:
                System.out.println("Unsupported site: " + site);
        }
    }

    @And ("I print page details")
    public void iPrintPageDetails() {
        System.out.println(TestContext.getDriver().getTitle());
        System.out.println(TestContext.getDriver().getCurrentUrl());
        System.out.println(TestContext.getDriver().getWindowHandle());
    }

    @When ("I refresh, go back, go forward")
    public void iRefreshGoBackGoForward() {
        getDriver().navigate().refresh();
        getDriver().navigate().back();
        getDriver().navigate().forward();
    }

    @And ("I set window to maximum")
    public void iSetWindowToMaximum() {
        getDriver().manage().window().maximize();
    }

    @And ("I set window to full screen")
    public void iSetWindowToFullScreen() {
        getDriver().manage().window().fullscreen();
    }

    @And ("I set window width to {int} and height to {int}")
    public void iSetWindowWidthToAndHeightTo(int width, int height) throws InterruptedException {
        getDriver().manage().window().setSize(new Dimension(width, height));
        Thread.sleep(5000);
    }

    @And ("I change resolution to {string}")
    public void iChangeResolutionTo(String layout) {
        switch (layout) {
            case "phone":
                getDriver().manage().window().setSize(new Dimension(500, 1024));
                break;
            case "tablet":
                getDriver().manage().window().setSize(new Dimension(1000, 1024));
                break;
            default:
                getDriver().manage().window().setSize(new Dimension(1280, 1024));
                break;

        }
    }

    @Then ("I check window size")
    public void iCheckWindowSize() {
        System.out.println(getDriver().manage().window().getSize());
    }

    @When ("I clear email field")
    public void iClearEmailField() {
        getDriver().findElement(By.xpath("//*[@name='email']")).clear();
    }

    @And ("I type {string} into email field")
    public void iTypeIntoEmailField(String text) {
        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(text);
    }

    @And ("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.id("formSubmit")).click();
    }

    @Then ("element with text {string} should be displayed")
    public void elementWithTextShouldBeDisplayed(String message) {
        System.out.println(message);
        String errorMessage = getDriver().findElement(By.id("email-error")).getText();

        assertThat(errorMessage).isEqualTo(message);
    }


    @When ("I navigate to {string} environment")

    public void iNavigateToEnvironment(String env) {
        switch (env) {
            case "qa":
                TestContext.getDriver().get("http://quote-qa.portnov.com/");
                break;
            case "stage":
                TestContext.getDriver().get("http://quote-stage.portnov.com/");
                break;

            case "prod":
                TestContext.getDriver().get("https://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("Unsupported environment: " + env);
        }

    }

    @Then ("element with text {string} should not be displayed")
    public void elementWithTextShouldNotBeDisplayed(String message) {
        String errorMessage = getDriver().findElement(By.id("email-error")).getText();
        assertThat(getDriver().findElement(By.id("email-error")).isDisplayed()).isFalse();
    }

    @Then ("password field error message {string} should be displayed")
    public void passwordFieldErrorMessageShouldBeDisplayed(String message) {
        String pwdError = getDriver().findElement(By.id("password-error")).getText();
        assertThat(pwdError.equals(message));
    }

    @When ("I type {string} into password field")
    public void iTypeIntoPasswordField(String text) {
        getDriver().findElement(By.id("password")).sendKeys(text);
    }

    @When ("I clear password field")
    public void iClearPasswordField() {
        getDriver().findElement(By.id("password")).clear();
    }

    @Then ("password field error message {string} should not be displayed")
    public void passwordFieldErrorMessageShouldNotBeDisplayed(String arg0) {
        assertThat(getDriver().findElement(By.id("password-error")).isDisplayed()).isFalse();
    }

    @And ("I verify password field behavior")
    public void iVerifyPasswordFieldBehavior() {
        WebElement password = getDriver().findElement(By.id("password"));
        WebElement btnSubmit = getDriver().findElement(By.id("formSubmit"));

        password.clear();
        btnSubmit.click();

        WebElement pwdError = getDriver().findElement(By.id("password-error"));
        assertThat(pwdError.isDisplayed());

        String errorMessage = pwdError.getText();
        assertThat(errorMessage.equals("This field is required"));

        password.clear();
        password.sendKeys("1234");
        btnSubmit.click();

        assertThat(pwdError.isDisplayed());
        assertThat(errorMessage.contains("at least 5 char"));

        password.clear();
        password.sendKeys("12345");
        btnSubmit.click();
        assertThat(pwdError.isDisplayed()).isFalse();
        assertThat(!password.isDisplayed());

        password.clear();
        password.sendKeys("123456");
        btnSubmit.click();
        assertThat(pwdError.isDisplayed()).isFalse();
        assertThat(!password.isDisplayed());

    }
}
