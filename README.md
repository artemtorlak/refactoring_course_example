# Main Idea
The purpose of this repository is to show certain refactoring techniques that can be useful during working on various projects.

Here we will consider a simple example of the program, on the example of which, step by step, the refactoring steps will be considered. 
The example is taken and adapted from the book by Martin Fowler "Refactoring: Improving the Design of Existing Software"

# Refactoring steps

## 1. Isolate case statement
At the first step we can see that "case" statement looks very huge and can be easily isolated to a new method. In this case we will use the technique that is called "Extract Method".

https://github.com/artemtorlak/refactoring_course_example/compare/92e82a69ed188d35b6b73e0885c893cb83802a85..8a3949ea29536c2d7ca3c9772b0cd58fbb516517

## 2. Transfer "amountFor" method to the appropriate class
Looking to "amountFor" function we can see that this function uses data most from "Rental" class, not from "Customer". 
In this case the best option is to try to transfer method "amountFor" to appropriate class.

https://github.com/artemtorlak/refactoring_course_example/compare/8a3949ea29536c2d7ca3c9772b0cd58fbb516517..3d638ee65f2ea5319c7101ca45c9a0bf607db4f7

## 3. Delete method "amountFor"
Now we can see that method “amountFor” in class “Customer” is not necessary because we can call method “getCharge” from class Rental.

https://github.com/artemtorlak/refactoring_course_example/compare/3d638ee65f2ea5319c7101ca45c9a0bf607db4f7..efb8ecbe6f6fcb1011094ea813b946aa822e9234
