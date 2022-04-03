//Microsoft (R) Visual C# Compiler version 3.4.0-beta4-19562-05 (ff930dec)
//Copyright (C) Microsoft Corporation. All rights reserved.


using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Rextester
{
    public class Employee { public string FirstName { get; set; } public int Age { get; set; } }
    public class Program
    {
        public static void Main(string[] args)
        {
           List<Employee> employees = new List<Employee>();
            employees.Add(new Employee() { FirstName = "John", Age = 29 });
            employees.Add(new Employee() { FirstName = "Jane", Age = 39 });
            employees.Add(new Employee() { FirstName = "Matts", Age = 25 });
            employees.Add(new Employee() { FirstName = "Plank", Age = 29 });
            employees.Add(new Employee() { FirstName = "Eliza", Age = 42 });
            employees.Add(new Employee() { FirstName = "Maria", Age = 18 });
            employees.Add(new Employee() { FirstName = "James", Age = 26 });
            
            //Find The First Name of the Highest Aged Employee in Capitalized format using LINQ(It should output ELIZA)
            var firstName = employees.FirstOrDefault().FirstName;
            
            Console.WriteLine(firstName);

            //Find All employees between the age 20-30
			Console.WriteLine();
            var employeesFiltered = employees.ToList();
            
            Console.WriteLine("Filtered Employees: ");
            foreach (var employee in employeesFiltered)
            {
                Console.WriteLine(employee.FirstName + " " + employee.Age);
            }
        }
    }
}
