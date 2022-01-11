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

https://github.com/artemtorlak/refactoring_course_example/commit/efb8ecbe6f6fcb1011094ea813b946aa822e9234

## 4. Replace Temp vairables with Query
When it is possible it is better to delete temp variables. And replace them with directly calling method. Even if in this case we will call several times function. We will optimize this in our next steps
https://github.com/artemtorlak/refactoring_course_example/commit/13de24b96f5bbf7ac833b17518bc2a053ff96356

## 5. Extract method from Customer to Rental class
We can extract to serate method algorithm for counting points. It is better to have this method in Rental class.

https://github.com/artemtorlak/refactoring_course_example/commit/26b06332dd85765b7c2462cc71d98d27163b8bbe
