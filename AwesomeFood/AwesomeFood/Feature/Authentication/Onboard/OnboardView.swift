//
//  OnboardView.swift
//  AwesomeFood
//
//  Created by NomoteteS on 27.12.2022.
//

import SwiftUI

struct OnboardView: View {
    
@StateObject var onBoardViewModel = OnBoardViewModel()
    
    @State private var currentIndex: Int = 0
    
    func count() -> Int {
        OnBoardModel.items.count - 1
    }
    
    var body: some View {
        NavigationView {
        GeometryReader { GeometryProxy in
            VStack {
                Spacer()
                TabView(selection: $onBoardViewModel.currentIndex ,content:   {
                    ForEach((0...count()), id: \.self) { value in
                        SliderCard(imageHeight: GeometryProxy.dh(height: 0.45), model:  OnBoardModel.items[value] )
                    }
                } ).tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(height: GeometryProxy.dh(height: 0.6))
                
                Spacer()
                HStack {
                    ForEach((0...count()), id: \.self) { index in
                        
                        if(index == onBoardViewModel.currentIndex) {
                            IndicatorRectangle(width: GeometryProxy.dw(weight: 0.09))
                        }else {
                            IndicatorRectangle(width: GeometryProxy.dw(weight: 0.03))
                        }
                    }
                }.frame(height: ViewHeight.indicator)
                
                NavigationLink(isActive: $onBoardViewModel.isHomeReiract) {
                    WelcomeView().ignoresSafeArea().navigationBarBackButtonHidden()
                    } label: {
                        NormalButton(onTap: {
                            onBoardViewModel.saveUserLoginAndRedirect()
                        }, title: LocaleKeys.Buttons.getStarted.rawValue)
                            .padding(.all,PagePadding.All.normal.rawValue)
                    }.onAppear{
                        onBoardViewModel.checkUserFirstTime()
                    }


            }
        }
    }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}


private struct IndicatorRectangle: View {
    var width : Double
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .cornerRadius(RadiusItems.radius)
            .frame(width: width)
    }
}

private struct SliderCard: View {
    var imageHeight: Double
    let model: OnBoardModel
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .frame(height: imageHeight)
            Text(model.description)
                .font(.system(size: FontSizes.largeTitle, weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.peach)
                
        }
    }
}
