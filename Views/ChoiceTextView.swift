//
//  ChoiceTextView.swift
//  Questions
//
//  Created by Yahya Momtaz on 20/01/23.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .multilineTextAlignment(.center)
            .bold()
            .padding()
            .border(GameColor.accent,width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}
