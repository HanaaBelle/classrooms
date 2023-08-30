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
        Course(name: "Algorithmie", description: "Initiation à l'algorithmie", image: "organigramme"),
        
        Course(name: "Les_bases", description: "Cours d'initiation sur le monde de l'informatique: Les bases", image: "basicsInfo"),
        
        Course(name: "Cours_avances", description: "Cours d'initiation sur le monde de l'informatique: Cours avancé", image: "averageInfo"),
        
        Course(name: "Microsoft_word", description: "Cours sur la bureautique: Microsoft Word", image: "word"),
        
        Course(name: "Microsoft_excel", description: "Cours sur la bureautique: Microsoft Excel", image: "excel"),
        
        Course(name: "Microsoft_powerPoint", description: "Cours sur la bureautique: Microsoft PowerPoint", image: "powerPoint"),
    ]
}
