//
//  ContentView.swift
//  CW3
//
//  Created by Deem on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var g1 = "start1"
    var body: some View {
        
        ZStack {
            
            
            Image("gp1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
          
            
            
            
            VStack {
                
                
                Text("Grades Calculator")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .italic()
                    .bold()
                    .padding(.bottom)
                
        
                
               
                TextField("Enter your grade", text: $grade)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .frame(width: 280, height: 40)
                    .background(.white)
                    .cornerRadius(30)
                    .shadow(radius: 20)
                    .padding()
                
                
                Text("Calculate")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .frame(width: 150, height: 40)
                    .background(.black)
                    .cornerRadius(30)
                    .shadow(radius: 20)
                    .padding()
                    .onTapGesture {
                        
                        if ( Int(grade) ?? 0) >= 90 {
                            g1 = "excellent"
                       }
                        else if (Int(grade) ?? 0 ) >= 80 {
                            g1 = "verygood"

                        }
                        
                        else if (Int(grade) ?? 0) >= 70 {
                            g1 = "good1"
                        }
                        
                        else if (Int(grade) ?? 0 ) >= 60 {
                            g1 = "poor1"
                        }
                        else {
                            g1 = "fail1"
                        }
                        
                    }
                
                Text("Well, your grade is...")
                    .font(.system(size: 20))
                    .italic()
                    .bold()
                    .padding()
                
                Image(g1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230, height: 200, alignment: .top)
                    .padding()
              
             
                
                
                    
            }
            
            Spacer()
            
            
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
