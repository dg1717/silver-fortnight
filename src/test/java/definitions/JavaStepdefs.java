package definitions;

import com.fasterxml.jackson.databind.annotation.JsonAppend;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import javax.sound.midi.Soundbank;

public class JavaStepdefs {
    @Given("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello World!");
    }

    @When("I print {string}")
    public void iPrint(String text) {

        System.out.print(text);

        System.out.println();

        System.out.println(text);
    }

    @Given("I work with strings")
    public void iWorkWithStrings() {

        String firstName = "Xiaoyan";
        String lastName = "Zhang";
        String myOccupation = "SQA engineer";

        System.out.println("Hello, I am " + "" + firstName + lastName + "!");
        System.out.println("I am an " + myOccupation);
    }

    @Given("I practice with strings")
    public void iPracticeWithStrings() {

        String fN = "Xy";
        String lN = "Z";
        String myOccupation = "Teacher";

        System.out.println("Hello, I am" + " " + lN + fN + "!");
        System.out.println("I am a " + myOccupation);


    }

    @Given("I act on {string} and {string}")
    public void iActOnAnd(String str1, String str2) {

        System.out.println(str1 + " " + str2);
        System.out.println(str1.length());
        System.out.println(str1.toUpperCase());
        System.out.println(str2.toLowerCase());
        System.out.println(str1.equals(str2));
        String str3 = "cuc";
        System.out.println(str1.equalsIgnoreCase(str2));
//     System.out.println(str1.contains(str3));
//     System.out.println(str2.toLowerCase().contains(str3));


    }



    @Given("I act on numbers")
    public void iActOnNumbers() {
        int num1 = 15;
        int num2 = 3;

        System.out.println(num1 + num2 );
        System.out.println("The sum = " + num1 + num2 );
        int sum = num1 + num2;
        System.out.println("The sum = " + sum);
        System.out.println("The product = " + num1 * num2);
        System.out.println("The division = " + num1 / num2);

        int prod = num1 * num2;
        int quot = num1 / num2;
        int diff = num1 - num2;
        int modulers = num1 % num2;

        double num3 = 2.5;
        double doub = num1 / num3;

        System.out.println("The difference = " + diff);
        System.out.println("The product = " + prod);
        System.out.println("The quotient = " + quot);
        System.out.println("The reminder = " + modulers);
        System.out.println("The double = " + doub);
        System.out.print(num1 / num3);
        System.out.println(num1 / num3);
    }

    @Given("I act on  boolean data type")
    public void iActOnBooleanDataType() {
        int num1 = 1;
        int num2 = 2;

        System.out.println(num1 > num2);
        System.out.println(num1 < num2);

    }



    @Given("my favorite color is {string}")
    public void myFavoriteColorIs(String myFavoriteColor) {
        String color = "orange";

        System.out.print(myFavoriteColor.equalsIgnoreCase(color));

    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String site) {

        if(site.equals("google")){
            System.out.println("http://www.google.com");
        }else if (site.equals("yahoo")){
            System.out.println("http://www.yahoo.com");
        }else{
            System.out.println("Page " + site + " is not available.");
        }
    }

    @Given("I print url for {string} page using switch")
    public void iPrintUrlForPageUsingSwitch(String site) {
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
                System.out.println("Page " + site + " is not available.");

        }
    }

    @Given("I operate on arrays")
    public void iOperateOnArrays() {

        String [] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        System.out.println(cars);
        System.out.println(cars[3]);
        cars[1]="Tesla";
        System.out.println("Updated element 'Toyota': "+ cars[1]);

        int [] nums = {1,2,3,4};
        System.out.println(nums.length);

    }

    @Given("I work with arrays")
    public void iWorkWithArrays() {

        String [] cars = {"Ford", "Toyota", "BMW", "Bentley"};
        for (String item : cars ){
            System.out.println(item);
        }

        System.out.println();

        for (int counter = 1; counter < cars.length; counter++ ){
            System.out.println(cars[counter]);
        }

        int [] num = {2,4,6,8,10,12};
        for (int number : num){
            System.out.println(number);
        }

        System.out.println();

        for (int i = 2; i < num.length; i++){
            System.out.println(num[i]);
        }
    }



    @Given("and I print if number {int} is positive")
    public void andIPrintIfNumberIsPositive(int num_given) {
        if (num_given > 0) {
            System.out.println("The number " + num_given + " is positive.");
        } else if (num_given == 0) {
            System.out.println("The number " + num_given + " is Zero.");
        } else {
            System.out.println("The number " + num_given + " is negative.");
        }
    }




    @Given("And I print {string} day of week")
    public void andIPrintDayOfWeek(String weekday) {
        switch (weekday) {
            case "Monday":
            case "Tuesday":
            case "Wednesday":
            case "Thursday":
            case "Friday":
            case "Saturday":
            case "Sunday":
                System.out.println(weekday);
                break;
            default:
                System.out.println(weekday + " is not a weekday! ");
        }
    }


    @Given("I work with for loop")
    public void iWorkWithForLoop() {
       String [] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};

       for (String item_week: week)
           System.out.println(item_week);
    }


    @Given("I print {string} day of week")
    public void iPrintDayOfWeek(String weekday) {
        String weekdayLowercase = weekday.toLowerCase();
        switch (weekdayLowercase) {
            case "monday":
                System.out.println("Monday");
                break;
            case "tuesday":
                System.out.println("Tuesday");
                break;
            case "wednesday":
                System.out.println("Wednesday");
                break;
            case "thursday":
                System.out.println("Thursday");
                break;
            case "friday":
                System.out.println("Friday");
                break;
            case "saturday":
                System.out.println("Saturday");
                break;
            case "sunday":
                System.out.println("Sunday");
                break;
            default:
                System.out.println("String " + weekday + " is not a weekday! ");
        }
    }
}



