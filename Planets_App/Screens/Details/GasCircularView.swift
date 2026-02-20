//
//  GasCircularView.swift
//  Planets_App
//
//  Created by Nimish Mothghare on 19/02/26.
//

import SwiftUI

struct GasCircularView: View {
    let gas: GasStat

    var body: some View {
        VStack(spacing: 8) {

                    ZStack {
                        Circle()
                            .stroke(Color.white.opacity(0.15), lineWidth: 7)

                        Circle()
                            .trim(from: 0, to: gas.value / 100)
                            .stroke(
                                AngularGradient(
                                    gradient: Gradient(colors: [.cyan, .blue, .purple]),
                                    center: .center
                                ),
                                style: StrokeStyle(lineWidth: 7, lineCap: .round)
                            )
                            .rotationEffect(.degrees(-90))

                        Text("\(Int(gas.value))%")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .frame(width: 62, height: 62)

                    Text(gas.name)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.white)
                }    }
}

#Preview {
    GasCircularView(gas: GasStat(name: "N", value: 27.3))
}
