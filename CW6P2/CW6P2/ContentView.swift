//
//  ContentView.swift
//  CW6P2
//
//  Created by aalaa alsharhan on 19/09/2022


import SwiftUI

struct ContentView: View {
    @State var num = ""
    @State var sta = Color.clear
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Circle()
                        .foregroundColor(Color.teal)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            sta = Color.teal
                        }
                    
                    Circle()
                        .foregroundColor(Color.pink)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            sta = Color.pink
                        }
                    
                    
                    
                    Circle()
                        .foregroundColor(Color.green)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            sta = Color.green
                        }
                    
                    
                    
                    Circle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            sta = Color.yellow
                        }
                }//end of hstack
                .padding()
                
                Text("ماذا تريد أن تكتب؟")
                
                TextField("اكتب هنا" , text: $num)
                    .frame(width: 200, height:20)
                    .background(Color .white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                    .navigationTitle("دفتر اليوميات")
                
                    .padding()
                
                NavigationLink(destination:
                    ZStack {
                        sta
                        Text(num)
                    }
                    .ignoresSafeArea()
                ){
                    Text("حفظ ")
                        .frame(width: 200, height: 50)
                        .background(RoundedRectangle(cornerRadius:10).fill(Color.black))
                }
                
                
            }//end of vstack
            
        }//nav end
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
