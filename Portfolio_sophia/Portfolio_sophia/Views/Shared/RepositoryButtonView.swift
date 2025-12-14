//
//  RepositoryButtonView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//


import SwiftUI

struct RepositoryButtonView: View {

    let repository: RepositoryLink

    var body: some View {
        Button {
            if let url = URL(string: repository.url) {
                UIApplication.shared.open(url)
            }
        } label: {
            Text("Check Repository")
                .font(AppFont.body(16))
                .foregroundColor(Color(hex: repository.textColor))
                .frame(maxWidth: .infinity)
                .padding(.vertical, 15)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color(hex: repository.backgroundColor))
                )
        }
        .padding(.horizontal, 35)
        .padding(.vertical, 15)
    }
}
