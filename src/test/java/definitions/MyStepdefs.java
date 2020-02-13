package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class MyStepdefs {
    @Given("I say Hello World")
    public void iSayHelloWorld() {
        System.out.println("Hello World!");
    }

    @When("I print {string}")
    public void iPrint(String text) {
        System.out.println(text);
    }

    @Given("I work with Strings")
    public void iWorkWithStrings() {
        String firstName="Rama";
        String lastName="Devalla";
        String myOccupation="Student";
        System.out.println("Hello"+" "+firstName+" "+lastName);
        System.out.println("I am an "+myOccupation);
    }

    @Given("I act on {string} and {string}")
    public void iActOnAnd(String str1, String str2) {
          System.out.println(str1 +" "+str2);
          System.out.println(str1.length());
          System.out.println(str1.toUpperCase());
          System.out.println(str2.toLowerCase());
          System.out.println(str1.equals(str2));
          String  str3="cuc";
          System.out.println(str1.equalsIgnoreCase(str2));
//          System.out.println(str1.contains(str3));
//          System.out.println(str2.toLowerCase().contains(str3));

    }

    @Given("I print out {string} reverse order")
    public void iPrintOutReverseOrder(String word) {
        for(int i=0;i<word.length();i++){
          System.out.print(word.charAt(i));
        }
        System.out.println();
        for(int i=word.length()-1;i>=0;i--){
            System.out.print(word.charAt(i));
        }

    }

    @Given("I print out weekday corresponding to {string}")
    public void iPrintOutWeekdayCorrespondingTo(String Day) {
        switch (Day){
            case "1" :
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
                System.out.println("In week only 7 days are there");

        }


    }
}
