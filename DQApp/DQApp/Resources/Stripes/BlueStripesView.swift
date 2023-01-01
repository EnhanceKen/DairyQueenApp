//
//  stripes.swift
//  DQApp
//
//  Created by Consultant on 12/20/22.
//
//
//import SwiftUI
//
//struct BlueStripeView: View {
//    let numberOfStrips: Int = 175
//    let lineWidth: CGFloat = 1
//    let borderLineWidth: CGFloat = 50
//    let color = Color.blue
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
//        .frame(width: 1000, height: 1000)
//        .rotationEffect(.degrees(-45))
//    }
//        
//}
//struct WaveShape: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        path.addEllipse(in: rect)
//        return path
//    }
//}
//
//struct BlueStripeView_Previews: PreviewProvider {
//    static var previews: some View {
//        BlueStripeView()
//    }
//}
