//
//  SecondAnimationView.swift
//  neoitra
//
//  Created by Shreyas Vilaschandra Bhike on 08/08/21.
//

import SwiftUI



let numberOfSamples: Int = 10




struct SecondAnimationView: View {
    
        @State var offset1  = false
        @State var offset2 = false
        @State var offset3  = false
    
        
        var body: some View {
            ZStack{
                Rectangle().foregroundColor(.black)
                    .frame(width: 600, height: 200, alignment: .center)
                    .offset(x: 0, y: -60)
            HStack {
                
                
                ForEach(0 ..< 35) {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 5, height: 80, alignment: .center)
                                          .opacity(1)
                                          .foregroundColor(.white)
                                          .rotationEffect(.degrees(Double($0) * 180))
                                                                  
                              }
                
                }
                
                
                Image("imgwave1").resizable()
                    .frame(width: 150, height: 100, alignment: .center)
                    .offset(x: 0, y: offset2 ? -100 : -20)
                    .animation(Animation.easeInOut(duration: 1.3).repeatForever(autoreverses: true))
                                    .onAppear() {
                                            self.offset1.toggle()
                                                    }
                
                Image("imgwave2").resizable()
                    .frame(width: 150, height: 100, alignment: .center)
                    .offset(x: 150, y: offset2 ? -100 : -25)
                    .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                                .onAppear() {
                                        self.offset2.toggle()
                                            }
                
                Image("imgwave1").resizable()
                    .frame(width: 150, height: 100, alignment: .center)
                    .offset(x: -150, y: offset3 ? -25 : -100)
                
                    .animation(Animation.easeInOut(duration: 1.2).repeatForever(autoreverses: true))
                                .onAppear() {
                                        self.offset3.toggle()
                                                        }
                
                
                
                
                Rectangle().foregroundColor(.black).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .frame(width: 600, height: 100, alignment: .center)
                    .offset(x: 0, y: 50)
                
                Rectangle().foregroundColor(.white).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .frame(width: 500, height: 2, alignment: .center)
                    .offset(x: 0, y: 0)
                
                
              }
           }
        }
    


struct SecondAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SecondAnimationView()
    }
}





