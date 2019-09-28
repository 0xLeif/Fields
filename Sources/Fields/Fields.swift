//
//  Fields.swift
//  Fields
//
//  Created by Zach Eriksen on 9/28/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
public struct NumberField: View {
    public var title: String
    @Binding public var value: Int {
        didSet {
            self.interalValue = "\(value)"
        }
    }
    @State private var interalValue: String = ""
    
    public var body: some View {
        TextField(title, text: $interalValue)
            .keyboardType(.numberPad)
    }
}
