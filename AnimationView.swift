//
//  AnimationView.swift
//  neoitra
//
//  Created by Shreyas Vilaschandra Bhike on 08/08/21.
//

import SwiftUI

struct AnimationView: View {
    var body: some View {
        voiceAnimation()
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}

//50 animation frames
var images : [UIImage]! =
    
    [UIImage(named: "image0")!,
     UIImage(named: "image1")!,
     UIImage(named: "image2")!,
     UIImage(named: "image3")!,
     UIImage(named: "image4")!,
     UIImage(named: "image5")!,
     UIImage(named: "image6")!,
     UIImage(named: "image7")!,
     UIImage(named: "image8")!,
     UIImage(named: "image9")!,
     UIImage(named: "image10")!,
     
     UIImage(named: "image11")!,
     UIImage(named: "image12")!,
     UIImage(named: "image13")!,
     UIImage(named: "image14")!,
     UIImage(named: "image15")!,
     UIImage(named: "image16")!,
     UIImage(named: "image17")!,
     UIImage(named: "image18")!,
     UIImage(named: "image19")!,
     UIImage(named: "image20")!,
     
     UIImage(named: "image21")!,
     UIImage(named: "image22")!,
     UIImage(named: "image23")!,
     UIImage(named: "image24")!,
     UIImage(named: "image25")!,
     UIImage(named: "image26")!,
     UIImage(named: "image27")!,
     UIImage(named: "image28")!,
     UIImage(named: "image29")!,
     UIImage(named: "image30")!,

     UIImage(named: "image31")!,
     UIImage(named: "image32")!,
     UIImage(named: "image33")!,
     UIImage(named: "image34")!,
     UIImage(named: "image35")!,
     UIImage(named: "image36")!,
     UIImage(named: "image37")!,
     UIImage(named: "image38")!,
     UIImage(named: "image39")!,
     
     UIImage(named: "image41")!,
     UIImage(named: "image42")!,
     UIImage(named: "image43")!,
     UIImage(named: "image44")!,
     UIImage(named: "image45")!,
     UIImage(named: "image46")!,
     UIImage(named: "image47")!,
     UIImage(named: "image48")!,
     UIImage(named: "image49")!,
     
     
  
    ]

//speed of animaton
let animatedImage = UIImage.animatedImage(with: images, duration: 1.5)

struct voiceAnimation: UIViewRepresentable {

    func makeUIView(context: Self.Context) -> UIView {
        let voiceAnimView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let voiceImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        voiceImage.clipsToBounds = true
        voiceImage.layer.cornerRadius = 20
        voiceImage.autoresizesSubviews = true
        voiceImage.contentMode = UIView.ContentMode.scaleAspectFill
        voiceImage.image = animatedImage
        voiceAnimView.addSubview(voiceImage)
        return voiceAnimView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<voiceAnimation>) {
    }
}
