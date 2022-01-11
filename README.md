# Main Idea
The purpose of this repository is to show certain refactoring techniques that can be useful during working on various projects.

Here we will consider a simple example of the program, on the example of which, step by step, the refactoring steps will be considered. 
The example is taken and adapted from the book by Martin Fowler "Refactoring: Improving the Design of Existing Software"

# Refactoring steps

## 1. Isolate case statement
At the first step we can see that 'case' statement looks very huge and can be easily isolated to a new method. In this case we will use the technique that is called "Extract Method".

https://github.com/artemtorlak/refactoring_course_example/compare/92e82a69ed188d35b6b73e0885c893cb83802a85..8a3949ea29536c2d7ca3c9772b0cd58fbb516517

