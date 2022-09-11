//
//  ContentView.swift
//  CW3try2
//
//  Created by Deem on 11/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var c1 = 0
    @State var c2 = 0
    @State var c3 = 0
//    @State var c4 = 0
  
    
    var body: some View {
        
        ZStack {
            
            Image("gr3")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.52)
            
            VStack {
                
                Spacer()
                Text(" كُن مِن الذاكِرين")
                    .font(Font.custom("Amiri-Regular", size: 45))
                    .foregroundColor(.brown)
                    .bold()
                    .padding(.bottom)
                    .padding()
                HStack {
                    
                    Text("استَغفِرُ الله العَظيم")
                        .font(Font.custom("Amiri-Regular", size: 30))
                        .foregroundColor(.white)
                        .bold()
                        
                        .padding()
                    
                
                    ExtractedView( c1: $c1)
                
                    }
                
        
                .padding()
                .padding(.bottom)
                
                HStack {
                   
                    Text("سُبحَانَ الله وَبِحَمدِه")
                        .font(Font.custom("Amiri-Regular", size: 30))
                        .foregroundColor(.white)
                        .bold()
                    
                        .padding()
                    
                    ExtractedView(c1: $c2)
                        .padding()
                    
//                    diff way
//                    Text("\(c2)")
//                        .font(.system(size: 30))
//                        .foregroundColor(.white)
//                        .frame(width: 70, height: 70, alignment: .center)
//                        .background(.brown)
//                        .cornerRadius(100)
//                        .colorMultiply(.white)
//                        .onTapGesture {
//                            c2 += 1
//                        }
                    
                }
                
                .padding(.bottom)
                
                HStack {
                    
                    Text(" سُبحَانَ الله العَظِيم")
                        .font(Font.custom("Amiri-Regular", size: 30))
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    
                    
                    ExtractedView(c1: $c3)
                        .padding()
                        
                    
//                    Text("\(c3)")
//                        .font(.system(size: 30))
//                        .foregroundColor(.white)
//                        .frame(width: 70, height: 70, alignment: .center)
//                        .background(.brown)
//                        .cornerRadius(100)
//                        .colorMultiply(.white)
//                        .onTapGesture {
//                            c3 += 1
//                        }
                        
                    
                }
                .padding()
                
//                HStack {
//
//                    Text("لَا حَولَ وَلَا قُوةَ إِلا بِالله")
//                        .font(Font.custom("Amiri-Regular", size: 30))
//                        .foregroundColor(.white)
//                        .bold()
//                        .padding()
//
//
//
//                    ExtractedView(c1: $c4)
//                        .padding()
                    
//                    Text("\(c4)")
//                        .font(.system(size: 30))
//                        .foregroundColor(.white)
//                        .frame(width: 70, height: 70, alignment: .center)
//                        .background(.brown)
//                        .cornerRadius(100)
//                        .colorMultiply(.white)
//                        .onTapGesture {
//                            c4 += 1
//                        }
                        
                    
                    
//            }
                
                Spacer()
                HStack {
                    
                    
                    Image(systemName: "heart.circle.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.brown)
                        .padding()
                        
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 35))
                        .foregroundColor(.brown)
                        .padding()
                    
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.brown)
                        .padding()
                    
                    
                }
                
                
                
                
            }
                
                
            }
            
            
            
        }
       
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ExtractedView: View {
    
    @Binding var c1: Int
    
    var body: some View {
        
        Text("\(c1)")
            .font(.system(size: 30))
            .foregroundColor(.white)
            .frame(width: 70, height: 70, alignment: .center)
            .background(.brown)
            .cornerRadius(100)
            .colorMultiply(.white)
            .onTapGesture {
                c1 += 1
            }
    }
}
