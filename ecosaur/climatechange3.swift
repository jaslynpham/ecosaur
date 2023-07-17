//
//  climatechange3.swift
//  ecosaur
//
//  Created by scholar on 7/20/23.
//

import SwiftUI

struct climatechange3: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Fossil Fuels")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    .padding()
                Text("Fossil fuels are made from decomposing plants and animals. These fuels are found in Earth’s crust and contain carbon and hydrogen, which can be burned for energy. Coal, oil, and natural gas are examples of fossil fuels. Coal is a material usually found in sedimentary rock deposits where rock and dead plant and animal matter are piled up in layers. More than 50 percent of a piece of coal’s weight must be from fossilized plants. Oil is originally found as a solid material between layers of sedimentary rock, like shale. This material is heated in order to produce the thick oil that can be used to make gasoline. Natural gas is usually found in pockets above oil deposits. It can also be found in sedimentary rock layers that don’t contain oil. Natural gas is primarily made up of methane.")
                    .multilineTextAlignment(.center)
                Text("According to the U.S. National Academies of Sciences, 81 percent of the total energy used in the United States comes from coal, oil, and natural gas. This is the energy that is used to heat and provide electricity to homes and businesses and to run cars and factories. Unfortunately, fossil fuels are a nonrenewable resource and waiting millions of years for new coal, oil, and natural gas deposits to form is not a realistic solution. Fossil fuels are also responsible for almost three-fourths of the emissions from human activities in the last 20 years. Now, scientists and engineers have been looking for ways to reduce our dependence on fossil fuels and to make burning these fuels cleaner and healthier for the environment.")
                    .multilineTextAlignment(.center)
                Text("Scientists across the country and around the world are trying to find solutions to fossil fuel problems so that there is enough fuel and a healthy environment to sustain human life and activities in the future. The United States Department of Energy is working on technologies to make commercially available natural-gas-powered vehicles. They are also trying to make coal burning and oil drilling cleaner. Researchers at Stanford University in California have been using greener technologies to figure out a way to burn fossil fuels while lessening their impact on the environment. One solution is to use more natural gas, which emits 50 percent less carbon dioxide into the atmosphere than coal does. The Stanford team is also trying to remove carbon dioxide from the atmosphere and store it underground—a process called carbon capture and sequestration. Scientists at both Stanford and the University of Bath in the United Kingdom are trying something completely new by using carbon dioxide and sugar to make renewable plastic.")
                    .multilineTextAlignment(.center)
                
            }
        }
    }
    struct climatechange3_Previews: PreviewProvider {
        static var previews: some View {
            climatechange3()
        }
    }
}
