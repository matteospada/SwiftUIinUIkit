//
//  SwiftUIView.swift
//  SwiftUIinUIkit
//
//  Created by Matteo Spada on 30/06/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    //Proprietà che verrà inzializzata da UIKit, nel tuo caso qui passerai un array con i dati.
    let text: String
    
    var body: some View {
        Text(text)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "hello!")
    }
}
