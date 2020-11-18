//
//  TextFile.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/15/20.
//

import SwiftUI

struct TextFile: View {
    var textName: String?
    
    var body: some View {
        Text(textName!).foregroundColor(.white).font(.largeTitle).fontWeight(.heavy)
    }
}

struct TextFile_Previews: PreviewProvider {
    static var previews: some View {
        TextFile(textName: "b")
    }
}
