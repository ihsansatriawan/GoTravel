//
//  HomewView.swift
//  GoTravel
//
//  Created by ihsan.satriawan on 29/11/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    @State var isShowAlert = false
    @State var isShowModal = false
    
    // MARK: - BODY
    var body: some View {
        // MARK: - NAVIGATIONSTACK
        NavigationStack {
            ZStack {
                Image("go-to-beach")
                    .resizable()
                    .overlay(content: {
                        Rectangle()
                            .opacity(0.4)
                    })
                    .ignoresSafeArea()
                
                // MARK: - HomeView
                HomeHeroView()
                    .padding(.horizontal, 10)
                    .offset(y:60)
                    .foregroundColor(.white)
            } // ZStack
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("GoTravel")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                }
            }) // Toolbar
            .navigationBarItems(
                leading: weatherIcon,
                trailing: cartIcon
            ) // NavigationBarItems
        } // NavigationStack
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    private var weatherIcon: some View {
        ZStack {
            Button(action: {
                withAnimation { isShowAlert.toggle() }
            }, label: {
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .foregroundStyle(.white, .yellow)
            })
            .padding(.horizontal, 24)
            .alert(isPresented: $isShowAlert) {
                Alert(
                    title: Text("Not yet available"),
                    message: Text("Currently on active development"), dismissButton: .default(Text("OK")))
            }
        }
        
    }
    
    private var cartIcon: some View {
        ZStack {
            Button(action: {
                withAnimation { isShowModal.toggle() }
            }, label: {
                Image(systemName: "cart.badge.plus")
                    .resizable()
                    .foregroundStyle(.green, .white)
            })
            .padding(.horizontal, 24)
            .sheet(isPresented: $isShowModal) {
                ModalView()
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}
