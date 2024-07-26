//#1 Javascript this usage
var input1 = "abc"
function test(input1){
console.log(this.input1)
}

test('def')


//#2 Javascript convert to arrow function 
var add = function(a,b){
  return a + b;
}

//#3 Javascript combine using spread operator
const arrayABC = ['A','B','C']
const array123 = [1,2,3]

//#4 OOPS/CSharp - Find error(If any)
static class MyStaticClass
    {
        static MyStaticClass() { }//A. Will it work or compile error
        MyStaticClass() { }//B. Will it work or compile error
    }

//#5 OOPS/CSharp - Summarize Instantiation and Inheriance for the below three
Static Class, Abstract Class, Sealed Class 
//Which can be Instantiated(New Class()) and which can be Inherited by another class(Class A: Class B)




//#6React Code in app.js:
import React, { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./styles.css";
import App from "./App";
function ShowDetail(props) {
  return <h3>I am  
      /Get the FirstName Here/ 
      and  my age is 
      /Get the Age Here/</h3>;
}
function EmployeeDetail() {
  const johnInfo = { FirstName: "John", Age : 29 };
  return (
    <>
	    <h1 >What is your name and age?</h1>
	    <ShowDetail emp={ johnInfo } />
    </>
  );
}
const root = createRoot(document.getElementById('root'));
root.render(<EmployeeDetail />);
