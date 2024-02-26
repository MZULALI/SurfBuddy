import SwiftUI

struct SlideData {
    let imageName: String
    let title: String
    let text: String
    let arModelName: String // Name of the AR model file for this slide, e.g., "surfboard.usdz"
}

// Sample data array
let slidesForSecondView: [SlideData] = [
    SlideData(imageName: "image1", title: "big waves", text: "Text for Image 1", arModelName: "surfboard1"),
    SlideData(imageName: "image2", title: "bigger wave", text: "Text for Image 2", arModelName: "surfboard2"),
    SlideData(imageName: "image3", title: "Biggest wave", text: "Text for Image 3", arModelName: "surfboard3"),
    ]
//SURFBOARD DATA
let slidesForSurfboardView: [SlideData] = [
    SlideData(imageName: "Surfboard0", title: "Soft Top", text: "The ultimate beginner's choice, soft tops offer safety and ease of use.\n\nSoft top surfboards, also known as foam boards, provide a gentle introduction to surfing. Their buoyant and forgiving nature makes them ideal for beginners learning to catch waves and stand up. The soft surface reduces the risk of injuries during falls. ", arModelName: "surfboard3"),
    SlideData(imageName: "Surfboard1", title: "Longboard", text: "A classic surfing scene with a longboarder elegantly riding a smooth, peeling wave.\n\nLongboards, typically ranging from 8 to 12 feet in length, are known for their smooth gliding capabilities and ease of catching waves making them a great choice for beginners and those who prefer a relaxed surfing style.\n\nLongboards excel in small to medium wave conditions", arModelName: "surfboard3"),
    SlideData(imageName: "Surfboard2", title: "Shortboard", text: "The choice of pros, shortboards offer precision and agility in critical conditions.\n\nShortboards are the preferred equipment for advanced surfers seeking performance and maneuverability in their surfing. Typically under 7 feet in length, these boards are designed for quick turns, aerials, and aggressive surfing typically in larger wave conditions.", arModelName: "surfboard3"),
]
    // WAVE DATA
