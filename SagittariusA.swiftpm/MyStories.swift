//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 23/04/22.
//

import Foundation
import SwiftUI

struct Info {
    let image: String
    let name: String
    let apresentation: String
    let story: String
    let imageKatie: String
    let imageBlackHole: String
    let nameKatie: String
    let nameSag: String
    let apresentationSag: [String]
    let apresentatioKatie: [String]
}

let information = Info (
    image: "perfil",
    name: "Patrícia Sampaio",
    apresentation: "🤓 HI! I am Alumin from Apple Developer Academy - IFCE and a Computer Engineering student at the same institution.👩🏽‍💻",
    story: "I love being able to transform people's lives with what I do. I see inclusion and representation as the main objective to follow and Computer Engineering gave me the opportunity to put all this into practice at its best. 💻 ",
    imageKatie: "katieBourman",
    imageBlackHole: "blackhole",
    nameKatie: "Katie Bourman",
    nameSag: "Sagittarius A",
    apresentationSag: ["🔭 Specially designed to take the first photo of the black hole, the Event Horizon Telescope is a collaborative project from seven different telescopes around the Earth.", "🤓 So Katie Bouman began to develop the algorithm capable of combining the images obtained by the telescopes. In 2019, Katie put it into practice and surprised: the algorithm managed to gather all the images captured by the telescopes, forming the first complete image of the black hole called Sagittarius A.", "🌑 Sagittarius A is a bright and very compact astronomical radio source in the Galactic Center of the Milky Way.", "✨ A great moment that made it possible to confirm the enigmatic Theory of Relativity."],
    apresentatioKatie: ["🤓 Assistant professor of computer science at the California Institute of Technology🔭.", "She was responsible at MIT (Massachusetts Institute of Technology) for an algorithm used in creating the first images of a black hole🌑, published in April 2019, providing computational support to learn about general relativity in the strong field regime."]
)
