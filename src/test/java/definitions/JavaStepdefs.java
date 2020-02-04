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

    @Given("I work with strings")
    public void iWorkWithStrings() {
        String firstName = "Kim";
        String lastName = "L";
        String myoccupation = "QA Eng";
        System.out.println("Hi, my name is " + firstName+ " " + lastName+". I am a "+ myoccupation+".");
    }

    @Given("I act on {string} and {string}")
    public void iActOnAnd(String txt1, String txt2) {
        System.out.println(txt1 + " and " + txt2);
        System.out.println(txt1.length());
        System.out.println(txt1.toUpperCase());
        System.out.println(txt2.toLowerCase());
        System.out.println(txt1.equals(txt2));
        String str3 = "cuc";
        System.out.println(txt1.equalsIgnoreCase(txt2));
//        System.out.println(txt1.contains(str3));
//        System.out.println(txt2.toLowerCase().contains(str3));
    }

    @Given("I compare between {string} and {string}")
    public void iCompareBetweenAnd(String str1, String str2) {
        System.out.println(str1 + " " + str2);
        System.out.println(str1.toUpperCase() + " " + str2.toUpperCase());
        System.out.println(str1.length() + " " + str2.length());
        System.out.println(str1.equals(str2));
        System.out.println(str1.equalsIgnoreCase(str2));
        System.out.println(str1.contains(str2));
    }

    @Given("I act on numbers")
    public void iActOnNumbers() {
        int numb1 = 15;
        int numb2 = 3;
        double dd = 1.5;

        System.out.println(numb1 + numb2);
        System.out.println("The sum = " + numb1 + numb2);
        System.out.println(numb1 + numb2 + " is the sum");
        int sum = numb1 + numb2;
        int mod = numb1 % numb2;
        double quot = numb1 / dd;

        System.out.println("The sum = " + sum);
        System.out.println(numb1-numb2 + " is the dfference");
        System.out.println(numb1*numb2 + " is the product");
        System.out.println(numb1/numb2 + " is the quotient");
        System.out.println(numb1%numb2 + " is the reminder " + mod);
        System.out.println("The quotient is " + quot);
        System.out.println(numb1 / dd);

    }

    @Given("I demostrate boolean datatype")
    public void iDemostrateBooleanDatatype() {
        int num1 = 7;
        int num2 = 4;

        System.out.println(7>4);
        System.out.println(7<=4);
    }

    @Given("my favorite color is {string}")
    public void myFavoriteColorIs(String myFavoriteColor) {
        String color = "Orange";
        System.out.println("Compare colors :" + color + " vs " + myFavoriteColor);
        System.out.print(myFavoriteColor.equals(color));
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String site) {
        if (site.equals("google")) {
            System.out.println("http://wwww.google.com");
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
                System.out.println("ttp://wwww.google.com");
                break;
            case "yahoo":
                System.out.println("http://www.yahoo.com");
                break;
            case "bing":
                System.out.println("http://www.bing.com");
                break;
            case "quote":
                System.out.println("http://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("Page " + site + " is not found");
                break;
        }
    }

    @Given("I operate on arrays")
    public void iOperateOnArrays() {
        String [] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        int [] numbers = {1,2,3,4,5,6,7,8,9,10};

        System.out.println(cars);
        System.out.println(cars[3]);
        cars[1] = "Tesla";
        System.out.println("Updated element 'Toyota' to " + cars[1]);

        System.out.println(numbers.length);
    }

    @Given("I work with arrays")
    public void iWorkWithArrays() {
        String [] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        int [] numbers = {1,2,3,4,5,6,7,8,9,10};

        for (String item : cars) {
            System.out.println(item);
        }
        for (int i=0; i <numbers.length; i++) {
            System.out.println(numbers[i]);
        }
    }
}
