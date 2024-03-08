//
//  DestinationSearchView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI


// DESTINATION SEARCH OPTIONS ENUMERATION
enum DestinationSearchOption {
    case destination
    case date
    case guest
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    
    @State private var selectedOption: DestinationSearchOption = .destination
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var guestsNumber = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            HStack {
                // DISMISS BUTTON
                Button(action: {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.gray)
                })
                
                Spacer()
                
                // CLEAR BUTTON
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                        viewModel.filterRentalsByLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            
            
            // SEARCH BAR
            VStack(alignment: .leading) {
                if selectedOption == .destination {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack() {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.filterRentalsByLocation()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(.gray)
                        
                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
            }
            .modifier(CollapsableViewModifier())
            .frame(height: selectedOption == .destination ? 130 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .destination
                }
            }
            
            
            
            // DATE SELECTION VIEW
            VStack(alignment: .leading) {
                if selectedOption == .date {
                    
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        
                        // START DATE
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        // END DATE
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsableViewModifier())
            .frame(height: selectedOption == .date ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .date
                }
            }
                
            
            // GUESTS ADDITION VIEW
            VStack(alignment: .leading) {
                if selectedOption == .guest {
                    Text("Who's coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    // STEPPER
                    Stepper{
                        Text(guestsNumber > 1 ? "\(guestsNumber) guests" : "\(guestsNumber) guest")
                    } onIncrement: {
                        guestsNumber += 1
                    } onDecrement: {
                        guard guestsNumber > 0 else { return }
                        guestsNumber -= 1
                    }
                    
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsableViewModifier())
            .frame(height: selectedOption == .guest ? 130 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guest
                }
            }
             
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsableViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
    }
}


