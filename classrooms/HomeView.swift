//
//  HomeView.swift
//  classrooms
//
//  Created by Hanâa Belhamidi on 29/08/2023.
//

// On crée une nouvelle view "HomeView" et c'est ici qu'on crée notre liste avec plusieurs Items de cours et qu'on click dessus on a la description du cours
import SwiftUI

// On construit la liste dans le HomeView
struct HomeView: View {
    var body: some View {
        // Ajout de la navigation
        NavigationView {
            
            //CourseItemView(course:Course.list[0])
            
            // Afficher la liste on utilise la vue List récupérer l'identifiant de chaque Item
            // Pour déclarer une liste je met List
            // Je mets ma liste statique que j'ai déclaré juste avant
            // Je met un identifiant unique ici (je prends d'id pcq il est unique)
            // Puis je map grâce à une variable ici c'est course qui sera traduit en CourseItemView
            List(Course.list, id: \.id) {
                // Construire chaque élément
                // Il Convertit un élément de liste course en CourseItemView
                course in CourseItemView(course: course)
                // Là je met le link
                    .overlay(NavigationLink(
                        destination: CoursesView(
                            course: course),
                        label: {//Text("📖")
                            EmptyView()
                        }
                    )// Pour enlever le chevron
                        //.opacity(0)
                    )// Pour enlever le séparateur entre les Items des cours
                    .listRowSeparator(.hidden)
            }
            // Définir le titre de navigation
            .listStyle(PlainListStyle())
            .navigationTitle("Courses")
        }
    }
}

// Création d'une nouvelle vue "CourseItemView "
struct CourseItemView: View {
    // Avec un Course Item qui prend en parmètre un cours avec le nom l'image et la description du cours
    let course:  Course
    // Mais au lieu de le définir dans le body on crée plutôt une extension où on déclare à quoi ressemble le titre l'image et la description pour chaque  cours
    var body: some View {
        // POur créer le cadre avec le shadow
        ZStack {
            Color.white
                .cornerRadius(8)
        
        // Et on appelle l'image ici et on voudrait mettre le nom et la description du cours l'un à côté de l'autre et pour celà on utilise le Hstack
        HStack {
            image
            info
        }.padding( )
        }.shadow(color: Color.black.opacity(0.2),
                 radius: 5,
                 x: 0,
                 y: 2)
    }
}

// Private signifie qu'il sera utilisé qu'ici
// On crée une extension

private extension CourseItemView {
    // Déclaration de l'image et du nom et de la description du cours
    var image  : some View {
        // Déclarer à quoi ressemble l'image en ayant accès à la variable cours pcq c'est une extension et la customiser un peu
        Image(course.image)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
    }
    // Ajouter le nom du cours et sa description
    var info : some View {
        // Pour alignement à gauche et un espace entre le titre et la description
        VStack(alignment:.leading,
               spacing: 5) {
            // Pour désigner le titre du cours un peu gras et qui dépasse pas deux lignes
            Text(course.name)
                .font(.headline)
                .lineLimit(2)
            // Pour désigner la description du cours pour un sous titre
            Text(course.description)
                .font(.subheadline)
                .lineLimit(2)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
