//
//  ContentView.swift
//  neoitra
//
//  Created by Shreyas Vilaschandra Bhike on 08/08/21.
//MARK:-The App Wizard
// Instagram :
//MARK:-theappwizard2408

//In Collaboration
//MARK:- with khaleed Δminu
//Instagram :
//MARK:- khalerdameen


import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeUI()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

























struct HomeUI: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
           
            
            //To Hold Vertically
            VStack{
                TopBar()
                
                
               VStack{
                    
                    para().offset(x: -180, y: 40)
              
                
                    cal().offset(x: -145, y: 10.0)
                
               }.offset(x: -90, y: 80)
                
                
                voiceAnimation()
                    .offset(x: 320, y: -500)
                
                
                
                
                Spacer()
               
                Quote()
                
                Spacer().frame(width: 0, height: 100, alignment: .center)
                
                
            }
            
            Image("label")
                .resizable()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 250, y: -250)
            
            SecondAnimationView()
                .offset(x: 150, y: 250)
        }
    }
}
//


struct TopBar: View {
    var body: some View {
            
        HStack{
            Image("title")
                .resizable()
                .frame(width: 180, height: 50, alignment: .center)
            
            Spacer().frame(width: 90, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            ButtonCol().offset(x: -10, y: 22)
            
           
            
            
            Text("Overview")
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
            
            Spacer().frame(width: 20, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("Download")
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
            
            Spacer().frame(width: 20, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("About")
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
            
            Spacer().frame(width: 20, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Image(systemName: "mic")
                .resizable()
                .frame(width: 25, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(.all)
            
            
            
        }.padding(.all)
        .offset(x: 5, y: 0)
        
            
    }

}


struct ButtonCol: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.gray).opacity(0.2)
                .frame(width: 160, height: 40, alignment: .center)
               

            
            HStack{
            Text("Get")
                .font(.title2)
                .fontWeight(.regular)
                .foregroundColor(Color("greenapp"))
                
                Text("Started")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
                
            }
            
            
        }
    }
}


struct cal: View {
    var body: some View {
        VStack{
            
            Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("Let neoitra take care of your calender.").foregroundColor(Color.white)
                .multilineTextAlignment(.leading).font(.system(size: 35))
                .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
            
            ZStack{
                
                Rectangle()
                    .frame(width: 180, height: 60, alignment: .center)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 4))

                    
                
                
                Text("Learn More")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
                    .shadow(radius: 10)
               
            }.offset(x: -25, y: -25)
        
        
        }.background(Color.black)
    }
}


struct para: View {
    var body: some View {
        
        
        Text("Your new Voice Assistant !").foregroundColor(Color.white)
            .font(.system(size: 40))
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}



struct Quote: View {
    
    @State var stringAnimation = true
   
    var body: some View {
        
        HStack{
        
            Text(stringAnimation ? "" :  "Hey Neoitra , add Dog Food to my ,").foregroundColor(Color.white)
            .font(.system(size: 35))
            
            +
            
                Text( stringAnimation  ? "To-do List.":" To-do List ").foregroundColor(stringAnimation  ? Color.black : Color("greenapp"))
            .font(.system(size: 35))
            
            
            
        } .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: false))
           .onAppear() {
            self.stringAnimation.toggle()
      }
            
    }
}
