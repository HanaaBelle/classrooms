//
//  Course.swift
//  classrooms
//
//  Created by Hanâa Belhamidi on 29/08/2023.
//

import Foundation
// Ajouter une structure (un modèle) avec un identifiant unique, un nom, une description et une image
struct Course : Identifiable {
    let id = UUID()
    
    let name: String
    let description: String
    let image: String
}
// Une extension permet d'étendre une classe sur une liste de cours 
extension Course {
    static let list: [Course] = [
        Course(name: "Algorithmie", description: "Initiation à l'algorithmie", image: "algo"),
        Course(name: "Initiation à l'informatique : Les bases", description: "Cours d'initiation sur le monde de l'informatique: Les bases", image: "imageParDefaut"),
        
        Course(name: "Initiation à l'informatique : Cours avancé", description: "Cours d'initiation sur le monde de l'informatique: Cours avancé", image: "imageParDefaut"),
        
        Course(name: "Apprendre la bureautique : Microsoft Excel", description: "Cours sur la bureautique: Microsoft Word", image: "microsoftWord"),
        
        Course(name: "Apprendre la bureautique : Microsoft Word", description: "Cours sur la bureautique: Microsoft Excel", image: "microsoftExcel"),
        
        Course(name: "Apprendre la bureautique : Microsoft PowerPoint", description: "Cours sur la bureautique: Microsoft PowerPoint", image: "microsoftPowerPoint"),
    ]
}
