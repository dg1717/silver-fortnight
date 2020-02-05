package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.codehaus.groovy.antlr.treewalker.SourcePrinter;

import java.sql.SQLOutput;

public class JavaStepdefs {
    @Given("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello world!");
    }

    @When("I print {string}")
    public void iPrint(String text) {
        System.out.println(text);
    }

    @Given("I work with strings")
    public void iWorkWithStrings() {
        String firstName = "Galina";
        String lastName = "Lagunova";
        String profession = "Instructor";
        System.out.println("Hello! I am " + firstName + " " + lastName );
        System.out.println("I am a "+ profession);
    }

    @Given("I act on {string} and {string}")
    public void iActOnAnd(String str1, String str2) {
        System.out.println(str1 + " " + str2);
        System.out.println(str1.length());
        System.out.println((str1.toUpperCase()));
        System.out.println(str1.toLowerCase());
        System.out.println(str1.equals(str2));
        String str3 = "cuc";
        System.out.println(str1.equalsIgnoreCase(str2));
//        System.out.println(str1.contains(str3));
//        System.out.println(str2.toLowerCase().contains(str3));

    }

    @Given("I act on numbers")
    public void iActOnNumbers() {
        int num1 = 15;
        int num2 = 3;
        int sum = num1 + num2;
        int substraction = num2 - num1;
        int addition = num1 + num2;
        int diff= num2 * num1;
        int mul = num1 * num2;
        int mod = num1 % num2;
        double n3 = 2.0;
        System.out.println("The sum = " + num1 + num2);
        System.out.println("The sum = " + sum);
        System.out.println("The substraction = " + substraction);
        System.out.println("The addition =" + diff);
        System.out.println("The multivation =" + mul);
        System.out.println("The remainder =" + mod);
        System.out.println("The result of divition =" + num1/n3);

    }

    @Given("I demonstrate boolean datatype")
    public void iDemonstrateBooleanDatatype() {
        int num1 = 7;
        int num2 = 4;
        System.out.println(7 > 4);
        System.out.println(4 > 7);
    }

    @Given("my favourite colour is {string}")
    public void myFavouriteColourIs(String myFavouriteColour) {
        String color = "orange";
        System.out.println(myFavouriteColour.equalsIgnoreCase(color));
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String site) {
        if (site.equals("google")) {
            System.out.println("http://www.google.com");
        } else if (site.equals("yahoo")) {
            System.out.println("http://www.yahoo.com");
        } else {
            System.out.println("Page " + site + " is not available");
        }
    }

    @Given("I print url for {string} using switch")
    public void iPrintUrlForUsingSwitch(String site) {
        switch (site) {
            case "google":
                System.out.println("http://www.google.com");
                break;
            case "yahoo":
                System.out.println("http://www.yahoo.com");
                break;
            case "bing":
                System.out.println("http://www.bing.com");
            case "quote":
                System.out.println("https://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("page not available");
                break;
        }
    }

    @Given("I operate on arrays")
    public void iOperateOnArrays() {
        String [] cars = {"Ford", "Toyata", "Honda", "BMW", "Bently"};
        cars[1] = "Tesla";
        System.out.println(cars[4]);
        System.out.println("updated element: " + cars[1]);
        int [] numbers = {9, 8, 17, 20};
        System.out.println(numbers[2]);
        System.out.println(numbers.length);
    }

    @Given("I work with arrays")
    public void iWorkWithArrays() {
        String [] cars = {"Ford", "Toyata", "Honda", "BMW", "Bently"};
        for (String car: cars) {
            System.out.println(car);
        }
        for (int counter= 0; counter < cars.length; counter++){
            System.out.println(cars[counter]);
            System.out.println();

        }
    }
    @Given("I add {string} and {string}")
    public void iAddAnd(String n1, String n2) {
        float result = Float.parseFloat(n1) + Float.parseFloat(n2);
        System.out.println("The result of the two added number is: " + result);
    }

    @And("I print if number {string} is positive")
    public void iPrintIfNumberIsPositive(String number) {
        int num1 = Integer.parseInt(number);
        if (num1>=0)
            System.out.println("Number is positive");
        else
            System.out.println("Number is negative");
    }

    @And("I print {string} day of week")
    public void iPrintDayOfWeek(String day) {
        int intDay = Integer.parseInt(day);
        switch (intDay){
            case 1:
                System.out.println("Monday");
                break;
            case 2:
                System.out.println("Tuesday");
                break;
            case 3:
                System.out.println("Wednesday");
                break;
            case 4:
                System.out.println("Thursday");
                break;
            case 5:
                System.out.println("Friday");
                break;
            case 6:
                System.out.println("Saturday");
                break;
            case 7:
                System.out.println("Sunday");
                break;
            default:
                break;

        }
    }


    @And("I print all elements in the array {string}")
    public void iPrintAllElementsInTheArray(String array) {
        String[] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        for (int i=0; i<week.length; i++){
            System.out.println(week[i]);
        }
    }
}
