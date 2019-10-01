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
    
    public init(title: String, value: Binding<Int>) {
        self.title = title
        self._value = value
    }
    
    public var body: some View {
        TextField(title, text: $interalValue)
            .keyboardType(.numberPad)
    }
}

@available(iOS 13.0, *)
public struct DecimalField: View {
    public var title: String
    @Binding public var value: Double {
        didSet {
            self.interalValue = "\(value)"
        }
    }
    @State private var interalValue: String = ""
    
    public init(title: String, value: Binding<Double>) {
        self.title = title
        self._value = value
    }
    
    public var body: some View {
        TextField(title, text: $interalValue)
            .keyboardType(.decimalPad)
    }
}
