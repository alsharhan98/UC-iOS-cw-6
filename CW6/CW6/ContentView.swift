//
//  ContentView.swift
//  CW6
//
//  Created by aalaa alsharhan on 19/09/2022.
//

import SwiftUI

struct Students : Hashable{
    let id = UUID()
    
    var name : String
    var year: Int
    var age : Int
    
}

struct ContentView: View {

   // var count1 : Int = 0
    //@State var sta = ""
   @State var students = [Students(name: "الاسم: ساره فهد", year: 2, age: 20),Students(name: "الاسم : نوره محمد", year: 4, age: 22) , Students(name: "الاسم : راشد علي", year: 1, age: 18)]
    
  // @State var students = Students(name: "نوره محمد", year: 4, age: 22)
    
  //  @State var students = Students(name: "راشد علي", year: 1, age: 18)
    
    var body: some View {
        
        VStack{
            
            Image("ido")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 150)
                .padding()
        Text("سجل الطلبة")
                .font(.largeTitle)
            .padding()
       
            ForEach(students, id: \.self){ student in
             
                VStack(alignment:.trailing){
                    HStack{
                        
                    Text(student.name)
                  // .multilineTextAlignment(.leading)
                        
                    }
                    //.padding()
                HStack{
                    Text(String(student.year))
                    Text("السنة:")
                     //   .multilineTextAlignment(.leading)
                      
                }
                
                HStack{
                Text(String(student.age))
                    Text("العمر:")
                    //    .multilineTextAlignment(.leading)
                       // .padding()
                }//end of hstack
                    
                }//end of vstack
              
            }  //end of foreach
            
      
            .padding()
            
            Text("عدد الطلبة المسجلين =  \( students.count)")
            
            
        }//end of vstack
       
       
    }//end of body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro Max")
            ContentView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}
