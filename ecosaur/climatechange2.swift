//
//  climatechange2.swift
//  ecosaur
//
//  Created by scholar on 7/20/23.
//

import SwiftUI

struct climatechange2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Pollution")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    .padding()
                
                Text("Global warming is the long-term warming of the planet’s overall temperature. Though this warming trend has been going on for a long time, its pace has significantly increased in the last hundred years due to the burning of fossil fuels. As the human population has increased, so has the volume of fossil fuels burned. Fossil fuels include coal, oil, and natural gas, and burning them causes what is known as the “greenhouse effect” in Earth’s atmosphere.")
                    .multilineTextAlignment(.center)
                Text("The greenhouse effect is when the sun’s rays penetrate the atmosphere, but when that heat is reflected off the surface cannot escape back into space. Gases produced by the burning of fossil fuels prevent the heat from leaving the atmosphere. These greenhouse gasses are carbon dioxide, chlorofluorocarbons, water vapor, methane, and nitrous oxide. The excess heat in the atmosphere has caused the average global temperature to rise overtime, otherwise known as global warming.")
                    .multilineTextAlignment(.center)
                Text("Global warming has presented another issue called climate change. Sometimes these phrases are used interchangeably, however, they are different. Climate change refers to changes in weather patterns and growing seasons around the world. It also refers to sea level rise caused by the expansion of warmer seas and melting ice sheets and glaciers. Global warming causes climate change, which poses a serious threat to life on Earth in the forms of widespread flooding and extreme weather. Scientists continue to study global warming and its impact on Earth.")
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .navigationBarTitle("Climate Change and Animals Article")
        }
    }
    struct climatechange2_Previews: PreviewProvider {
        static var previews: some View {
            climatechange2()
        }
    }
}
