//
//  ContentView.swift
//  iTraining
//
//  Created by Igor S. Menezes on 06/07/24.
//

import SwiftUI

struct SignInView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 0) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing])
                    Text("iTraining")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 0)
                }
                .padding(.bottom, 20)
                
                TextField("E-mail", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                
                SecureField("Senha", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Divider()
                    .padding()
                
                NavigationLink(destination: {
                    SignUpView()
                }, label: {
                    Text("Não tem uma conta? Clique aqui.")
                        .foregroundStyle(.black)
                })
                
            }
            .padding()
    
        }
        .frame(maxWidth: .infinity ,maxHeight: .infinity)
                   .padding(.horizontal, 32)
                   .navigationTitle("Login")
    }
    
}

#Preview {
    SignInView()
}
