@java
  Feature:
    @java1
    Scenario: Hello World
      Given  I say Hello World
      When I print "Hello World!"

      @java2
      Scenario: Concatenation
        Given I work with Strings

        @java3
        Scenario: String methods
          Given I act on "cucumber" and "CuCUMBER"
          Given I act on "men in black" and "MEN IN BLACK"

          @java4
          Scenario: Array to Reverse String
            Given I print out "java" reverse order

            @java5
            Scenario: Days of the week
              Given I print out weekday corresponding to "8"

              @java6
              Scenario: To read The number
                Given I need to print this number -3
