//
//  SafeAreaInsetsView.swift
//  InteractiveSideMenu
//
//  Created by Thach Nguyen Trong on 3/27/24.
//

import SwiftUI

struct SafeAreaInsetsView: View {
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    var body: some View {
        let _ = print("safe area: \(safeAreaInsets)")
        return ZStack {
            Color.gray
//                .safeAreaPadding()
            HStack(spacing: 60) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("SafeAreaInsets")
                        .font(.headline)
                    Text("Top")
                    Text("Trailing")
                    Text("Bottom")
                    Text("Leading")
                }
                VStack(alignment: .leading, spacing: 12) {
                    Text("Value")
                        .font(.headline)
                    Text(String(format: "%.0f", safeAreaInsets.top))
                    Text(String(format: "%.0f", safeAreaInsets.trailing))
                    Text(String(format: "%.0f", safeAreaInsets.bottom))
                    Text(String(format: "%.0f", safeAreaInsets.leading))
                }
            }
            .foregroundStyle(.white)
        }
        .safeAreaInset(edge: .bottom) {
            Text("Outside Safe Area")
                       .font(.title)
                       .foregroundStyle(.white)
                       .frame(maxWidth: .infinity)
                       .padding()
                       .background(.indigo)
        }
        .safeAreaInset(edge: .top) {
            Text("Outside Safe Area")
                       .font(.title)
                       .foregroundStyle(.white)
                       .frame(maxWidth: .infinity)
                       .padding()
                       .background(.indigo)
        }
    }
}

#Preview {
    SafeAreaInsetsView()
}
