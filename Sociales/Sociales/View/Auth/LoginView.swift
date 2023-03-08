//
//  LoginView.swift
//  Sociales
//
//  Created by NomoteteS on 23.02.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]),
                                       startPoint: .top,
                                       endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("Sociales")
                    .font(.system(.largeTitle, weight: .black))
                    .foregroundColor(.white)
                    .padding()
                //  MARK: - LoginView email & password fields
                VStack(spacing: 20) {
                    // email field
                    CustomTextField(text: $email,
                                    placeholder: Text("Email"),
                                    imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal,32)
                    // password field
                    CustomSecureField(text: $password,
                                      placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal,32)
                }
                // MARK: - LoginView forgot password
                HStack {
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Forgot Password?")
                            .font(.system(.caption))
                            .foregroundColor(.white)
                    }
                    .padding(.init(top: 10, leading: 0, bottom: 0, trailing: 40))
                }
                // MARK: - LoginView sign in
                Button {
                    viewModel.login(withEmail: email, password: password)
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color(UIColor.separator))
                        .clipShape(Capsule())
                        .padding()
                }
                
                Spacer()
                
                // MARK: - LoginView go to sign up
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Text("Dont have an account?")
                            .font(.system(.caption2))
                        
                        Text("Sign Up")
                            .font(.system(.caption2,weight: .semibold))
                    }
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
