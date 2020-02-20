package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import cucumber.api.java.sl.In;

public class JavaStepsdefs {
    @Given("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello World");
    }

    @When("I print {string}")
    public void iPrint(String txt) {
        System.out.println(txt);
    }

    @Given("I work with strings")
    public void iWorkWithStrings() {
        String Fname = "Suganya";
        String Lname = "Sundaram";
        System.out.println(Fname+Lname);
    }

    @Given("I work on {string} and {string}")
    public void iWorkOnAnd(String str1, String str2) {
        String str3 = "met";
            System.out.println(str1+""+str2);
            System.out.println("The Length of the string1"+""+ str1.length());
            System.out.println("The Uppercase of "+str2+""+"is "+str2.toUpperCase());
            System.out.println("The Lowercase of "+str3+""+"is "+str3.toLowerCase());
            System.out.println("The String Comparison using equals "+str1.equals(str2));
            System.out.println("The String Comparison using Compare "+str1.compareTo(str2));
            System.out.println(("string1 contains "+str1.contains(str3)));

    }

    @Given("I work with Numbers")
    public void iWorkWithNumbers() {
        int num1 = 12;
        int num2 = 4;
        int sum = num1 +num2;
        double num3 =2.0;
        System.out.println("Then addition of "+num1+" and "+num2+" is "+sum);
        System.out.println("Then Subtraction of "+num2+" and "+num1+" is "+(num1-num2));
        System.out.println("Then multiplication of "+num2+" and "+num1+" is "+(num1*num2));
        System.out.println("Then Division of "+num2+" and "+num1+" is "+(num1/num2));
        System.out.println("Then reminder of "+num2+" and "+num1+" is "+(num1%num2));

    }


    @Given("my favorite color as {string}")
    public void myFavoriteColorAs(String favcolor) {
        String givencolor = "white";
        if(favcolor.equals(givencolor))
        {
            System.out.println("True");
        } else {
            System.out.println("False");
        }
    }

    @Given("I work with boolean")
    public void iWorkWithBoolean() {
        int num1 = 5;
        int num2 = 10;
        int num3 = num1 +num2;
        if (num3 == 15) {
            System.out.println("True");
        }
        else{
            System.out.println("false");
        }
        System.out.println(num1 > num2);
        System.out.println(num1 < num2);
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String sitename) {
        if (sitename.equals("google"))
        {
            System.out.println("www."+sitename+".com");
            System.out.println("http://www.google.com");
        } else {
            if(sitename.equals("yahoo"))
            {
                System.out.println("www."+sitename+".com");
                System.out.println("http://www.yahoo.com");
            }
            else
            {
                System.out.println("Page " + sitename + " is unavailable");
            }
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

    @Given("I work with Arrays")
    public void iWorkWithArrays() {
        String[] cars= {"Ford","BMW","AUDI","Tesla"};
        System.out.println("The first element of the array is " + cars[0]);
        System.out.println("The second element of the array is " + cars[1]);
        System.out.println("The Third element of the array is " + cars[2]);
        System.out.println("The Fourth element of the array is " + cars[3]);
        cars[1]="Nissan";
        System.out.println("The second element of the array is " + cars[1]);
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
        for (String carname : cars){
            System.out.println(carname);
        }
        for(int i=0;i<cars.length;i++){
            System.out.println(cars[i]);
        }
        int[] numbers ={2,4,6,8,10,12};
        for(int j=0;j<numbers.length;j++)
        {
            System.out.println("The elements of the Arrays "+numbers[j]);
        }
    }

    @Given("I print if number {string} is positive")
    public void iPrintIfNumberIsPositive(String str) {
        int i = Integer.parseInt(str);
        if (i< 0){
            System.out.println("Number is Negative");
        }else{
            System.out.println("NUmber is Positive");
        }
    }

    @Given("I print {string} day of week")
    public void iPrintDayOfWeek(String str) {
        switch (str)
        {
            case "1":
               System.out.println("Sunday");
               break;
            case "2":
                System.out.println("Monday");
                break;
            case "3":
                System.out.println("Tuesday");
                break;
            case "4":
                System.out.println("Wednesday");
                break;
            case "5":
                System.out.println("Thursday");
                break;
            case "6":
                System.out.println("Friday");
                break;
            case "7":
                System.out.println("Saturday");
                break;

        }
    }

    @Given("I print elements of Array")
    public void iPrintElementsOfArray() {
       String[] week = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
       for(int i = 0 ;i<week.length;i++){
           System.out.println("The elements of the Array are "+week[i]);
       }
    }

    @Given("I reverse a String")
    public void iReverseAString() {
       String[] rev = {"J","a","v","a"};
       for(int i = rev.length-1;i>=0;i--) {
           System.out.print(rev[i]);
       }
    }
}
