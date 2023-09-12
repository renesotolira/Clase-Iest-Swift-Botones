//
//  ContentView.swift
//  Botones
//
//  Created by Alumnos on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var greeting : String = "Hello, world"
    @State var myForegroundColor : Color = Color.purple
    let colors = [Color.green, Color.blue
                  ,Color.red, Color.gray,
                  Color.yellow
    ]
    
    func myRandomElement() -> Color {
        let position = Int.random(in: 0 ... colors.count - 1)
        return colors[position]
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text(greeting)
                .foregroundColor( myForegroundColor )
            
            Button(action: {
                self.myForegroundColor = Color.orange
                changeGreeting()
                myForegroundColor = myRandomElement()
            }){
                Text("Saludar")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .padding()
                    .background(
                        
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color.purple,  Color.blue]
                            ), startPoint: .leading, endPoint: .trailing
                        )//aqui termina linear
                    )//aqui termina background
                    
                    .cornerRadius(12)
                    .padding()
            }
            
            
            Button(action: {
                
            }, label: {
                
            }  )
                
            
        }
        .padding()
    }
    
    func changeGreeting(){
        if greeting == "Hello my friend"{
            self.greeting = "Hello, world"
        }else {
            self.greeting = "Hello my friend"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
