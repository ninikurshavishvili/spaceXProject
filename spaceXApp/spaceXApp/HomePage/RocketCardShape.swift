//
//  RocketCardShape.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 11.04.25.
//


import SwiftUI

struct RocketCardShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let w = rect.width
        let h = rect.height
        let cornerRadius: CGFloat = 30
        let outerCornerRadius: CGFloat = 50

        let cutoutWidth: CGFloat = 160
        let cutoutHeight: CGFloat = 65
        let cutoutRadius: CGFloat = 40

        let sideCutoutRadius: CGFloat = 20
        let sideCutoutYOffset: CGFloat = h / 2

        path.move(to: CGPoint(x: outerCornerRadius, y: 0))

        path.addLine(to: CGPoint(x: w - outerCornerRadius, y: 0))
        path.addQuadCurve(to: CGPoint(x: w, y: outerCornerRadius),
                          control: CGPoint(x: w, y: 0))


        path.addLine(to: CGPoint(x: w, y: h - cutoutHeight - cutoutRadius))
        path.addQuadCurve(to: CGPoint(x: w - cutoutRadius, y: h - cutoutHeight),
                          control: CGPoint(x: w, y: h - cutoutHeight))

        path.addLine(to: CGPoint(x: w - cutoutWidth + cutoutRadius, y: h - cutoutHeight))
        path.addQuadCurve(to: CGPoint(x: w - cutoutWidth, y: h - cutoutHeight + cutoutRadius),
                          control: CGPoint(x: w - cutoutWidth, y: h - cutoutHeight))

        path.addLine(to: CGPoint(x: w - cutoutWidth, y: h - cornerRadius))
        path.addQuadCurve(to: CGPoint(x: w - cutoutWidth - cutoutRadius, y: h),
                          control: CGPoint(x: w - cutoutWidth, y: h))

        path.addLine(to: CGPoint(x: outerCornerRadius, y: h))
        path.addQuadCurve(to: CGPoint(x: 0, y: h - outerCornerRadius),
                          control: CGPoint(x: 0, y: h))

        path.addLine(to: CGPoint(x: 0, y: sideCutoutYOffset + sideCutoutRadius))
        path.addQuadCurve(to: CGPoint(x: sideCutoutRadius, y: sideCutoutYOffset),
                          control: CGPoint(x: 0, y: sideCutoutYOffset))
        path.addQuadCurve(to: CGPoint(x: 0, y: sideCutoutYOffset - sideCutoutRadius),
                          control: CGPoint(x: 0, y: sideCutoutYOffset))
        path.addLine(to: CGPoint(x: 0, y: outerCornerRadius))

        path.addQuadCurve(to: CGPoint(x: outerCornerRadius, y: 0),
                          control: CGPoint(x: 0, y: 0))

        path.closeSubpath()
        return path
    }
}






