//
//  TextFile.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/15/20.
//

import SwiftUI

struct TextFile: View {
    
    
    var body: some View {
        VStack{
            ZStack{
                Image(systemName: "heart.fill")
                    .resizable().scaledToFit()
                Text("Huli Pizza Company")
                    .foregroundColor(.white)
            }
            Text("Pizza History")
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/){ item in
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Huli Chiken")
                }
               
            }
            Spacer()
        }.padding()
    }
}

struct TextFile_Previews: PreviewProvider {
    static var previews: some View {
        TextFile()
            
    }
}
