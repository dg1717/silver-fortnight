package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class JavaStepdefs {
    @Given ("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello World!");
    }

    @When ("I print {string}")
    public void iPrint(String text) {

        System.out.println();

        System.out.println(text);
    }

    @Given ("I work with strings")
    public void iWorkWithStrings() {

        String firstName = "Galina";
        String lasttName = "Lagunova";
        String myOccupation = "instructor";

        System.out.println("Hello, I am " + " " + firstName + " " + lasttName);
        System.out.println("I am an " + myOccupation);
    }

    @Given ("I act on {string} and {string}")
    public void iActOnAnd(String str1, String str2) {
        System.out.println(str1 + " " + str2);
        System.out.println(str1.length());
        System.out.println(str1.toUpperCase());
        System.out.println(str2.toLowerCase());
        System.out.println(str1.equals(str2));
        String str3 = "cuc";
        System.out.println(str1.equalsIgnoreCase(str2));
//        System.out.println(str1.contains(str3));
//        System.out.println(str2.toLowerCase().contains(str3));




    }

    @Given ("I act on numbers")
    public void iActOnNumbers() {
        int num1 = 15;
        int num2 = 3;

        System.out.println(num1 + num2);
        System.out.println("The sum = " + num1 + num2);
        int sum = num1 + num2;
        int diff = num1 - num2;
        int prod = num1 * num2;
        int quot = num1 / num2;
        int mod =num1% num2;

        double num3 = 1.5;

        System.out.println("The sum = " + sum);
        System.out.println("The difference = " + diff);
        System.out.println("The product = " + prod);
        System.out.println("The quotient = " + quot);
        System.out.println("The remainder = " + mod);
        System.out.println(num1/num3);


    }

    @Given ("I demostrate boolean datatype")
    public void iDemostrateBooleanDatatype() {

        int num1 = 7;
        int num2 = 4;

        System.out.println(7>4);
        System.out.println(7<=4);


    }

    @Given ("my favorite color is {string}")
    public void myFavoriteColorIs(String myFavoriteColor) {
        System.out.println();

        String color = "orange";

        System.out.println(myFavoriteColor.equalsIgnoreCase(color));
    }

    @Given ("I print url for {string} page")
    public void iPrintUrlForPage(String site) {
        if (site.equals("google")){
            System.out.println("http://www.google.com");
        }else if (site.equals("yahoo")){
            System.out.println("http://www.yahoo.com");
        }else{
            System.out.println("Page " + site + " is not available");
        }
    }

    @Given ("I print url for {string} using switch")
    public void iPrintUrlForUsingSwitch(String site) {
        switch (site){
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
                System.out.println("Page " + site + " is not available");
                break;
        }
    }

    @Given ("I operate on arrays")
    public void iOperateOnArrays() {
        String [] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        System.out.println(cars);
        System.out.println(cars[3]);
        cars[1]="Tesla";
        System.out.println("Updated element 'Toyota': " + cars[1]);


        int [] numbers = {1, 6, 8, 9, 15};
        System.out.println(numbers.length);


    }

    @Given ("I work with arrays")
    public void iWorkWithArrays() {
        String [] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        for (String item : cars){
            System.out.println(item);
        }


        for (int counter = 0; counter<cars.length; counter++){
            System.out.println(cars[counter]);

        }


    }

    @Given ("I check numbers")
    public void iCheckNumbers() {
        int num = -3;
        int num1 = 0;
        if (num > num1) {
            System.out.println(num + " is Positive");
        } else {
            System.out.println(num + " is Negative");
        }
    }

    @When ("I check number {int}")
    public void iCheckNumber(int num) {
        System.out.println();
        if (num > 0) {
            System.out.println(num + " is Positive");
        } else if (num < 0){
            System.out.println(num + " is Negative");
        }else {
            System.out.println(num + " is equal to zero");
        }

    }

    @Given ("I print out week day corresponding to {string}")
    public void iPrintOutWeekDayCorrespondingTo(String day) {
        switch (day) {
            case "1":
                System.out.println("Monday");
                break;
            case "2":
                System.out.println("Tuesday");
                break;
            case "3":
                System.out.println("Wednesday");
                break;
            case "4":
                System.out.println("Thursday");
                break;
            case "5":
                System.out.println("Friday");
                break;
            case "6":
                System.out.println("Saturday");
                break;
            case "7":
                System.out.println("Sunday");
                break;
            default:
                System.out.println("There is on 7 days  in a week");
                break;

        }
    }

    @Given ("I type the word {string} in reverse order")
    public void iTypeTheWordInReverseOrder(String word) {

        System.out.println(word.length());

        for (int i = 0; i < word.length(); i++) {
            System.out.print(word.charAt(i));

        }

        System.out.println();

        for (int i = word.length() - 1; i >= 0; i--) {
            System.out.print(word.charAt(i));

        }

    }
}


    


