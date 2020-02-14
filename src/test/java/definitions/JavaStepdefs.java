package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class JavaStepdefs {
    @Given("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello World!!!");
    }

    @When("I print {string}")
    public void iPrint(String txt) {
        System.out.println(txt);
    }

    @Given("I work with strings")
    public void iWorkWithStrings() {
        String fName = "Nila";
        String lName = "Raju";
        String myOcc = "I want to became a SQA";
        System.out.println("My Concatenation output is:");
        System.out.println(fName + " " + lName + " and " + myOcc);
    }

    @Given("I work on {string} and {string}")
    public void iWorkOnAnd(String str1, String str2) {
        String str3 = "met";
        System.out.println(str1 + " " + str2);
        System.out.println("The length of String 1 is " + str1.length());
        System.out.println("The Uppercase of String 1 is " + str1.toUpperCase());
        System.out.println("The lowercase of String 2 is " + str2.toLowerCase());
        System.out.println("The length of String 2 is " + str2.length());
        System.out.println("The String Comparison using equals is " + str1.equals(str2));
        System.out.println("The String Comparison using compareTo " + str1.compareTo(str2));
        System.out.println("The String1 contains  " + str1.contains(str3));
    }

    @Given("I work with numbers")
    public void iWorkWithNumbers() {
        int num1 = 12;
        int num2 = 4;
        double num3 = 2.0;
        int sum = num1 + num2;
        System.out.println("The Result is: " + (num1 + num2));
        System.out.println("The Result is: " + num1 + num2);
        System.out.println("The Result addition is: " + sum);
        System.out.println("The Result of Subtraction is : " + (num1 - num2));
        System.out.println("The Product is: " + (num1 * num2));
        System.out.println("The division quotient is: " + (num1 / num2));
        System.out.println("The reminder of division is: " + (num1 % num2));
        System.out.println("The reminder of division is: " + (num1 % num3));


    }

    @Given("I work with boolean")
    public void iWorkWithBoolean() {
        int num1 = 5;
        int num2 = 10;
        int num3 = num1 + num2;
        if (num3 == 15) {
            System.out.println("True");
        } else {
            System.out.println("False");
        }
        System.out.println(num1 > num2);
        System.out.println(num1 < num2);

    }

    @Given("my favorite color as {string}")
    public void myFavoriteColorAs(String myFavColor) {
        String givenColor= "white";
        if(myFavColor.equals(givenColor))
        {
            System.out.println("True");
        }
        else
            {
            System.out.println("False");
        }
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String siteName) {
        if(siteName.equals("google"))
        {
            System.out.println("www."+siteName+".com");
            System.out.println("http://www.google.com");
        }
        else if(siteName.equals("yahoo"))
        {
            System.out.println("www."+siteName+".com");
            System.out.println("http://www.yahoo.com");
        }
        else
        {
            System.out.println("Page " + siteName + " is unavailable");
        }
    }

    @Given("I print url for {string} page using switch")
    public void iPrintUrlForPageUsingSwitch(String siteName) {
        switch (siteName)
        {
            case "google":
                System.out.println("www."+siteName+".com");
                System.out.println("http://www.google.com");
                break;
            case "yahoo":
                System.out.println("www."+siteName+".com");
                System.out.println("http://www.yahoo.com");
                break;
            case "bing":
                System.out.println("www."+siteName+".com");
                System.out.println("http://www.bing.com");
                break;
            case "quote":
                System.out.println("www."+siteName+".com");
                System.out.println("http://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("Page " + siteName + " is unavailable");
                break;

        }
    }

    @Given("I work with arrays")
    public void iWorkWithArrays() {
        String[] cars ={"Ford", "Nissan","BMW","Toyota"};
        System.out.println("The first element of the array is " + cars[0]);
        System.out.println("The second element of the array is " + cars[1]);
        System.out.println("The Third element of the array is " + cars[2]);
        System.out.println("The Fourth element of the array is " + cars[3]);
        cars[1]="Tesla";
        System.out.println("The updated element of the array is " + cars[1]);

        int[] numbers ={3,6,9,12,15};
        System.out.println("The first element of the array is " + numbers[0]);
        System.out.println("The second element of the array is " + numbers[1]);
        System.out.println("The Third element of the array is " + numbers[2]);
        System.out.println("The Fourth element of the array is " + numbers[3]);
        System.out.println("The fifth element of the array is " + numbers[4]);
        System.out.println("The length of array is "+ numbers.length);

    }

    @Given("I manipulate with Arrays")
    public void iManipulateWithArrays() {
        String[] cars ={"Ford", "Nissan","BMW","Toyota"};
        for (String carName: cars)
        {
            System.out.println("The Car Name is " + carName);
        }
        for(int i =0;i<cars.length;i++)
        {
            System.out.println("The Car Name is " + cars[i]);
        }

        int[] numbers ={2,4,6,8,10,12};
        for(int j=0; j<numbers.length;j++)
        {
            System.out.println("The array element is " +numbers[j]);
        }
    }


    @Given("The number is positive or negative")
    public void theNumberIsPositiveOrNegative() {
        int num = 12;
        if(num>0)
        {
            System.out.println("The number "+ num + " is Positive");
        }
        else
        {
            System.out.println("The number "+ num + " is negative");
        }
    }

    @And("If I print number {string} is positive")
    public void ifIPrintNumberIsPositive(String str) {
        int num =Integer.parseInt(str);
        System.out.println("The number is " + num);
        if(num>0)
        {
            System.out.println("The number " + num + " is positive ");
        }
        else
        {
            System.out.println("The number " +num + "  is negative");
        }
    }


    @Given("If I print {string} the day is")
    public void ifIPrintTheDayIs(String day)
    {
        switch (day)
        {
            case "1":
                System.out.println("Today is Monday");
                break;
            case "2":
                System.out.println("Today is Tuesday");
                break;
            case "3":
                System.out.println("Today is Wednesday");
                break;
            case "4":
                System.out.println("Today is Thursday");
                break;
            case "5":
                System.out.println("Today is Friday");
                break;
            case "6":
                System.out.println("Today is Saturday");
                break;
            case "7":
                System.out.println("Today is Sunday");
                break;
            default:
                System.out.println("There is no such day");
                break;
        }

    }

    @Given("I print days of week")
    public void iPrintDaysOfWeek() {

        String [] daysOfWeek ={"Monday", "Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};
        for(String str: daysOfWeek)
        {
            System.out.println(str);
        }
    }


    @Given("I print the String in reverse order")
    public void iPrintTheStringInReverseOrder() {
        String[] str = {"J", "a", "v","a"};
        System.out.println("The Array length is : " +str.length );
        int len = str.length;
              for ( int j = len-1 ; j >= 0; j--) {
            System.out.print(str[j]);
        }
    }
}