//
//  Task List.swift
//  Task Manager
//
//  Created by Jacob Glass on 9/20/18.
//  Copyright © 2018 Jacob Glass. All rights reserved.
//

import Foundation

class TaskList {
    var taskArray : [Task] = []
    
    
    func addTask() {
        print("Enter the task you wish to add to your list. Then add the details and the date you want to complete it by..")
        
        var newTaskTitle = readLine()
        var newTaskDetail = readLine()
        var newTaskDate = readLine()
        
        while newTaskTitle == nil || newTaskTitle == "" {
            print("Invalid title. Please enter the task you wish to add to your list.")
            newTaskTitle = readLine()
        }
        
        while newTaskDetail == nil || newTaskDetail == "" {
            print("Invalid detailing. Please enter the details of the task on your list.")
        }
        let newTask = Task(title: newTaskTitle!, details: newTaskDetail!)
        taskArray.append(newTask)
    }
    
    
    
    func removeTask() {
        //List all of our tasks using numbers. Users input the numbers to remove the task.
        for index in 0..<taskArray.count {
            print("\(index). \(taskArray[index].title)")
        }
        
        print("Please enter the number of the task you want to remove: ")
        
        var userInput = Int(readLine()!)
        //A varaible to hold all possible indices for our array
        let validTaskIndex = Array(0..<taskArray.count)
        
        //This while loop checks to make sure input is not nil and the number entered is not larger than the index of the array.
        while userInput == nil || !validTaskIndex.contains(userInput!){
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        //This line removes the task at the user specified index after input validation.
        taskArray.remove(at: userInput!)
    }
    
    func listTasks() {
        for task in taskArray {         //This function lists all tasks.
            print(task.title)
        }
    }
    
    func listIncompleteTasks() {
        for task in taskArray {         //This function is used to list only incomplete tasks.
            if task.complete == false {
                print(task.title)
            }
        }
    }
    
    
    
    func listCompleteTasks() {
        for task in taskArray {               //This function is used to list only complete tasks.
            if task.complete == true {
                print("\(task.title), Completed \(String(describing: task.completeBy))")
            }
        }
    }
    
    
    
    func markAsComplete() {
        print("Please input a task to mark.")
        //Task.complete == true
    }
                                                    //These two functions would be user input functions to mark tasks as incomplete, or complete.
    func markAsIncomplete() {
        print("Please input a task to mark.")
        //Task.complete == false
    }
    
    
    
    
}








































