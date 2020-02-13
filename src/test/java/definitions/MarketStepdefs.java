package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;
import org.testng.annotations.Test;
import support.TestContext;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

import java.sql.SQLOutput;

public class MarketStepdefs {
    @Given("I go to {string} page")
    public void iGoTo(String site) {
        switch (site) {
            case "quote" :
                TestContext.getDriver().get("http://skryabin.com/market/quote.html");
                break;
            case "google" :
                TestContext.getDriver().get("https://google.com");
                break;
            default:
                System.out.println("Unsuported site: " + site);
        }
    }

    @And("I print page details")
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

    @And("I set window to full screen")
    public void iSetWindowToFullScreen() {
        getDriver().manage().window().fullscreen();
    }

    @And("I set window to maximum")
    public void iSetWindowToMaximum() {
        getDriver().manage().window().maximize();
        getDriver().manage().window().fullscreen();
    }

    @And("I set window with to {int} and height to {int}")
    public void iSetWindowWithToAndHeightTo(int width, int height) throws InterruptedException {
        getDriver().manage().window().setSize(new Dimension(width,height));
        Thread.sleep(5000);
    }

    @And("I change resolution to {string}")
    public void iChangeResolutionTo(String layout) {
        switch (layout) {
            case "phone" :
                getDriver().manage().window().setSize(new Dimension(400, 1024));
                break;
            case "tablet" :
                getDriver().manage().window().setSize(new Dimension(1000, 1024));
                break;
            default:
                getDriver().manage().window().setSize(new Dimension(1024, 1024));
                break;
        }
    }

    @Then("I check window size")
    public void iCheckWindowSize() {
        System.out.println(getDriver().manage().window().getSize());
    }

    @When("I clear email field")
    public void iClearEmailField() {
        getDriver().findElement(By.xpath("//*[@name='email']")).clear();
//        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(Keys.BACK_SPACE);
//        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys("wrong#format.com");
//        getDriver().findElement(By.xpath("//*[@name='email']")).clear();
//        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys("correct@format.com");
    }

    @And("I type {string} info email field")
    public void iTypeInfoEmailField(String text) {
        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(text);
    }

    @And("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.id("formSubmit"));
    }

    @Then("element with text {string} should be displayed")
    public void elementWithTextShouldBeDisplayed(String message) {
        String errorMessage = getDriver().findElement(By.id("email-error")).getText();
        assertThat(errorMessage).isEqualTo(message);
    }

    @When("I navigate to {string} environment")
    public void iNavigateToEnvironment(String env) {
        switch (env) {
            case "prod":
                getDriver().get("http://skryabin.com/market/quote.html");
                break;
            case "stage":
                getDriver().get("http://quote-stage.portnov.com");
                break;
            case "qa":
                getDriver().get("http://quote-qa.portnov.com");
                break;
            default:
                getDriver().get("http://skryabin.com/market/quote.html");
        }
    }

    @Then("element with text {string} should not be displayed")
    public void elementWithTextShouldNotBeDisplayed(String message) {
        String errorMessage = getDriver().findElement(By.id("email-error")).getText();
        assertThat(getDriver().findElement(By.id("email-error")).isDisplayed());
        assertThat(!errorMessage.equals(message));
    }
}
