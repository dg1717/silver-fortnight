package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;
import support.TestContext;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;


public class MarketStepdefs {
    @Given("I open a {string}")
    public void iOpenA(String siteName) throws InterruptedException {
        switch (siteName){
            case "quote":
                TestContext.getDriver().get("https://skryabin.com/market/quote.html");
                Thread.sleep(300);
                break;
            case "google":
                TestContext.getDriver().get("https://www.google.com/");
                Thread.sleep(300);
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
        getDriver().manage().window().setSize(new Dimension(width,height));
        Thread.sleep(300);
    }

    @And("I change resolution to {string}")
    public void iChangeResolutionTo(String layout) {
        switch (layout)
        {
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

        System.out.println("The Window size is " + getDriver().manage().window().getSize() );
    }

    @When("I clear email field")
    public void iClearEmailField()  {
        getDriver().findElement(By.xpath("//*[@name='email']")).clear();

    }

    @And("I type {string} into email field")
    public void iTypeIntoEmailField(String wrongFormat) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@name='email']")).sendKeys(wrongFormat);
        Thread.sleep(300);

    }

    @When("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.id("formSubmit")).click();
    }

    @Then("element with text {string} should be displayed")
    public void elementWithTextShouldBeDisplayed(String errorMsg) {
       String message= getDriver().findElement(By.id("email-error")).getText();
       assertThat(message.equals(errorMsg));

        System.out.println("The Error message from code  :"+message );

    }

    @When("I navigate to {string} environment")
    public void iNavigateToEnvironment(String env)  {
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
       boolean errorVal =  getDriver().findElement(By.id("email-error")).isDisplayed();
        assertThat(errorVal).isFalse();
        System.out.println(errorVal);

    }
}
