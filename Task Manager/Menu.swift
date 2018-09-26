//
//  Menu.swift
//  Task Manager
//
//  Created by Jacob Glass on 9/20/18.
//  Copyright © 2018 Jacob Glass. All rights reserved.
//

import Foundation

class Menu {
    
    var shouldQuit = false         //As long as this variable stays false, the program will keep running.
    var taskFuncs = TaskList()  //
    
    func go() {
        while !shouldQuit {
            printMenu()
            let input = getInput()
            handleInput(input)
        }
    }
    
    
    
    func printMenu() {        //This function displays the menu.
        print("""
Please choose the number that corresponds with your preferred option.
                
                 1: Create New Task
                 2: List All Tasks
                 3: List Incomplete Tasks
                 4: List Complete Tasks
                 5: Mark Task As Complete
                 6: Mark Task As Incomplete
                 7: Delete Task
                 8: Quit
""")
    }
    
    
    
    
    func quit() {                       //This function breaks the loop of the application and ends it.
        print("Thank you for checking your Task Manager!")
        sleep(3)
        shouldQuit = true
    }
    
    
    
    
    
    
    func getInput() -> String {
        var userInput = readLine()
        
        while userInput == nil || userInput == "" {
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
    
    
    
    
    
    
    
    func handleInput(_ input : String) {  //This function holds a switch statement that contains all of the other functions in this application.
        switch input {
        case "1" :
            taskFuncs.addTask()
            print("")
        case "2" :
            taskFuncs.listTasks()
            print("")
        case "3" :
            taskFuncs.listIncompleteTasks()
            print("")
        case "4" :
            taskFuncs.listCompleteTasks()
            print("")
        case "5" :
            taskFuncs.markAsComplete()
            print("")
        case "6" :
            taskFuncs.markAsIncomplete()
            print("")
        case "7" :
            taskFuncs.removeTask()
            print("")
        case "8" :
            quit()
            print("")
        default :
            break
        }
    }
}



















