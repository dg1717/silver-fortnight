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

    @Given("I act on {string} and {string}")
    public void iActOnAnd(String str1, String str2) {
        System.out.println(str1 + " " + str2);
        System.out.println(str1.length());
        System.out.println(str1.toUpperCase());
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

        double d = 1.5;

        System.out.println(num1 + num2);
        System.out.println("The sum = " + num1 + num2);
        int sum = num1 + num2;
        System.out.println("The sum = " + sum);
        System.out.println("The diff = " + (num1-num2));
        System.out.println("The prod = " + num1*num2);
        System.out.println("The quot = " + num1/num2);
        System.out.println("The mod = " + num1%num2);

        System.out.println("The mod from int/double (casting)= " + num1/d);

    }

    @Given("I demonstrate boolean datatype")
    public void iDemonstrateBooleanDatatype() {
        int num1 = 7;
        int num2 = 4;

        System.out.println(7>4);
        System.out.println(7<=4);

    }

    @Given("my favorite color is {string}")
    public void myFavoriteColorIs(String myFavoriteColor) {
        String color = "orange";

        System.out.println(myFavoriteColor.equalsIgnoreCase(color));
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String site) {
        if (site.equals("google")) {
            System.out.println("http://www.google.com");
        } else if (site.equals("yahoo")) {
            System.out.println("http://www.yahoo.com");
        } else {
            System.out.println("Page "+site+" is not available!");
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
                break;
            case "quote":
                System.out.println("https://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("Page "+site+" is not available!");
                break;
        }
    }


    @Given("I operate on arrays")
    public void iOperateOnArrays() {
        String[] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        System.out.println(cars);
        System.out.println(cars[3]);
        cars[1]="Tesla";
        System.out.println("Updated element 'Toyota': "+cars[1]);

        int[] numbers = {1, 6, 8, 9, 15};
        System.out.println(numbers.length);
    }

    @Given("I work with arrays")
    public void iWorkWithArrays() {
        String[] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        int[] numbers = {1, 6, 8, 9, 15};

        for (String item : cars) {
            System.out.println(item);
        }

        for (int counter=0; counter < cars.length; counter++) {
            System.out.println(cars[counter]);
        }

        for (int tempNum : numbers) {
            System.out.println(tempNum);
        }
    }

    @Given("I type the word {string} in reverse order")
    public void iTypeTheWordInReverseOrder(String word) {
        for (int i=0; i < word.length(); i++) {
            System.out.print(word.charAt(i));
        }

        System.out.println();

        for (int i=word.length()-1; i >=0; i--) {
            System.out.print(word.charAt(i));
        }
    }
}
