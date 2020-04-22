//
//  CameraView.swift
//  swift-app
//
//  Created by zhao qiqi  on 2020/4/22.
//  Copyright © 2020 zhao qiqi . All rights reserved.
//

import SwiftUI

struct CameraView: View {
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            image?.resizable().scaledToFit()
            
            Button("Open Camera") {
                self.showImagePicker = true
            }.padding().background(Color.gray)
                .foregroundColor(Color.white)
            .cornerRadius(10)
            
        }.sheet(isPresented: $showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
