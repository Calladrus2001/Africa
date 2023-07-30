//
//  CoverImageView.swift
//  Africa
//
//  Created by Vishesh Dugar on 30/07/23.
//

import SwiftUI

struct CoverImageView: View {
    var body: some View {
      TabView {
        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
          Image("cover-lion")
            .resizable()
          .scaledToFit()
        }
      }
      .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
    }
}
