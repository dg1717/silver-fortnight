package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java8.Th;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import support.TestContext;
import static org.assertj.core.api.Assertions.assertThat;
import static java.lang.Thread.*;
import static support.TestContext.getDriver;

import java.sql.SQLOutput;

public class MarketStepDefs {
    @Given("I go to {string}")
    public void iGoTo(String site) throws InterruptedException {
        switch(site){
            case "quote":
                TestContext.getDriver().get("http://skryabin.com/market/quote.html");
                sleep(3000);
                break;
            case "Google":
                TestContext.getDriver().get("https://www.google.com/");
                sleep(300);
                break;
            default:
                System.out.println("Unsupported site: "+site);

        }
    }


    @And("I Print Page details")
    public void iPrintPageDetails() {
        System.out.println(TestContext.getDriver().getTitle());
        System.out.println(TestContext.getDriver().getCurrentUrl());
        System.out.println(TestContext.getDriver().getWindowHandle());

    }

    @When("I refresh, go back, go forward")
    public void iRefreshGoBackGoForward() {
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
    public void iSetWindowWidthToAndHeightTo(int width, int height) {
        getDriver().manage().window().setSize(new Dimension(width,height));
    }

    @And("I Change Resolution to {string}")
    public void iChangeResolutionTo(String layout) {
        switch (layout){
            case "phone":
                getDriver().manage().window().setSize(new Dimension(500,1024));
                break;
            case "tablet":
                getDriver().manage().window().setSize(new Dimension(1000,1024));
                break;
            default:
                getDriver().manage().window().setSize(new Dimension(1280,1024));
                break;
        }

    }

    @Then("I Check window size")
    public void iCheckWindowSize() {
        System.out.println(getDriver().manage().window().getSize());
    }

    @When("I clear email field")
    public void iClearEmailField() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@name='email']")).clear();

//        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(Keys.BACK_SPACE);
//        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys("wrongformat");
//
//        getDriver().findElement(By.xpath("//*[@name='email']")).clear();
//        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys("correctformat");
        sleep(5000);
    }

    @And("I type {string} into email field")
    public void iTypeIntoEmailField(String text) {
        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(text);
    }

    @And("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.id("formSubmit")).click();
    }

    @Then("element with text {string} should be displayed")
    public void elementWithTextShouldBeDisplayed(String message) {
        String errorMessage = getDriver().findElement(By.id("email-error")).getText();
        System.out.println("Error message from the screen :" + errorMessage);
        System.out.println("Parameter message :" + message);
        System.out.println(assertThat(errorMessage.equals(message)));
        }

    @When("I navigate to {string} environment")
    public void iNavigateToEnvironment(String env) {
        switch (env){
            case "prod":
                getDriver().get("http://skryabin.com/market/quote.html");
                break;
            case "qa":
                getDriver().get("http://quote-stage.portnov.com/");
                break;
            case "stage":
                getDriver().get("http://quote-stage.portnov.com/");
                break;
            default:
                System.out.println("Unsupported site: "+env );
        }

    }

    @And("I fill out all the required fields")
    public void iFillOutAllTheRequiredFields() {
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys("Sugan");
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("abc@gmail.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("12345");
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys("12345");
        getDriver().findElement(By.xpath("//input[@id='name']")).sendKeys("SuganS");
        getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']")).click();
    }

    @Then("I verify the entered data on the results page")
    public void iVerifyTheEnteredDataOnTheResultsPage() {
        String result= getDriver().findElement(By.xpath("//div[@id='quotePageResult']")).getText();
        System.out.println(result);
        assertThat(result.contains("Sugan"));
        assertThat(result.contains("abc@gmail.com"));
        assertThat(result.contains("SuganS"));
        assertThat(!result.contains("12345"));
        assertThat(getDriver().findElement(By.xpath("//b[@name='agreedToPrivacyPolicy']")).getText()).isEqualTo("true");


    }

    @And("I verify password field behavior")
    public void iVerifyPasswordFieldBehavior() {
        WebElement btnsubmit = getDriver().findElement(By.xpath("//button[@id='formSubmit']"));
        WebElement password = getDriver().findElement(By.xpath("//input[@id='password']"));

        password.clear();
        btnsubmit.click();
        WebElement pwderror =  getDriver().findElement(By.xpath("//label[@id='password-error']"));
        String errorMessage = pwderror.getText();
        assertThat(pwderror.isDisplayed()).isTrue();
        assertThat(errorMessage.equals("This field is required."));

        password.sendKeys("1234");
        assertThat(pwderror.isDisplayed()).isTrue();
        assertThat(errorMessage.contains("5 char"));

        password.sendKeys("5");
        assertThat(pwderror.isDisplayed()).isFalse();


    }
}
