package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;
import support.TestContext;

import static java.lang.Thread.sleep;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;



public class MarketStepdefs {
    @Given("I open a {string}")
    public void iOpenA(String siteName) throws InterruptedException {
        switch (siteName) {
            case "quote":
                TestContext.getDriver().get("https://skryabin.com/market/quote.html");
                sleep(300);
                break;
            case "google":
                TestContext.getDriver().get("https://www.google.com/");
                sleep(300);
                break;
            default:
                System.out.println("Site is not available : " + siteName);
                break;
        }


    }


    @And("I Print page details")
    public void iPrintPageDetails() {
        String currentURL = TestContext.getDriver().getCurrentUrl();
        String title = TestContext.getDriver().getTitle();
        // String memory = TestContext.getDriver().getWindowHandle();
        System.out.println("Current URL is  : " + currentURL);
        System.out.println("Page title is  : " + title);
        //System.out.println("Browser Memory  : " + memory);
    }

    @When("I refresh , go back , go forward")
    public void iRefreshGoBackGoForward() {
        getDriver().navigate().refresh();
        getDriver().navigate().back();
        getDriver().navigate().forward();
    }

    @And("I set window to maxi")
    public void iSetWindowToMaxi() {
        getDriver().manage().window().maximize();
    }

    @And("I set window to full screen")
    public void iSetWindowToFullScreen() {
        getDriver().manage().window().fullscreen();
    }


    @And("I set window width to {int} and height to {int}")
    public void iSetWindowWidthToAndHeightTo(int width, int height) throws InterruptedException {
        getDriver().manage().window().setSize(new Dimension(width, height));
        sleep(300);
    }

    @And("I change resolution to {string}")
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

    @Then("I check the window size")
    public void iCheckTheWindowSize() {

        System.out.println("The Window size is " + getDriver().manage().window().getSize());
    }

    @When("I clear email field")
    public void iClearEmailField() {
        getDriver().findElement(By.xpath("//*[@name='email']")).clear();

    }

    @And("I type {string} into email field")
    public void iTypeIntoEmailField(String wrongFormat) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(wrongFormat);
        sleep(300);

    }

    @When("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.id("formSubmit")).click();
    }

    @Then("element with text {string} should be displayed")
    public void elementWithTextShouldBeDisplayed(String errorMsg) {
        String message = getDriver().findElement(By.id("email-error")).getText();
        assertThat(message.equals(errorMsg));

        System.out.println("The Error message from code  :" + message);

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
                System.out.println("Un Supported Environment : " + env);
        }
    }

    @Then("element with text {string} should not be displayed")
    public void elementWithTextShouldNotBeDisplayed(String errorMsg) {
        boolean errorVal = getDriver().findElement(By.id("email-error")).isDisplayed();
        assertThat(errorVal).isFalse();
        System.out.println(errorVal);

    }

    @Then("I clear password field")
    public void iClearPasswordField() {
        getDriver().findElement(By.xpath("//input[@id='password']")).clear();
    }


    @And("I type {string} into field")
    public void iTypeIntoField(String wrongPwd) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@id='password']")).sendKeys("1234");
        sleep(300);
    }

    @Then("The error message {string} should be displayed")
    public void theErrorMessageShouldBeDisplayed(String errMsg) {
        String message = getDriver().findElement(By.id("password-error")).getText();
        assertThat(message.equals(errMsg));
        System.out.println("The Password error message is :" + message);
    }


    @Then("I clear the password field")
    public void iClearThePasswordField() {
        getDriver().findElement(By.xpath("//*[@id='password']")).clear();
    }

    @Then("I type correct {string} into the field")
    public void iTypeCorrectIntoTheField(String correctPwd) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@id='password']")).sendKeys("12345");
        sleep(3000);
    }

    @Then("The error message {string} should not be displayed")
    public void theErrorMessageShouldNotBeDisplayed(String errMsg) {
        boolean errVal = getDriver().findElement(By.id("password-error")).isDisplayed();
        assertThat(errVal).isFalse();
    }


    @When("verify the confirm password field is disabled when the password field is empty")
    public void verifyTheConfirmPasswordFieldIsDisabledWhenThePasswordFieldIsEmpty() {
        String pwd = getDriver().findElement(By.xpath("//*[@id='password']")).getText();
        if (pwd.length() == 0) {
            System.out.println("The pwd length is : " + pwd.length());

            assertThat(getDriver().findElement(By.xpath("//*[@id='confirmPassword']")).isEnabled()).isFalse();
            System.out.println(getDriver().findElement(By.xpath("//*[@id='confirmPassword']")).isEnabled());
        }
    }

    @And("Verify the confirm password field is enabled")
    public void verifyTheConfirmPasswordFieldIsEnabled() {
        String pwd = getDriver().findElement(By.xpath("//*[@id='password']")).getText();
        int len = pwd.length();
        System.out.println("The length of the password is " + len);
        if (len != 0) {
            assertThat(getDriver().findElement(By.xpath("//*[@id='confirmPassword']")).isEnabled()).isTrue();
            System.out.println(getDriver().findElement(By.xpath("//*[@id='confirmPassword']")).isEnabled());
        }
    }


    @Then("I Type {string} into password field")
    public void iTypeIntoPasswordField(String pwd) {
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys(pwd);

    }

    @Then("I type {string} into confirm password field")
    public void iTypeIntoConfirmPasswordField(String confirmPwd) {
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys(confirmPwd);
    }

    @Then("The error message {string} should be present")
    public void theErrorMessageShouldBePresent(String pwdMismatchMsg) {
        String pwd = getDriver().findElement(By.xpath("//input[@id='password']")).getAttribute("value");
        System.out.println(pwd);
        String confirmPwd = getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).getAttribute("value");
        System.out.println(confirmPwd);
        if (pwd.equals(confirmPwd)) {
            assertThat(getDriver().findElement(By.xpath("//label[@id='confirmPassword-error']")).isEnabled()).isFalse();
            System.out.println("Password Matched!");
        } else {
            assertThat(getDriver().findElement(By.xpath("//label[@id='confirmPassword-error']")).isEnabled()).isTrue();
            System.out.println("Password Mismatch");
        }
    }

    @Then("I clear the confirm password field")
    public void iClearTheConfirmPasswordField() {
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).clear();
    }

    @Then("The error message {string} should not be present")
    public void theErrorMessageShouldNotBePresent(String arg0) {

    String pwd = getDriver().findElement(By.xpath("//input[@id='password']")).getAttribute("value");
        System.out.println(pwd);
    String confirmPwd = getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).getAttribute("value");
        System.out.println(confirmPwd);
    if(pwd.equals(confirmPwd))

    {
        assertThat(getDriver().findElement(By.xpath("//label[@id='confirmPassword-error']")).isDisplayed()).isFalse();
        System.out.println("Password Matched!");
    }
    else
    {
        assertThat(getDriver().findElement(By.xpath("//label[@id='confirmPassword-error']")).isEnabled()).isTrue();
        System.out.println("Password Mismatch");
    }
    }

    @And("I fill out all the required fields")
    public void iFillOutAllTheRequiredFields() {
        getDriver().findElement(By.xpath("//input[@id='name']")).click();
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys("Nila");
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys("Raju");
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys("vrazhagunila");
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("vrazhagunila@gmail.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("12345");
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys("12345");
        getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']")).click();

    }

    @Then("I move to new window")
    public void iMoveToNewWindow() {
        getDriver().switchTo().window().forward();
    }
}
