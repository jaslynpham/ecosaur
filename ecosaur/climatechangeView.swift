//
//  climatechangeView.swift
//  ecosaur
//
//  Created by scholar on 7/20/23.
//

import SwiftUI

struct climatechangeView: View {
            var body: some View {
                ScrollView {
                    VStack {
                        Text("Climate Change and Animals")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .padding()

                        Text("Climate change threatens vital biodiversity: The Earth is now about 1.1°C (2°F) warmer than it was in the 1800s. Based on current projections, global temperatures will rise by 2.7°C (4.8°F) by the end of the century. It’s impossible to predict exactly how long-term shifts in temperatures and weather patterns will affect our planet’s fragile, deeply entwined ecosystems. Changes in one area influence changes in other areas and animals will feel the impact. Some of the biggest climate-driven threats for wildlife include:")
                            .multilineTextAlignment(.center)
                        Text("Habitat loss: Rising temperatures affect vegetation, food sources, access to water and much more. Ecosystems may become uninhabitable for certain animals, forcing wildlife to migrate outside of their usual patterns in search of food and livable conditions, while causing other animals to die off. For example, if rates of habitat loss and fragmentation due to human development and global warming continue—combined with deaths from poaching—we could lose Africa’s elephants in the next 40 years.")
                            .multilineTextAlignment(.center)
                        Text("Natural disasters: Already today we face a five-fold increase, compared to 50 years ago, in climate and weather-related natural disasters such as droughts, wildfires and hurricanes. These disasters cause catastrophic loss of life and habitat for people, pets and wildlife. Australia’s Black Summer bushfires (2019–20), for example, burned 186,000 square kilometers (72,000 square miles) and are estimated to have killed or displaced three billion koalas, kangaroos and other animals.")
                            .multilineTextAlignment(.center)
                        Text("Human-wildlife conflict: Climate change intensifies human-wildlife conflict through habitat loss and extreme climate events, forcing people and wildlife to share increasingly crowded spaces. As ecosystems change, people and wildlife roam farther in search of food, water and resources. Human-wildlife conflict often results in devastating impact for the animals affected.For example, jaguars sometimes prey on domestic animals and disrupt human livelihoods, leading to retaliatory killings that result in the further decline of already-dwindling jaguar populations.")
                            .multilineTextAlignment(.center)
                        Text("Extinction: The combination of challenges could cause many animals to go extinct. The world’s most vulnerable animals, including those already near extinction, will likely face the biggest threats.The North Atlantic right whale, for example, teeters on the brink of extinction, with an estimated 336 individual animals remaining, the lowest count in 20 years. A warming ocean, coupled with a failure to decrease conflicts with humans (vessel strikes and entanglement in fishing gear), could drive this species to extinction.Climate change not only impacts humans but also poses profound threats to the world's wildlife and their habitats. The rise in temperatures can lead to the collapse of fragile ecosystems and widespread extinction. The choices we make today have the power to alleviate the suffering of both people and animals in the future. Preserving biodiversity is crucial in our fight against climate change.")
                            .multilineTextAlignment(.center)
                       
                    }
                    .padding()
                }
                .navigationBarTitle("Climate Change and Animals Article")
            }
        }
    
    struct climatechangeView_Previews: PreviewProvider {
        static var previews: some View {
            climatechangeView()
        }
    }
