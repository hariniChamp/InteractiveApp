//
//  ContentView.swift
//  InteractiveApp
//
//  Created by Scholar on 6/7/24.
//

import SwiftUI

struct ContentView: View {
    
    //varibales in between struct & body are called properties
    //use a property wrapper to wrap a propety and give it additioanl behaviour (makes it accessible in your code) -> always satrt w @
    
    //state property si used
    
    @State private var name = ""
    //Add another State property called textTitle that stores the string "What is your name?"
    @State private var textTitle = "What is your name?"
    
    
    var body: some View {
        
        VStack {
            Text(textTitle)
                .font(.title)
            
            TextField("Type here!", text: $name) //need to bind (storing the user input with the variable name ->$name
                .multilineTextAlignment(.center) //make the textfield to the center
                .font(.title)
                .border(Color.gray, width: 1) // # width should be
                .padding()
            
            
            Button("Submit Name") {
                //fucntion of button goes here
                //print(name) -> this was just to check the button works
                if(name == "Harini") {
                    textTitle = "Welcome \(name)!!"
                }
            }
            //add modifiers under the curly brackets
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.cyan)

        }
    }
}

#Preview {
    ContentView()
}


//press the plus button, then find buttons to drag and drop

//add spacer to move things (VStakc - moves it up and down, HStack - mvoes side to side)
    //Spacer()

