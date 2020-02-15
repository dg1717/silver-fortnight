package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.assertj.core.internal.ErrorMessages;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;
import support.TestContext;

import static java.lang.Thread.sleep;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class MarketStepDefinitions {
    @Given("I go to {string} page")
    public void iGoTo(String site) {
        switch (site){
            case "qa":
                TestContext.getDriver().get("http://quote-qa.portnov.com/");
                break;
            case "google":
                TestContext.getDriver().get("http://www.google.com");
                break;
            case "stage":
                TestContext.getDriver().get("http://quote-stage.portnov.com/");
                break;
            case "prod":
                TestContext.getDriver().get("https://skryabin.com/market/quote.html");
                break;
            case "quote":
                TestContext.getDriver().get("https://skryabin.com/market/quote.html");
                break;

            default:
                System.out.println("Unsupported site: " + site);
        }
    }

    @And("I print page details")
    public void iPrintPageDetails() {
        System.out.println(TestContext.getDriver().getTitle());
        System.out.println(TestContext.getDriver().getCurrentUrl());
        System.out.println(TestContext.getDriver().getWindowHandle());
    }

    @When("I refresh, go back, and go forward")
    public void iRefreshGoBackAndGoForward() {
        getDriver().navigate().refresh();
        getDriver().navigate().back();
        getDriver().navigate().forward();
    }

    @And("I set window to maximum")
    public void iSetWindowToMaximum() {
        getDriver().manage().window().maximize();

    }
    @And("I set window to full screen")
    public void iSetWindowToFullScreen() {
        getDriver().manage().window().fullscreen();
    }

    @And("I set window width to {int} and height to {int}")
    public void iSetWindowWidthToAndHeightTo(int width, int height) throws InterruptedException {
        getDriver().manage().window().setSize(new Dimension(width, height));
        sleep(5000);
    }

    @And("I change resolution to {string}")
    public void iChangeResolutionTo(String layout) {
        switch(layout) {
            case "phone":
                getDriver().manage().window().setSize(new Dimension(500, 1024));
                break;
            case "tablet":
                getDriver().manage().window().setSize(new Dimension(1000, 1024));
                break;
            case "desktop":
                getDriver().manage().window().setSize(new Dimension(1028, 1024));
                break;
        }
    }

    @Then("I check window size")
    public void iCheckWindowSize() {
        System.out.println(getDriver().manage().window().getSize());
    }

    @When("I clear email field")
    public void iClearEmailField() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(Keys.BACK_SPACE);
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("wrong#format.com");
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("correct#format.com");

    }

    @And("I type {string} into email field")
    public void iTypeIntoEmailField(String text) {
        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(text);
    }

    @And("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.id("formSubmit")).click();
    }

    @And("element with text {string}should be displayed")
    public void elementWithTextShouldBeDisplayed(String message) {
        System.out.println(message);
        String errorMessage = getDriver().findElement(By.xpath("//*[@id='email-error']")).getText();
        assertThat(errorMessage).isEqualTo(message);
    }

    @Then ("element with text {string} should not be displayed")
    public void elementWithTextShouldNotBeDisplayed(String message) {
        String errorMessage = getDriver().findElement(By.id("email-error")).getText();
        assertThat(getDriver().findElement(By.id("email-error")).isDisplayed()).isFalse();
    }

    @When("I navigate to {string} environment")
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

    @Then("password field error message {string} should be displayed")
    public void passwordFieldErrorMessageShouldBeDisplayed(String pwError) {
        String errMessage = getDriver().findElement(By.xpath("//*[@id='password-error']")).getText();
        assertThat(errMessage).isEqualTo(pwError);
    }

    @When("I type {string} into password field")
    public void iTypeIntoPasswordField(String str) {
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys(str);
    }

    @When("I clear password field")
    public void iClearPasswordField() {
        getDriver().findElement(By.xpath("//input[@id='password']")).clear();
    }

    @Then("password field error message {string} should not be displayed")
    public void passwordFieldErrorMessageShouldNotBeDisplayed(String arg0) {
        String errorMessage = getDriver().findElement(By.xpath("//*[@id='password-error']")).getText();
        assertThat(getDriver().findElement(By.xpath("//*[@id='password-error']")).isDisplayed()).isFalse();
    }

    @Then("confirm password field should be {string} disabled")
    public void confirmPasswordFieldShouldBeDisabled(String pwConfirmDisabled) {
        String disabledMessage = getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).getAttribute("disabled");
        assertThat(disabledMessage).isEqualTo(pwConfirmDisabled);
    }

    @When("I type {string} into password confirm field")
    public void iTypeIntoPasswordConfirmField(String str) {
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys(str);
    }

    @Then("password confirm error message {string} should be displayed")
    public void passwordConfirmErrorMessageShouldBeDisplayed(String pwNotMatch) throws InterruptedException {
        String pwConfirmedErrorMessage = getDriver().findElement(By.xpath("//*[@id='confirmPassword-error']")).getText();
        assertThat(pwConfirmedErrorMessage).isEqualTo(pwNotMatch);
    }

    @Then("password confirm error message {string} should not be displayed")
    public void passwordConfirmErrorMessageShouldNotBeDisplayed(String arg0) throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath("//*[@id='confirmPassword-error']")).isDisplayed()).isFalse();
    }
    @When("I clear password confirm field")
    public void iClearPasswordConfirmField() {
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).clear();
    }

    @And("I fill out all required fields")
    public void iFillOutAllRequiredFields() {
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys("Daniel");
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("danielyu@gmail.com");
        getDriver().findElement(By.xpath("//input[@name='password']")).sendKeys("12345");
        getDriver().findElement(By.xpath("//input[@name='confirmPassword']")).sendKeys("12345");
        getDriver().findElement(By.xpath("//input[@id='name']")).sendKeys("Daniel Yu");
        getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']")).click();
    }

    @Then("I verify entered data on the results page")
    public void iVerifyEnteredDataOnTheResultsPage() {
        String email = getDriver().findElement(By.xpath("//*[@name='email']")).getText();
        assertThat(email).isEqualTo("danielyu@gmail.com");
        String name = getDriver().findElement(By.xpath("//*[@name='name']")).getText();
        assertThat(name).isEqualTo("Daniel Yu");
        String agreePloicy = getDriver().findElement(By.xpath("//*[@name='agreedToPrivacyPolicy']")).getText();
        assertThat(agreePloicy).isEqualTo("true");
    }
}
