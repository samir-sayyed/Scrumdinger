//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Samir Sayyed on 17/07/24.
//

import SwiftUI

struct ThemePicker: View {
    
    @Binding var selection : Theme
    
    var body: some View {
        Picker("Theme", selection: $selection){
            ForEach(Theme.allCases){ theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.bubblegum))
    }
}
