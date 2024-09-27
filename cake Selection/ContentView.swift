//
//  ContentView.swift
//  cake Selection
//
//  Created by admin2 on 27/9/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var flavor: Color = .mint
    @State var size: Double = 1.0
    @State var addCherry:Bool = false
    @State var sweetness: Double = 20.0
    var body: some View {
        VStack{
            Text("My bakery 🎂😇")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
                .padding(.bottom,12)
            ZStack{
                Image(systemName: "birthday.cake.fill")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .foregroundStyle(flavor)
                    .scaleEffect(CGSize(width: size, height: size))
                    .padding(.bottom,20)
                    .opacity(sweetness/100)
                if addCherry {
                    Text("🍒")
                        .font(.system(size: 60))
                }
            }
            Image("C4-Chocolate-Fudge-Cake-01")
                .resizable()
                .scaledToFill()
                .frame(width: 200,height: 100)
                .clipped()
            HStack{
                Button("Vanilla"){
                    flavor = .orange
                }
                Button("Cocoa"){
                    flavor = .brown
                }
                Button("Berry"){
                    flavor = .pink
                }
            }
            
            Picker("", selection: $flavor){
                Text("Vanilla").tag(Color.orange)
                Text("Cocoa").tag(Color.brown)
                Text("Berry").tag(Color.pink)
                       
            }
            .tint(.pink)
            Picker("", selection: $size){
                
                Text("medium").tag(1.0)
                Text("Large").tag(1.3)
                       
            }
            .tint(.green)
            
            Toggle("Add Cherry", isOn: $addCherry)
                .padding(20)
            Text("Sweetness: \(sweetness)")
            Slider(value: $sweetness,in: 0...100)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
