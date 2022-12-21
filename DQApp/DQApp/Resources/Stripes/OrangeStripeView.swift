//
//  OrangeStripeView.swift
//  DQApp
//
//  Created by Consultant on 12/20/22.
//
//
//import SwiftUI
//
//struct OrangeStripeView: View {
//    let numberOfStrips: Int = 175
//    let lineWidth: CGFloat = 1
//    let borderLineWidth: CGFloat = 50
//    let color = Color.orange
//
//    var body: some View {
//
//        HStack(spacing: 0) {
//            ForEach(0..<numberOfStrips) { number in
//                Color.white
//                color.frame(width: lineWidth)
//                if number == numberOfStrips - 1 {
//                    Color.white
//                }
//            }
//
//        }.mask(WaveShape())
////        .overlay(WaveShape().stroke(color, lineWidth: borderLineWidth))
//        .frame(width: 800, height: 490)
//        .rotationEffect(.degrees(-45))
//    }
//
//}