let slidesForWaveView: [SlideData] = [
    SlideData(imageName: "WaveHeight1", title: "Micro Waves: 0-1ft", text: "Waves of 0-1 foot, often referred to as ankle slappers, are ideal for those just starting out. \n \nThey provide a safe environment for learning the basics of balance and board control without the intimidation of larger waves. These conditions are best suited for longboards and foam boards, which offer more stability.", arModelName: "surfboard3"),
    
    SlideData(imageName: "WaveHeight2", title: "Small Waves: 1-3ft", text: "A step up from the micro, small waves challenge surfers to refine their skills. \n \nWaves in the 1-3ft range, often called knee to waist high, are excellent for beginners ready to progress. They require a bit more skill for paddling and catching waves but remain forgiving for those still learning. These conditions are great for practicing turning techniques and starting to ride the wave faces.", arModelName: "surfboard3"),
    
    SlideData(imageName: "WaveHeight3", title: "Medium Waves: 3-6ft", text: "Offering a mix of challenge and fun, these waves are for the improving surfer.\n\nWaves that stand 3-6ft, or waist to head high, present a balanced challenge for intermediate surfers.  This size allows for more dynamic maneuvers and is often where surfers start experiencing the thrill of the sport.", arModelName: "surfboard3"),
    
    SlideData(imageName: "WaveHeight4", title: "Large Waves: 6-10ft", text: "For experienced surfers, these waves offer an adrenaline-pumping ride.\n \nWaves within the 6-10ft range, described as overhead to double overhead as they crest over most humans, are for skilled surfers. They require advanced techniques, strong paddling, and a deep understanding of wave dynamics. Surfing these waves can be exhilarating but also demands respect for the ocean's power", arModelName: "surfboard3"),
    
    SlideData(imageName: "WaveHeight5", title: "Huge Waves: 10-30ft", text: "Pushing the limits, these giant waves are for the daredevils of the surfing world. \n\nThe 10-30ft wave category, or big wave surfing, is where courage and skill are put to the ultimate test. Only the most experienced surfers tackle these giants, which require specialized equipment and often a team for safety. The thrill and danger of these waves are unparalleled, making them a badge of honor in the surfing community.", arModelName: "surfboard3"),
    
    SlideData(imageName: "WaveHeight6", title: "Monster Waves: 30-50ft", text: "The realm of legends, these waves are where history is made.\n\nSurfing waves from 30-50ft pushes the boundaries of what is humanly possible. This size range is for elite big wave surfers who specialize in conquering ocean giants. It requires immense physical preparation, mental strength, and often, tow-in assistance due to the sheer size and speed of the waves. The vibrations of these waves crashing often make it miles into shore", arModelName: "surfboard3"),
    
    SlideData(imageName: "WaveHeight7", title: "The Apex: 86ft", text: "The record for the biggest wave ever surfed was set by Sebastian Steudtner in October 2020, at Nazaré, Portugal. The wave was a staggering 86 feet tall. Steudtner ride is a powerful reminder of surfing's evolution and the endless pursuit of pushing the limits.", arModelName: "surfboard3"),
]
//SEAFLOOR DATA
let slidesForSeaFloorView: [SlideData] = [
        SlideData(imageName: "SeaFloor0", title: "Sandy Bottom", text: "Offering forgiving conditions, sandy bottoms are a surfer's playground.\n\nSandy sea floors are synonymous with beach breaks, where waves break over a sandy bottom. These conditions are ideal for surfers of all levels, providing a relatively safe environment for wipeouts and falls. However, the shifting sands can also lead to variable wave conditions, requiring surfers to adapt to daily changes. ", arModelName: "surfboard3"),
        SlideData(imageName: "SeaFloor1", title: "Coral Reefs", text: "Home to some of the world's most pristine waves, coral reefs demand respect and skill.\n\nCoral reefs create some of the most sought-after waves on the planet, known for their clarity, shape, and power. Surfing over coral reefs is an exhilarating experience, offering perfectly formed waves that can provide long rides and barrels. \n\nHowever, the beauty and allure of these waves come with a high risk.\n\nThe sharp and unforgiving coral surface beneath the water can cause serious injuries during falls. Surfing over coral reefs requires advanced surfing skills, precise wave reading, and a deep respect for the marine ecosystem", arModelName: "surfboard3"),
        SlideData(imageName: "SeaFloor2", title: "Rocky Reefs", text: "Challenging yet rewarding, rocky bottoms create consistent wave formations.\n\nRocky sea floors are found at reef breaks and point breaks, where waves break over or near a rocky substrate. These conditions offer more consistent and powerful waves, attracting intermediate and advanced surfers. The predictability of wave patterns allows for a high-quality surfing experience, but the presence of rocks increases the risk of injury. \n\nThe most famous surf break, the Banzai Pipeline located in Hawaii, has a primarally Lava Rock Reef!", arModelName: "surfboard3"),
]
//WIND DATA
let slidesForWindView: [SlideData] = [
    SlideData(imageName: "Wind0", title: "Off-shore Winds", text: "Creating the perfect wave, offshore winds are a surfer's dream.\n\nOffshore winds blow from the land towards the sea, helping to shape and hold up the waves, creating cleaner, more defined wave faces. This condition is ideal for surfing, as it allows for smoother rides and the formation of barrels", arModelName: "surfboard1"),
    SlideData(imageName: "Wind1", title: "On-shore Winds", text: "Challenging conditions, onshore winds create a choppy surf\n\nOnshore winds blow from the sea towards the land, causing the waves to break more haphazardly and creating a choppy surface. These conditions can make surfing more challenging, as the quality of the waves is generally poorer, with less defined faces and more turbulence.", arModelName: "surfboard1"),
    SlideData(imageName: "Wind2", title: "Cross-Shore Winds", text: "A coastline scene where the wind blows across the direction of the wave, creating a side-on effect.\n\nCross-shore winds blow perpendicular to the wave direction, resulting in conditions that can vary greatly.", arModelName: "surfboard1"),
]
//TIDEDATA
let slidesForTideView: [SlideData] = [
    SlideData(imageName: "Tide0", title: "Low Tide", text: "During low tide, the sea draws back, exposing more of the sea floor and often creating steeper, more powerful waves due to the decreased water depth. This condition can lead to the formation of well-defined wave shapes.", arModelName: "surfboard1"),    
    SlideData(imageName: "Tide1", title: "High Tide", text: "Bringing softer waves and safer rides, high tide welcomes surfers of all levels\n\nHigh tide occurs when the sea level is at its peak resulting in deeper water which can soften the waves. This condition is particularly favorable for beginners and longboarders, as the waves are generally easier to catch and offer smoother, longer rides", arModelName: "surfboard1"),    SlideData(imageName: "Tide2", title: "Changing Tide", text: "The period of rising or falling tide, known as the tidal shift, can dramatically affect wave conditions, often creating optimal surfing opportunities similar to a low or high tide.", arModelName: "surfboard1"),
    ]

